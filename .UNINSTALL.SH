#!/bin/bash
#Vincent Siu
#vince.siu4 (at) gmail (dot) com

#=====================================
#
# The uninstaller for my config files
#
#=====================================


FILES='.vimrc .bashrc .bash_profile .gitconfig .zshrc'

echo "Uninstalling my config files..."

for FILE in $FILES; do
    FILE=~/${FILE}
    FILEBACKUP=${FILE}.bak
    if [[ -e $FILE ]]; then
        if [[ -e $FILEBACKUP ]]; then
            echo "Restoring original ${FILE}..."
            mv $FILEBACKUP $FILE
        else
            echo "Removing ${FILE}..."
            rm $FILE
        fi
    fi
done

echo "Uninstall completed"
