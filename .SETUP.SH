#!/bin/bash
#Vincent Siu
#vince.siu4 (at) gmail (dot) com

#======================================
#
# The main setup for my config files
#
#======================================

#TODO: make a backup if I overwrite a file
#TODO: setup the makefile uninstall (with backup restoration support)
#TODO: bashprofile to auto update my config file on login?
#TODO: add `set textwidth=72` for my git vim?
#TODO: set auto editor for git as vim?

#-------------------------------------
# Soft linking my config files
#-------------------------------------

# Used so I can keep all actual files in here and updated with my github

FILES='.vimrc .bashrc .bash_profile .gitconfig'

echo "Soft linking config files..."

for FILE in $FILES; do
  FILEPATH="$(pwd)/$FILE"
  FILE=~/$FILE
  echo $FILEPATH
  echo $FILE
  if [[ -e $FILE ]]; then
    read -r -p "$FILE already exists, do you want to replace it? [y/n] " response
    response=${response,,} # "," makes the first char lowercase, ",," makes all chars lowercase
    if [[ $response =~ ^y$ ]]; then # =~ is a regex match
      rm $FILE
      echo "Linking $FILE"
      ln -s $FILEPATH $FILE
    fi
  else
    echo "Linking $FILE"
    ln -s $FILEPATH $FILE
  fi
done

echo "Finished"

