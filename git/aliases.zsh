# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git="hub"
fi

# The rest of my fun git aliases
alias gpull='git pull --prune'
alias glog="git log --decorate --graph --oneline --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gla='git log --all --oneline --decorate --graph'
alias gp='git push origin HEAD'
alias gd='git diff'
alias gdt='git difftool'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gitref='git reflog --decorate'
alias glc='git log -p -n1'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{\$1=\$2=\"\"; print \$0}' | \
           perl -pe 's/^[ \t]*//' | sed 's/ /\\\\ /g' | xargs git rm"

alias gclean="git branch --merged | grep -v '\*' | xargs -n 1 git branch -d"

# Hub aliases
alias hb="hub browse"
alias hi="hub browse -- issues"