#!/bin/bash

bindir="${HOME}/bin"

if [[ ! -d "$bindir" ]]; then
    echo "Bin directory doesn't exist at: ${bindir}"
    createDirFlag=
    until [[ "$createDirFlag" == "y" || "$createDirFlag" == "n" ]]; do
        read -p "Create it and continue? (y/n)" createDirFlag
    done
    [[ "$createDirFlag" == "n" ]] && { echo "OK, aborting." >&2; exit 1; }
    echo "OK"
    mkdir "$bindir"
fi


 cp -ri ./bin/* "$bindir"
cp -ri ./.*rc "${HOME}"

