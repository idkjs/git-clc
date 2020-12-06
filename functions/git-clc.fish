#!/usr/bin/env fish
function git-clc
    if [ -z $argv[1] ]
        set BRANCH (git rev-parse --apprev-ref HEAD)
    else
        set BRANCH $argv[1]
    end
    set LAST_COMMIT_SHA ( git rev-parse $BRANCH | tail -n 1 )
    echo $LAST_COMMIT_SHA | tr -d '\n' | pbcopy
    echo "Copied $LAST_COMMIT_SHA."
end

