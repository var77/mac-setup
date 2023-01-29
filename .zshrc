if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/Users/varikmatevosyan/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias vim=nvim
alias lf='rg --files --hidden --follow --no-ignore-vcs -g "!{node_modules,.git,.idea,.vscode}" | fzf --preview="bat --style=numbers --color=always {}"'
alias vlf='vim $(lf)'
PATH=$PATH:~/go/bin
source ~/.profile

# Tmux Helepr Functions
function tmux_dev_workspace() {
  name=$1
  # Create 3 windows for vim, node and git
  tmux new -s $name -d
  tmux new-window -t $name
  tmux rename-window -t $name:1 vim
  tmux new-window -t $name
  tmux rename-window -t $name:2 node
  tmux new-window -t $name
  tmux rename-window -t $name:3 git

  # Split window so we can run npm install and other command in split
  tmux split-window -t $name:git -h

  # Check git status
  tmux send-keys -t $name:git "git status" Enter

  tmux send-key -t $name:vim "vim ." Enter

  tmux kill-window -t $name:4

  tmux attach -t $name:vim
}

function t {
    # t dev "name" -> start new development workspace or attach to name
    # t a "name" -> attach to name
    # t k "name" -> kill session name
    # t c "name" -> start new session with name or if exists attach to it
    # Create dev workspace
    if [[ $1 == "dev" ]]
    then
      if [ -z $2 ]
      then
        echo "Usage: t dev 'name'"
        return 1
      fi
      tmux has-session -t $2 2>/dev/null
      if [[ $? -eq 0 ]]
      then
        tmux attach -t $2
      else
        tmux_dev_workspace $2
      fi
    fi
    # Attach to session
    if [[ $1 == "a" ]]
    then
        if [ -z $2 ]
        then
          echo "Usage: t a 'name'"
          return 1
        fi
        tmux attach -t $2
    fi
    # Kill session
    if [[ $1 == "k" || $1 == "d" ]]
    then
        if [ -z $2 ]
        then
          echo "Usage: t k 'name'"
          return 1
        fi
        tmux kill-session -t $2
    fi
    # List sessions
    if [[ $1 == "ls" || $1 == "l" ]]
    then
      tmux ls
    fi
    # Create session
    if [[ $1 == "c" || $1 == "n" ]]
    then
        if [ -z $2 ]
        then
          tmux
        else
          tmux has-session -t $2 2>/dev/null
          if [[ $? -eq 0 ]]
          then
            tmux attach -t $2
          else
            tmux new -s $2
          fi
        fi
    fi
}
