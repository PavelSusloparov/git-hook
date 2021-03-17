#!/bin/bash

 # Magic from the net to get the dir this script lives in
 DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

 git config --global init.templatedir "~/.git-templates"

 mkdir ~/.git-templates/hooks/
 cp ${DIR}/../scripts/prepare-commit-msg.sh ~/.git-templates/hooks/
 chmod a+x ~/.git-templates/hooks/prepare-commit-msg