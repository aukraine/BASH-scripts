#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~~~~~~~~~~~~~~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

alias bi="echo '\x1b[30;46m bi = bundle install \x1b[0m              ' && bundle install"
alias bx="echo '\x1b[30;46m bx = bundle exec \x1b[0m                 ' && bundle exec"
alias bxr="echo '\x1b[30;46m bxr = bundle exec rspec \x1b[0m         ' && bundle exec rspec"
alias bxrc="echo '\x1b[30;46m bxrc = bundle exec rails c \x1b[0m     ' && bundle exec rails c"
alias bxrs="echo '\x1b[30;46m bxrs = bundle exec rails s \x1b[0m     ' && bundle exec rails s"
alias bxrr="echo '\x1b[30;46m bxrr = bundle exec rake routes \x1b[0m ' && bundle exec rake routes"

alias gss="echo '\x1b[30;46m gss = git status -s \x1b[0m             ' && git status -s"
alias glg="echo '\x1b[30;46m glg = git log \x1b[0m                   ' && git log"
alias gfh="echo '\x1b[30;46m gfh = git fetch \x1b[0m                 ' && git fetch"
alias gct="echo '\x1b[30;46m gct = git checkout \x1b[0m              ' && git checkout"
alias ga="echo '\x1b[30;46m ga = git add \x1b[0m                     ' && git add"
alias gad="echo '\x1b[30;46m gad = git add . \x1b[0m                 ' && git add ."
alias gsh="echo '\x1b[30;46m gsh = git stash \x1b[0m                 ' && git stash"
alias gshs="echo '\x1b[30;46m gshs = git stash save \x1b[0m          ' && git stash save"
alias gct="echo '\x1b[30;46m gct = git commit -m \x1b[0m             ' && git commit -m"
alias gplo="echo '\x1b[30;46m gplo = git pull origin \x1b[0m         ' && git pull origin"
alias gplom="echo '\x1b[30;46m gplom = git pull origin master \x1b[0m' && git pull origin master"
alias gpho="echo '\x1b[30;46m gpho = git push origin \x1b[0m         ' && git push origin"
alias gphom="echo '\x1b[30;46m gphom = git push origin master \x1b[0m' && git push origin master"
alias grt="echo '\x1b[30;46m grt = git reset \x1b[0m                 ' && git reset"

alias kp1="echo '\x1b[30;46m kp1 = eval \$(ssh-agent -s) \x1b[0m     ' && eval '$(ssh-agent -s)'"
alias kp2="echo '\x1b[30;46m kp2 = ssh-add -K ~/.ssh/id_rsa \x1b[0m  ' && ssh-add -K ~/.ssh/id_rsa"

alias yi="echo '\x1b[30;46m yi = yarn install \x1b[0m     ' && yarn install"
alias yb="echo '\x1b[30;46m yb = yarn build \x1b[0m       ' && yarn build"

alias dk="echo '\x1b[30;46m dk = docker \x1b[0m           ' && docker"
alias dc="echo '\x1b[30;46m dc = docker-compose \x1b[0m   ' && docker-compose"

alias ll="echo '\x1b[30;46m ll = ls -lFhG \x1b[0m          ' && ls -lFhG"
alias lll="echo '\x1b[30;46m lll = ls -laFhG \x1b[0m       ' && ls -laFhG"
alias sl="echo '\x1b[30;46m sl = ls \x1b[0m               ' && ls"
alias lsl="echo '\x1b[30;46m lsl = ls -lhFA | less \x1b[0m' && ls -lhFA | less"
alias lssl="echo '\x1b[30;46m lssl = ls -ls -R / \x1b[0m  ' && ls -ls -R /"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias cd..="cd .."
alias x="echo '\x1b[30;46m x = exit \x1b[0m     ' && exit"
alias cp="echo '\x1b[30;46m cp = cp -iv \x1b[0m ' && cp -iv"
alias mv="echo '\x1b[30;46m mv = mv -iv \x1b[0m ' && mv -iv"
alias rm="echo '\x1b[30;46m rm = rm -iv \x1b[0m ' && rm -iv"
alias cls="echo '\x1b[30;46m cls = clear \x1b[0m' && clear"


alias bxrp="echo '\x1b[30;46m bxrp = bundle exec rake parallel:setup \x1b[0m' && bundle exec rake parallel:setup"
alias bxrsa="echo '\x1b[30;46m bxrsa = bundle exec rails s -p 3100 \x1b[0m  ' && bundle exec rails s -p 3100"
alias bxrsc="echo '\x1b[30;46m bxrsc = bundle exec rails s -p 3200 \x1b[0m  ' && bundle exec rails s -p 3200"
alias bxrsp="echo '\x1b[30;46m bxrsp = bundle exec rails s -p 3500 \x1b[0m  ' && bundle exec rails s -p 3500"
alias bxrsm="echo '\x1b[30;46m bxrsm = bundle exec rails s -p 3400 \x1b[0m  ' && bundle exec rails s -p 3400"
alias bxrse="echo '\x1b[30;46m bxrse = bundle exec rails s -p 3600 \x1b[0m  ' && bundle exec rails s -p 3600"
alias bxrso="echo '\x1b[30;46m bxrso = bundle exec rails s -p 5000 \x1b[0m  ' && bundle exec rails s -p 5000"
alias bxrst="echo '\x1b[30;46m bxrst = MOCK_AUTH_NET=1 ENABLE_REMOTE_CRUD=1 bundle exec rails s -p 3030 \x1b[0m' && MOCK_AUTH_NET=1 ENABLE_REMOTE_CRUD=1 bundle exec rails s -p 3030"
alias bxc="echo '\x1b[30;46m bxc = TEST_ENV=local MY_ENV=env MY_SSL=http CCUMBER_DEBUG=1 CUCUMBER_BROWSER=chrome bundle exec cucumber \x1b[0m' && TEST_ENV=local MY_ENV=env MY_SSL=http CCUMBER_DEBUG=1 CUCUMBER_BROWSER=chrome bundle exec cucumber"

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

