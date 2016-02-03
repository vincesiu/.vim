#!/bin/bash

#Perhaps I should make a check for .vimrc presence already, and throw out a message?

FILE="~/.vimrc"
FILEPATH=`pwd`
FILEPATH="$FILEPATH/.vimrc"
if [ -f $FILE ];
then
  echo ".vimrc already present, delete first"
else
  ln -s $FILEPATH ~/.vimrc
fi
  #perhaps add functinoality to delete if I want to?
#ln -s ./.vimrc ~/.vimrc
