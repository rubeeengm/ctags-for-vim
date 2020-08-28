#!/bin/bash

mkdir ~/.ctags/
cp ctags ~/.ctags/
cp run.sh ~/.ctags/

if cat $HOME/.bashrc | grep -q "alias vtags" > /dev/null
    then 
	echo "alias ya se encuentra configurado"
    else 
	echo "configurando alias"
	echo "alias vtags='$HOME/.ctags/run.sh'\n" >> $HOME/.bashrc
fi
