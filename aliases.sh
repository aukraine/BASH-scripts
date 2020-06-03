#!/bin/bash
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~~~~~~~~~~~~~~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

alias bi="echo '\x1b[30;46m bi = Bundle Install \x1b[0m                 ' && bundle install"
alias bu="echo '\x1b[30;46m bu = Bundle Update \x1b[0m                  ' && bundle update"
alias bo="echo '\x1b[30;46m bo = Bundle Open \x1b[0m                    ' && bundle open"
alias bx="echo '\x1b[30;46m bx = Bundle eXec \x1b[0m                    ' && bundle exec"
alias bxr="echo '\x1b[30;46m bxr = Bundle eXec Rspec \x1b[0m            ' && bundle exec rspec"
alias bxrc="echo '\x1b[30;46m bxrc = Bundle eXec Rails Console \x1b[0m  ' && bundle exec rails c"
alias bxrs="echo '\x1b[30;46m bxrs = Bundle eXec Rails Server \x1b[0m   ' && bundle exec rails s"
alias bxrg="echo '\x1b[30;46m bxrg = Bundle eXec Rails Generate \x1b[0m ' && bundle exec rails g"
alias bxrr="echo '\x1b[30;46m bxrr = Bundle eXec Rake Routes \x1b[0m    ' && bundle exec rake routes"

alias gtst="echo '\x1b[30;46m gtst = GiT STatus \x1b[0m                 ' && git status"
alias gtsts="echo '\x1b[30;46m gtsts = GiT STatus -s \x1b[0m            ' && git status -s"
alias gtl="echo '\x1b[30;46m gtl = GiT Log \x1b[0m                      ' && git log"
alias gtlg="echo '\x1b[30;46m gtlg = GiT LoG \x1b[0m                    ' && git log"
alias gtsh="echo '\x1b[30;46m gtsh = GiT SHow \x1b[0m                   ' && git show"
alias gtft="echo '\x1b[30;46m gtft = GiT FeTch \x1b[0m                  ' && git fetch"
alias gtfh="echo '\x1b[30;46m gtfh = GiT FetcH \x1b[0m                  ' && git fetch"
alias gtch="echo '\x1b[30;46m gtch = GiT CHeckout \x1b[0m               ' && git checkout"
alias gtchm="echo '\x1b[30;46m gtchm = GiT CHeckout Master \x1b[0m      ' && git checkout master"
alias gtchb="echo '\x1b[30;46m gtchb = GiT CHeckout -B \x1b[0m          ' && git checkout -b"
alias gta="echo '\x1b[30;46m gta = GiT Add \x1b[0m                      ' && git add"
alias gta.="echo '\x1b[30;46m gta. = GiT Add . \x1b[0m                  ' && git add ."
alias gtsh="echo '\x1b[30;46m gtsh = GiT StasH \x1b[0m                  ' && git stash"
alias gtshs="echo '\x1b[30;46m gtshs = GiT StasH Save \x1b[0m           ' && git stash save"
alias gtcm="echo '\x1b[30;46m gtcm = GiT CoMmit -m \x1b[0m              ' && git commit -m"
alias gtcma="echo '\x1b[30;46m gtcma = GiT CoMmit --amend \x1b[0m       ' && git commit --amend"
alias gtplo="echo '\x1b[30;46m gtplo = GiT PulL Origin \x1b[0m          ' && git pull origin"
alias gtplom="echo '\x1b[30;46m gtplom = GiT PulL Origin Master \x1b[0m ' && git pull origin master"
alias gtpho="echo '\x1b[30;46m gtpho = GiT PusH Origin \x1b[0m          ' && git push origin"
alias gtphom="echo '\x1b[30;46m gtphom = GiT PusH Origin Master \x1b[0m ' && git push origin master"
alias gtrs="echo '\x1b[30;46m gtrs = GiT ReSet \x1b[0m                  ' && git reset"
alias gtrss="echo '\x1b[30;46m gtrss = GiT ReSet --Soft \x1b[0m         ' && git reset --soft"
alias gtrsh="echo '\x1b[30;46m gtrsh = GiT ReSet --Hard \x1b[0m         ' && git reset --hard"
alias gtrv="echo '\x1b[30;46m gtrv = GiT ReVert \x1b[0m                 ' && git revert"
alias gtrb="echo '\x1b[30;46m gtrb = GiT ReBase \x1b[0m                 ' && git rebase"
alias gtrbm="echo '\x1b[30;46m gtrbm = GiT ReBase Master \x1b[0m        ' && git rebase master"
alias gtrbi="echo '\x1b[30;46m gtrbi = GiT ReBase -I \x1b[0m            ' && git rebase -i"
alias gtrbc="echo '\x1b[30;46m gtrbc = GiT ReBase --Continue \x1b[0m    ' && git rebase --continue"
alias gtrba="echo '\x1b[30;46m gtrba = GiT ReBase --Abort \x1b[0m       ' && git rebase --abort"

