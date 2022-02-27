source $HOME/.antigen.zsh

antigen use oh-my-zsh

antigen theme gnzh

antigen apply

export PATH="$HOME/.bin:$PATH"
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. "$HOME/.cargo/env"

bindkey -s ^f "tmux-session.sh\n"
