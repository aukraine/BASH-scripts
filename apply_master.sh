#!/usr/bin/env bash
TELAPP_PATH=~/Projects/telapp/upgrade
ACCEPTENCE_TESTS_PATH=~/Projects/acceptance_tests
LOG_FILE=~/.scripts/log_apply_master.txt

echo "" > $LOG_FILE

# Git stage
echo "\x1b[32m ----------------------------------------------------------- GIT ----------------------------------------------------------------- \x1b[0m"
echo "\x1b[32m ----------------------------------------------------------- GIT ----------------------------------------------------------------- \x1b[0m" >> $LOG_FILE

echo "\x1b[33m ----------------------------------------------------------- TELAPP -------------------------------------------------------------- \x1b[0m"
echo "\x1b[33m ----------------------------------------------------------- TELAPP -------------------------------------------------------------- \x1b[0m" >> $LOG_FILE

echo "\x1b[35m Go to TELAPP repo \x1b[0m"
cd $TELAPP_PATH

echo "\x1b[36m Stash changes \x1b[0m"
git stash save "Auto stash at $(date)"

echo "\x1b[36m Go to MASTER branch \x1b[0m"
git checkout master

ON_MASTER=$(git status | grep "On branch master")
if [[ $ON_MASTER = "On branch master" ]]; then

  # logic for ssh-add key
  DEFAULT_NO="n"
  echo -e "\x1b[45m Do you want to add SSH key? [y/N]: \x1b[0m"
  read -t 10 ADD_SSH
  ADD_SSH="${ADD_SSH:-$DEFAULT_NO}"
  if [[ $ADD_SSH = "y" || $ADD_SSH = "Y" ]]; then
    eval "$(ssh-agent -s)" &&
    ssh-add -K ~/.ssh/id_rsa &&
    echo "\x1b[36m Add ssh key \x1b[0m" &&
    echo "\x1b[36m Add ssh key \x1b[0m" >> $LOG_FILE
  fi

  echo "\x1b[36m Pull origin master \x1b[0m"
  echo "\x1b[36m Pull origin master \x1b[0m" >> $LOG_FILE
  GIT_LOG=$(git pull origin master | tail -3) 2>&1
  echo "\x1b[30;42m $GIT_LOG \x1b[0m \n"
  echo "\x1b[30;42m $GIT_LOG \x1b[0m \n" >> $LOG_FILE

else
  echo "\x1b[30;41m Could NOT switch to MASTER branch \x1b[0m \n"
	echo "\x1b[30;41m Could NOT switch to MASTER branch \x1b[0m \n" >> $LOG_FILE
fi

# logic for pull in Acceptance Tests repo
DEFAULT_NO="n"
echo -e "\x1b[45m Do you want to refresh ACCEPTANCE TESTS repo? [y/N]: \x1b[0m"
read -t 10 REFRESH_TESTS
REFRESH_TESTS="${REFRESH_TESTS:-$DEFAULT_NO}"
if [[ $REFRESH_TESTS = "y" || $REFRESH_TESTS = "Y" ]]; then

  echo "\x1b[33m ----------------------------------------------------------- CUCUMBERS ----------------------------------------------------------- \x1b[0m" &&
  echo "\x1b[33m ----------------------------------------------------------- CUCUMBERS ----------------------------------------------------------- \x1b[0m" >> $LOG_FILE &&
  echo "\x1b[35m Go to ACCEPTANCE TESTS repo \x1b[0m" &&
  cd $ACCEPTENCE_TESTS_PATH &&

  echo "\x1b[36m Stash changes \x1b[0m"
  git stash save "Auto stash at $(date)"

  echo "\x1b[36m Go to MASTER branch \x1b[0m"
  git checkout master

  ON_MASTER=$(git status | grep "On branch master")
  if [[ $ON_MASTER = "On branch master" ]]; then

    echo "\x1b[36m Pull origin master \x1b[0m" &&
    echo "\x1b[36m Pull origin master \x1b[0m" >> $LOG_FILE &&
    GIT_LOG=$(git pull origin master | tail -3) 2>&1 &&
    echo "\x1b[30;42m $GIT_LOG \x1b[0m \n" &&
    echo "\x1b[30;42m $GIT_LOG \x1b[0m \n" >> $LOG_FILE &&

    echo "\x1b[32m Bundle install \x1b[0m" &&
    INSTALL_LOG=$(bundle install | tail -2) 2>&1 &&
    echo $INSTALL_LOG &&
    echo $INSTALL_LOG >> $LOG_FILE &&
    echo "\x1b[30;42m bundle install COMPLETED \x1b[0m \n" &&
    echo "\x1b[30;42m CUCUMBERS bundle install COMPLETED \x1b[0m \n" >> $LOG_FILE &&

  else
    echo "\x1b[30;41m Could NOT switch to MASTER branch \x1b[0m \n"
    echo "\x1b[30;41m Could NOT switch to MASTER branch \x1b[0m \n" >> $LOG_FILE
  fi

  echo "\x1b[35m Go back to TELAPP repo \x1b[0m"
  cd $TELAPP_PATH
