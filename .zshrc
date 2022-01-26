# ensure brew is in path
export PATH=/opt/homebrew/bin:$PATH

# Enable colors and change prompt:
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}
autoload -U colors && colors
PROMPT_SYMBOL=❯
setopt PROMPT_SUBST
prompt () {
	PS1="%B%{$fg[magenta]%}%~ %F{39}$(parse_git_branch)%f %{$fg[green]%}$PROMPT_SYMBOL%{$fg[yellow]%}$PROMPT_SYMBOL%{$fg[red]%}$PROMPT_SYMBOL%b %{$reset_color%}"
}
precmd_functions+=(prompt)

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.config/zsh/history

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/zsh/functions" ] && source "$HOME/.config/zsh/functions"
[ -f "$HOME/.config/zsh/aliases" ] && source "$HOME/.config/zsh/aliases"

# brew install zsh-syntax-highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# brew install zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

