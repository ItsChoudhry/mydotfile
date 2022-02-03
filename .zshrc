# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export TERM="xterm-256color"
export ZSH="/home/choudhry/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
DEFAULT_USER=`whoami`

plugins=(
  alias-tips
  git
  autojump
  z
  command-not-found
  python
  pip
  zsh-syntax-highlighting
  colored-man-pages
  colorize
  cp
  web-search
  gnu-utils
  jira
)

source $ZSH/oh-my-zsh.sh
export ZSH_PLUGINS_ALIAS_TIPS_REVEAL=1

export PATH="$PATH:/home/choudhry/repos/flutter/bin"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/choudhry/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/choudhry/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/choudhry/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/choudhry/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /home/choudhry/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
