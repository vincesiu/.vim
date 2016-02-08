#!/bin/bash

#Perhaps I should make a check for .vimrc presence already, and throw out a message?

FILE=~/.vimrc
FILEPATH=`pwd`
FILEPATH="$FILEPATH/.vimrc"
if [ -e $FILE ]
then
  read -r -p "~/.vimrc already exists, want to replace it? [y/n] " response
  response=${response,,} #tolower
  if [[ $response =~ ^(y)$ ]]
  then
    rm $FILE
    ln -s $FILEPATH ~/.vimrc
  else
    echo "that's chill bro np"
  fi
else
  ln -s $FILEPATH ~/.vimrc
fi
  #perhaps add functinoality to delete if I want to?
#ln -s ./.vimrc ~/.vimrc
