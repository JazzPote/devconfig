#!/bin/bash

function createAlias () {
    [[ $# != 2 ]] && return 1
    git config --global "alias.$1" "$2"
}

createAlias co checkout
createAlias st status
createAlias c commit
createAlias br branch
createAlias pfl "push --force-with-lease"
createAlias upc "commit --amend --no-edit"
createAlias l log
createAlias pf "push --force"
createAlias pur "pull --rebase"
createAlias rbi "rebase -i"
createAlias saveb "checkout -b \"save--$(git symbolic-ref --short HEAD)\""
createAlias delsave "br -D \"save--$(git symbolic-ref --short HEAD)\""
createAlias ca "commit --amend"