alias kp1="echo '\x1b[30;46m kp1 = eval \$(ssh-agent -s) \x1b[0m    ' && eval '$(ssh-agent -s)'"
alias kp2="echo '\x1b[30;46m kp2 = ssh-add -K ~/.ssh/id_rsa \x1b[0m ' && ssh-add -K ~/.ssh/id_rsa"

alias yi="echo '\x1b[30;46m yi = Yarn Install \x1b[0m      ' && yarn install"
alias yb="echo '\x1b[30;46m yb = Yarn Build \x1b[0m        ' && yarn build"

alias dk="echo '\x1b[30;46m dk = DocKer \x1b[0m            ' && docker"
alias dc="echo '\x1b[30;46m dc = Docker-Compose \x1b[0m    ' && docker-compose"

alias ll="echo '\x1b[30;46m ll = ls -lFhG \x1b[0m          ' && ls -lFhG"
alias lll="echo '\x1b[30;46m lll = ls -laFhG \x1b[0m       ' && ls -laFhG"
alias sl="echo '\x1b[30;46m sl = ls \x1b[0m                ' && ls"
alias lsl="echo '\x1b[30;46m lsl = ls -lhFA | less \x1b[0m ' && ls -lhFA | less"
alias lssl="echo '\x1b[30;46m lssl = ls -ls -R / \x1b[0m   ' && ls -ls -R /"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias cd..="cd .."
alias x="echo '\x1b[30;46m x = eXit \x1b[0m             ' && exit"
alias cp="echo '\x1b[30;46m cp = cp -iv \x1b[0m         ' && cp -iv"
alias mv="echo '\x1b[30;46m mv = mv -iv \x1b[0m         ' && mv -iv"
alias rm="echo '\x1b[30;46m rm = rm -iv \x1b[0m         ' && rm -iv"
alias cls="echo '\x1b[30;46m cls = CLear Screen \x1b[0m ' && clear"


alias bxrp="echo '\x1b[30;46m bxrp = Bundle eXec Rake Parallel:setup \x1b[0m                   ' && bundle exec rake parallel:setup"
alias bxrsa="echo '\x1b[30;46m bxrsa = Bundle eXec Rails Server -p 3100 [admin] \x1b[0m        ' && bundle exec rails s -p 3100"
alias bxrsc="echo '\x1b[30;46m bxrsc = Bundle eXec Rails Server -p 3300 [client] \x1b[0m       ' && bundle exec rails s -p 3300"
alias bxrscc="echo '\x1b[30;46m bxrscc = Bundle eXec Rails Server -p 3200 [callcenter] \x1b[0m ' && bundle exec rails s -p 3200"
alias bxrsp="echo '\x1b[30;46m bxrsp = Bundle eXec Rails Server -p 3500 [provider] \x1b[0m     ' && bundle exec rails s -p 3500"
alias bxrsm="echo '\x1b[30;46m bxrsm = Bundle eXec Rails Server -p 3400 [member] \x1b[0m       ' && bundle exec rails s -p 3400"
alias bxrse="echo '\x1b[30;46m bxrse = Bundle eXec Rails Server -p 3600 [eRx-rails] \x1b[0m    ' && bundle exec rails s -p 3600"
alias bxrso="echo '\x1b[30;46m bxrso = Bundle eXec Rails Server -p 5000 [oms] \x1b[0m          ' && bundle exec rails s -p 5000"
alias bxrst="echo '\x1b[30;46m bxrst = MOCK_AUTH_NET=1 ENABLE_REMOTE_CRUD=1 Bundle eXec Rails Server -p 3030 [TAS] \x1b[0m' && MOCK_AUTH_NET=1 ENABLE_REMOTE_CRUD=1 bundle exec rails s -p 3030"
alias bxc="echo '\x1b[30;46m bxc = TEST_ENV=local MY_ENV=env MY_SSL=http CCUMBER_DEBUG=1 CUCUMBER_BROWSER=chrome Bundle eXec Cucumber \x1b[0m' && TEST_ENV=local MY_ENV=env MY_SSL=http CCUMBER_DEBUG=1 CUCUMBER_BROWSER=chrome bundle exec cucumber"
