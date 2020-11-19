#!/bin/bash

 # переменная для нэймспейса
FILENAME_BASHRC=~/.bashrc

if ! grep -q '#user_aliases' "$FILENAME_BASHRC"
then
    echo '#user_aliases' >> "$FILENAME_BASHRC"
    echo 'export ns=default' >> "$FILENAME_BASHRC" 
    echo 'alias ku=kubectl' >> "$FILENAME_BASHRC"
    echo 'alias kun=echo namespace=$ns && ku -n=$ns'>> "$FILENAME_BASHRC"
    echo 'alias kudr=kun --dry-run=client -o=yaml' >> "$FILENAME_BASHRC" 
else
    echo "Aliases are already set. Correct the file $FILENAME_BASHRC manually if necessary"
fi

source "$FILENAME_BASHRC"
