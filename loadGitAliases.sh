#!/bin/bash

function createAlias () {
    [[ $# != 2 ]] && return 1
    git config --global "alias.$1" "$2"
}

createAlias br branch
createAlias c commit
createAlias ca "commit --amend"
createAlias co checkout
createAlias cp cherry-pick
createAlias delsave "br -D \"save--$(git symbolic-ref --short HEAD)\""
createAlias l log
createAlias pf "push --force"
createAlias pfl "push --force-with-lease"
createAlias pnew "!git push --set-upstream origin \$(git symbolic-ref --short HEAD)"
createAlias pur "pull --rebase"
createAlias rb rebase
createAlias rbi "rebase -i"
createAlias saveb "checkout -b \"save--$(git symbolic-ref --short HEAD)\""
createAlias st status
createAlias upc "commit --amend --no-edit"