fi



# Drop DB stage
echo "\x1b[32m ----------------------------------------------------------- DB ------------------------------------------------------------------ \x1b[0m"
echo "\x1b[32m ----------------------------------------------------------- DB ------------------------------------------------------------------ \x1b[0m" >> $LOG_FILE
echo "\x1b[35m Go to TAS repo \x1b[0m"
cd tas

echo "\x1b[32m Bundle install \x1b[0m"
INSTALL_LOG=$(bundle install | tail -2) 2>&1
echo $INSTALL_LOG
echo $INSTALL_LOG >> $LOG_FILE
echo "\x1b[30;42m bundle install COMPLETED \x1b[0m \n"
echo "\x1b[30;42m TAS bundle install COMPLETED \x1b[0m \n" >> $LOG_FILE

#DEFAULT_YES="y"
echo -e "\x1b[45m Do you want to reset DB? [Y/n]: \x1b[0m"
read -t 10 DROP_DB_STEPS
DROP_DB_STEPS="${DROP_DB_STEPS:-y}"

if [[ $DROP_DB_STEPS = "y" || DROP_DB_STEPS = "Y" ]]; then
	echo "\x1b[31m rake db:drop \x1b[0m" &&
	echo "\x1b[31m rake db:drop \x1b[0m" >> $LOG_FILE &&
#	bundle exec rake db:drop &&
	DB_LOG=$(bundle exec rake db:drop | tail -3) 2>&1 &&
  echo "$DB_LOG \n" &&
  echo "$DB_LOG \n" >> $LOG_FILE &&

	echo "\x1b[31m rake parallel:drop  \x1b[0m" &&
	echo "\x1b[31m rake parallel:drop  \x1b[0m" >> $LOG_FILE &&
#	bundle exec rake parallel:drop &&
	DB_LOG=$(bundle exec rake parallel:drop | tail -3) 2>&1 &&
  echo "$DB_LOG \n" &&
  echo "$DB_LOG \n" >> $LOG_FILE &&

	echo "\x1b[31m rake db:create  \x1b[0m" &&
	echo "\x1b[31m rake db:create  \x1b[0m" >> $LOG_FILE &&
#	bundle exec rake db:create &&
	DB_LOG=$(bundle exec rake db:create | tail -3) 2>&1 &&
  echo "$DB_LOG \n" &&
  echo "$DB_LOG \n" >> $LOG_FILE &&

	echo "\x1b[31m rake db:reset:complete  \x1b[0m" &&
	echo "\x1b[31m rake db:reset:complete  \x1b[0m" >> $LOG_FILE &&
#	bundle exec rake db:reset:complete &&
	DB_LOG=$(bundle exec rake db:reset:complete | tail -3) 2>&1 &&
  echo "$DB_LOG \n" &&
  echo "$DB_LOG \n" >> $LOG_FILE &&

	echo "\x1b[31m rake td:rspec_setup  \x1b[0m" &&
	echo "\x1b[31m rake td:rspec_setup  \x1b[0m" >> $LOG_FILE &&
