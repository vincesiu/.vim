#!/bin/bash
#Vincent Siu
#vince.siu4 (at) gmail (dot) com

#======================================
#
# The main installer for my config files
#
#======================================

#TODO: bashprofile to auto update my config file on login?

#-------------------------------------
# soft linking my config files
#-------------------------------------

# Used so I can keep all actual files in here and updated with my github

FILES='.vimrc .bashrc .bash_profile .gitconfig'

echo "Installing my configuration files..."

for FILE in $FILES; do
  FILEPATH="$(pwd)/$FILE"
  FILE=~/$FILE
  echo "Soft linking ${FILEPATH} to ${FILE}"
  if [[ -e $FILE ]]; then
    read -r -p "$FILE already exists, do you want to save the original and use mine? [y/n] " response
    response=${response,,} # "," makes the first char lowercase, ",," makes all chars lowercase
    if [[ $response =~ ^y$ ]]; then # =~ is a regex match
      FILEBACKUP=${FILE}.bak
      if [[ -e $FILEBACKUP ]]; then
        echo "${FILEBACKUP} already exists, will not overwrite this backup"
        continue 
      fi
      mv $FILE $FILEBACKUP
    else
      continue   
    fi 
  fi
  ln -s $FILEPATH $FILE
done


#-------------------------------------
# Sourcing rc files
#-------------------------------------
source ~/.bashrc

echo "Finished linking config files"
