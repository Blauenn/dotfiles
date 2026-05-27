export ZSH="$HOME/.oh-my-zsh"

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_THEME=""

eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/base.toml)"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting history)

if [ -f ~/.env ]; then
    source ~/.env
fi

export PATH="$HOME/scripts:$PATH"

# Aliases
alias llama="cd ~/Projects/llama.cpp/scripts && ./serve"
alias comfyui="~/Projects/ComfyUI/scripts/serve"