#	bundle exec rake td:rspec_setup &&
	DB_LOG=$(bundle exec rake td:rspec_setup | tail -3) 2>&1 &&
  echo "$DB_LOG \n" &&
  echo "$DB_LOG \n" >> $LOG_FILE &&

	echo "\x1b[31m rake parallel:setup  \x1b[0m" &&
	echo "\x1b[31m rake parallel:setup  \x1b[0m" >> $LOG_FILE &&
#	bundle exec rake parallel:setup &&
	DB_LOG=$(bundle exec rake parallel:setup | tail -3) 2>&1 &&
  echo "$DB_LOG \n" &&
  echo "$DB_LOG \n" >> $LOG_FILE &&

	echo "\x1b[30;42m DB reset COMPLETED \x1b[0m \n"
	echo "\x1b[30;42m DB reset COMPLETED \x1b[0m \n" >> $LOG_FILE
else
	echo "\x1b[30;41m DB was NOT droped \x1b[0m \n"
	echo "\x1b[30;41m DB was NOT droped \x1b[0m \n" >> $LOG_FILE
fi



# Gems and packages installing stage
echo "\x1b[32m ----------------------------------------------------------- INSTALL ------------------------------------------------------------- \x1b[0m"
echo "\x1b[32m ----------------------------------------------------------- INSTALL ------------------------------------------------------------- \x1b[0m" >> $LOG_FILE

#DEFAULT_YES="Y"
echo -e "\x1b[45m Do you want to reinstall GEMS and NPM packages for apps? [Y/n]: \x1b[0m"
read -t 10 INSTALL_APPS
INSTALL_APPS="${INSTALL_APPS:-Y}"

if [[ $INSTALL_APPS = "y" || $INSTALL_APPS = "Y" ]]; then

  APPS=( admin member provider callcenter ) &&
  for app in "${APPS[@]}"
  do
    echo "\x1b[33m ----------------------------------------------------------- $app ---------------------------------------------------------------- \x1b[0m" &&
    echo "\x1b[33m ----------------------------------------------------------- $app ---------------------------------------------------------------- \x1b[0m" >> $LOG_FILE &&
    echo "\x1b[35m Go to $app repo \x1b[0m" &&
    cd ../$app &&

    echo "\x1b[32m Install gems \x1b[0m" &&
  #	bundle install &&
    INSTALL_LOG=$(bundle install | tail -2) 2>&1
    echo $INSTALL_LOG &&
    echo $INSTALL_LOG >> $LOG_FILE &&
    echo "\x1b[30;42m bundle install COMPLETED \x1b[0m \n" &&
    echo "\x1b[32m bundle install COMPLETED \x1b[0m \n" >> $LOG_FILE &&

    echo "\x1b[32m Install packages \x1b[0m" &&
  #	yarn install &&
    INSTALL_LOG=$(yarn install | tail -1) 2>&1
    echo $INSTALL_LOG &&
    echo $INSTALL_LOG >> $LOG_FILE &&
    echo "\x1b[30;42m yarn install COMPLETED \x1b[0m \n" &&
    echo "\x1b[32m yarn install COMPLETED \x1b[0m \n" >> $LOG_FILE &&

    echo "\x1b[32m Build app \x1b[0m" &&
  #	yarn build &&
    INSTALL_LOG=$(yarn build | tail -1) 2>&1
    echo $INSTALL_LOG &&
    echo $INSTALL_LOG >> $LOG_FILE &&
    echo "\x1b[30;42m yarn build COMPLETED \x1b[0m \n" &&
    echo "\x1b[32m yarn build COMPLETED \x1b[0m \n" >> $LOG_FILE &&
  done
else
	echo "\x1b[30;41m SKIPPED this stage \x1b[0m \n" &&
	echo "\x1b[30;41m SKIPPED this stage \x1b[0m \n" >> $LOG_FILE
fi

cd ..
echo "\n"
echo "\x1b[34;42m ********************************************************************************************************************************* \x1b[0m "
echo "\x1b[34;42m *********************************************************** RESULT ************************************************************** \x1b[0m "
echo "\x1b[34;42m ********************************************************************************************************************************* \x1b[0m \n"
cat $LOG_FILE
