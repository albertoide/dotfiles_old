repo_locations() {
    repos=$(find ~/src/github.com ~/src/noorg -mindepth 2 -maxdepth 2 -type d)
    session=$(echo $repos | tr " " "\n" | fzf)
    cd $session
}

source $HOME/.antigen.zsh

antigen use oh-my-zsh

antigen theme gnzh

antigen apply

export PATH="$HOME/.local/bin:$PATH"

if [ -d "$HOME/.nvm" ]; then
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
fi

if [ -d "$HOME/.cargo" ]; then
    . "$HOME/.cargo/env"
fi

bindkey -s ^f "repo_locations\n"

if [ -e "./.zshrc.after.sh" ]; then
    source "./.zshrc.after.sh"
fi
