#!/bin/bash

 # Magic from the net to get the dir this script lives in
 DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

 cp ${DIR}/../scripts/prepare-commit-msg.sh ${DIR}/../.git/hooks/prepare-commit-msg
 chmod a+x ${DIR}/../.git/hooks/prepare-commit-msg

 #Initialize webhook
 git init
