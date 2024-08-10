# ~/.zshrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Options
setopt prompt_subst
setopt auto_list
setopt hist_find_no_dups
setopt hist_ignore_dups

# Prompt
PROMPT="%F{1}%n%F{reset}@%m %F{2}%~ %F{reset}"

# Auto startx
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	startx
fi

# Vars
export TERMINAL="terminator"
export BROWSER="firefox"
export EDITOR="nvim"
export VISUAL="${EDITOR}"

# Aliases
alias pls='sudo'
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'
alias grep='grep --color=auto'
alias cl='clear'
alias cp="cp -i"
alias df='df -h'
alias free='free -m'

# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

# cute sudo
export SUDO_PROMPT="%u's pass pls: "

# not found
command_not_found_handler() {
	printf "%s%s? Ese comando no existe boludito\n" "$acc" "$0" >&2
    return 127
}

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi
# Bindings
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
bindkey "^[[3~" delete-char

# Some config
cat /home/emiemiemi/.cache/wal/sequences
alias vim=nvim
alias ls=lsd

# Plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/emiemiemi/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
autoload -Uz compinit && compinit
