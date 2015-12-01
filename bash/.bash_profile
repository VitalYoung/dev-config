function git-branch-name {
  git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3
  }

  function git-branch-prompt {
    local branch=`git-branch-name`
      if [ $branch ]; then printf " [%s]" $branch; fi
      }

      PS1="[\u@\h \[\033[0;36m\]\W\[\033[0m\]\[\033[0;32m\]\$(git-branch-prompt)\[\033[0m\]]\$ "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.profile
source /Users/Nick/.rvm/scripts/rvm
