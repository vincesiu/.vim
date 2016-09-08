#-------------------------------
# ALIASES
#-------------------------------
source .aliases

#-------------------------------
# HISTORY
#-------------------------------

#Bash History Options
export HISTCONTROL=ignoredups
#export HISTCONTROL=ignoreboth
#The above is shorthand for ignorespaces and ignoredups

HISTSIZE=1000      #Maintains history for current session
HISTFILESIZE=2000  #Maintains history for previous sessions



#-------------------------------
# COMMAND PROMPT
#-------------------------------

#Prompt Customization
#Noncolor:
#export PS1="\n\t \u@\H [\w] \$?\$(__git_ps1) \[$(tput sgr0)\] \n > "
#Color:
export PS1="\n\t \u@\h \[$(tput sgr0)\]\[\033[38;5;6m\][\w]\[$(tput sgr0)\]\[\033[38;5;15m\] \$?\[$(tput setaf 2)\]\$(__git_ps1)\[$(tput sgr0)\] \n > "




#-------------------------------
# UTILITY SETTINGS
#-------------------------------
export VISUAL=vim
export EDITOR=vim
export GIT_EDITOR=vim
export IGNOREEOF=3 #Takes three iterations of ctrl-D to exit terminal


#-------------------------------
# Optional Functions
#-------------------------------

#Sourcing git prompt, found using #find / -name git-prompt.sh

source_git_prompt() {
    source /usr/share/git/git-prompt.sh;
}



#source_git_prompt
source_git_prompt
PATH=$PATH:~/.gem/ruby/2.3.0/bin
