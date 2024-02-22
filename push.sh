#!/bin/sh
comment="$*"
if [ -z "$comment" ]; then
    echo "use ./push.sh 'my update comment' if you want to add a comment to this commit"
    git add . 
    git commit -a -m "update without comment" 
    git push
else
    git add . 
    git commit -a -m "$comment" 
    git push
fi
