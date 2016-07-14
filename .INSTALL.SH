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
# Soft linking my config files
#-------------------------------------

# Used so I can keep all actual files in here and updated with my github

FILES='.vimrc .bashrc .bash_profile .gitconfig'

echo "Installing my configuration files..."

for FILE in $FILES; do
  FILEPATH="$(pwd)/$FILE"
  FILE=~/$FILE
  echo $FILEPATH
  echo $FILE
  if [[ -e $FILE ]]; then
    read -r -p "$FILE already exists, do you want to replace it? [y/n] " response
    response=${response,,} # "," makes the first char lowercase, ",," makes all chars lowercase
    if [[ $response =~ ^y$ ]]; then # =~ is a regex match
      FILEBACKUP=${FILE}.bak
      if [[ -e $FILEBACKUP ]]; then
        echo "${FILEBACKUP} already exists, can't overwrite"
        continue 
      fi
      mv $FILE $FILEBACKUP
    else
      continue   
    fi 
  fi
  echo "Linking $FILE"
  ln -s $FILEPATH $FILE
done

echo "Finished"

