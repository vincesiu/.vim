#######################3
# zsh prompt aw yiss
#######################3

autoload -Uz colors && colors



NEWLINE=$'\n'
PROMPT="${NEWLINE}%D{%K:%M:%S} %n@%M $fg[cyan][%~]$reset_color %?${NEWLINE} > "

#----------------------------------------
# ALIASES
#----------------------------------------

#So I don't overwrite files
alias rm='rm -id'
alias mv='mv -i'
alias cp='cp -i'


#Shortcuts
alias d='dirs -v'
alias j='jobs -l'
alias v='vim'

#Utility
alias ls='ls --color=auto -C --group-directories-first'
alias la='ls --color=auto -alF --group-directories-first'
alias ll='ls --color=auto -lF --group-directories-first'

alias powerup='chmod u+x'
