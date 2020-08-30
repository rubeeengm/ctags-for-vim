#!/bin/bash
#ctags script
ctagsFile="$HOME/.ctags/ctags"

#project route
projectHook="$(pwd)/.git/hooks/"

echo "-- STAGE 1 --"
echo "generating script for create tags"
cp $ctagsFile $projectHook
echo "success"

#echo "-- STAGE 2 --"
#chmod u+rw "$(pwd)/.git/tags"
