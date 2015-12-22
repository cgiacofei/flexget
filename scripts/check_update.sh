#! /bin/bash

REMOTE='origin'
BRANCH='master'
VENV='/home/media/.flexget/venv'

git fetch origin
CHANGES=$(git diff-index --name-only $REMOTE/$BRANCH)

if [ -n "$CHANGES" ]; then
    echo "Update available"

    # Perform git pull
    git pull origin $BRANCH

    # Reload flexget congig
    source $VENV/bin/activate
    flexget daemon reload
else
    echo "Everything up-to-date"
fi
