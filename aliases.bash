
### Git

alias gch='git branch | fzf | xargs git checkout'
alias us='git status'
alias nb='git checkout -b'
alias a.co='git add . && git commit'
alias a.rc='git add . && git rebase --continue'
alias ff='git diff'
alias og='git log'
alias fork="git merge-base HEAD"

alias rb='git for-each-ref --sort=-committerdate --count=10 --format='\''%(authorname),%(color:bold yellow)%(refname:short)%(color:reset) (%(color:bold magenta)%(committerdate:relative)%(color:reset)) %(color:cyan)%(objectname:short)%(color:reset) - %(color:dim white)%(contents:subject)%(color:reset)'\'' refs/heads/'
alias git-short-status='git rev-parse --abbrev-ref HEAD 2>/dev/null'

### Docker

alias find-container="docker ps | tail -n +2 | fzf | cut -d' ' -f1"
alias dsh='docker exec -ti $(find-container) /bin/bash'

### Colors

export COLOR_NC=$(tput init) # No Color
export COLOR_BLACK=$(tput setaf 0)
export COLOR_RED=$(tput setaf 9)
export COLOR_GREEN=$(tput setaf 10)
export COLOR_YELLOW=$(tput setaf 11)
export COLOR_BLUE=$(tput setaf 12)
export COLOR_MAGENTA=$(tput setaf 13)
export COLOR_CYAN=$(tput setaf 14)
export COLOR_WHITE=$(tput setaf 15)
export COLOR_GRAY=$(tput setaf 8)

### Shortcuts

alias idea='open -a "IntelliJ IDEA CE"'
alias f='$(cat $HOME/.config/frequent-commands | fzf)'
alias F='print -z "$(cat $HOME/.config/frequent-commands | fzf) "'
alias q='$(history | fzf +s --tac | awk '\''{ $1=""; print }'\'')'

### Navigation

alias c='cd ~/code/ && cd $(find . -type d -maxdepth 2 | fzf)'

alias from="pwd | pbcopy"
alias to='cd $(pbpaste)'

### Misc

alias yell='osascript -e '\''display notification "Done"'\'''

alias random_uuid="cat /dev/urandom | env LC_CTYPE=C tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n1"

alias comp="echo -n | vipe"

function mkcd {
	mkdir $1 && cd $1
}

alias mkts='git clone https://github.com/jsynowiec/node-typescript-boilerplate'
