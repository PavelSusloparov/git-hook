#!/bin/bash

# Magic from the net to get the dir this script lives in
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

git clone https://github.com/greg0ire/git_template ~/.git_template || echo "already installed"
git config --global init.templatedir "~/.git_template/template"

mv ~/.git_template/template/hooks/prepare-commit-msg ~/.git_template/template/hooks/prepare-commit-msg-bckp
cp "${DIR}"/../scripts/prepare-commit-msg ~/.git_template/template/hooks/
chmod a+x ~/.git_template/template/hooks/prepare-commit-msg
