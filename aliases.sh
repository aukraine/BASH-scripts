#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~~~~~~~~~~~~~~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

alias bi="bundle install"
alias bx="bundle exec"
alias bxr="bundle exec rspec"
alias bxrc="bundle exec rails c"
alias bxrs="bundle exec rails s"
alias bxrr="bundle exec rake routes"
alias yi="yarn install"
alias yb="yarn build"
alias kp1="eval '$(ssh-agent -s)'"
alias kp2="ssh-add -K ~/.ssh/id_rsa"
alias dk="docker"
alias dc="docker-compose"
alias ll="ls -lFh"
alias lll="ls -laFh"
alias ls="ls -CF"
alias sl="ls"
alias lsl="ls -lhFA | less"
alias lssl="ls -ls -R /"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias cd..="cd .."
alias x="exit"
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -iv"
alias cls="clear"

alias bxrp="bundle exec rake parallel:setup"
alias bxrst="MOCK_AUTH_NET=1 ENABLE_REMOTE_CRUD=1 bundle exec rails s -p 3030"
alias bxrsa="bundle exec rails s -p 3100"
alias bxrsc="bundle exec rails s -p 3200"
alias bxrsp="bundle exec rails s -p 3500"
alias bxrsm="bundle exec rails s -p 3400"
alias bxrse="bundle exec rails s -p 3600"
alias bxrso="bundle exec rails s -p 5000"
alias bxc="TEST_ENV=local MY_ENV=env MY_SSL=http CCUMBER_DEBUG=1 CUCUMBER_BROWSER=chrome bundle exec cucumber"

* * * * * выполняемая команда
- - - - -
| | | | |
| | | | ----- День недели (0 - 7) (Воскресенье =0 или =7)
| | | ------- Месяц (1 - 12)
| | --------- День (1 - 31)
| ----------- Час (0 - 23)
------------- Минута (0 - 59)

+---------+------------+------------+
|  color  | foreground | background |
|         |    code    |    code    |
+---------+------------+------------+
| black   |     30     |     40     |
| red     |     31     |     41     |
| green   |     32     |     42     |
| yellow  |     33     |     43     |
| blue    |     34     |     44     |
| magenta |     35     |     45     |
| cyan    |     36     |     46     |
| white   |     37     |     47     |
+---------+------------+------------+

