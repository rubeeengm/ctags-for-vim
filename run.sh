#!/bin/bash
#ruta de ctags
ctagsFile="$HOME/.ctags/ctags"

#ruta del proyecto
project="$(pwd)/.git/hooks/"

cp $ctagsFile $project
