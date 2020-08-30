#!/bin/bash

directory=$HOME/.ctags

function cleanConfig() {
    echo "cleaning old files"
    rm -rf $directory
    echo "clean success"
}


function createConfig() {
    echo "creating configuation"
    mkdir $directory
    cp ctags $directory
    cp run.sh $directory
    echo "success"
}

echo "-- STAGE 1 --"

if [ -d "$directory" ]
    then
	cleanConfig
	createConfig
    else
	createConfig
fi

echo "--STAGE 2--"

if cat $HOME/.bashrc | grep -q "alias vtags" > /dev/null
    then 
	echo "alias exist's"
    else 
	echo "configuring alias"
	echo "alias vtags='$HOME/.ctags/run.sh'\n" >> $HOME/.bashrc
	echo "success"
fi

echo "-- COMPLETE --"
