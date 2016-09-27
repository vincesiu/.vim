#######################3
# zsh prompt aw yiss
#######################3

autoload -Uz colors && colors



NEWLINE=$'\n'
PROMPT="${NEWLINE}%D{%K:%M:%S} %n@%M $fg[cyan][%~]$reset_color %?${NEWLINE} > "

#----------------------------------------
# ALIASES
#----------------------------------------
source ~/.aliases
