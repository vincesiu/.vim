#-------------------------------
# ALIASES
#-------------------------------


#So I don't overwrite files
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'


#Shortcuts
alias d='dirs -v'
alias j='jobs -l'
alias v='vim'

#Utility
alias ls='ls --color=auto'
#export PS1="\T \u@\H \w \$? > \[$(tput sgr0)\]"
export PS1="\t \u@\h \[$(tput sgr0)\]\[\033[38;5;6m\][\w]\[$(tput sgr0)\]\[\033[38;5;15m\] \$? > \[$(tput sgr0)\]"
