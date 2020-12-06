# git-clc

[`git-clc`](https://github.com/peterpme/dotfiles/blob/master/bin/git-clc) port for fish.


```bash
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
```
## Installation

Using [fisher](https://github.com/jorgebucaran/fisher)(recommended)

```
fisher install idkjs/git-clc
```

