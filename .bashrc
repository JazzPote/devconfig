export EDITOR='vim'

alias la='ls -A'
alias ls='ls -GFA'
alias rm='rm -i'
alias vi='vim'
alias edbash='vi ~/.bashrc'
alias edvi='vi ~/.vimrc'
alias edvim='edvi'
alias cz='npx git-cz'
alias listScripts='ls -1 ~/bin'

# TB dev aliases
alias sapi='cd ~/Projects/apigee-stub && npm start'
alias sping='cd ~/Projects/ping-mock && npm start'
alias spsp='cd ~/Projects/psp && npm start'
alias skado='cd ~/Projects/kado && npm start'
alias ssettei='cd ~/Projects/settei && npm start'

function hu () {
    if [[ -e .huskyrc2 ]]; then 
        if mv .huskyrc2 .huskyrc; then
             echo ".huskyrc reverted OK";
        else
            echo "Error" >&2;
        fi
    else
        if mv .huskyrc .huskyrc2; then
            echo ".huskyrc discarded OK";
        else
            echo "Error" >&2;
        fi
    fi
}

function cov {
    [[ "$PWD" == *client ]] || echo "You must be in the client/ folder" >&2;
    [[ ! -e ./package.json ]] && { echo "No package.json in folder" >&2; return 1; }
    if grep -Rq 'coverage' package.json; then
        sed -i '' 's/ --coverage//' package.json
    else
        if grep -Rq 'react-scripts test --watchAll=false' package.json; then
            sed -i '' 's/react-scripts test --watchAll=false/react-scripts test --coverage --watchAll=false/' package.json
        else
            echo "Not a valid package.json" >&2;
            return 1;
        fi
    fi
    return 0;
}

function killport () {
	lsof -ti tcp:$1 | xargs kill -9;
}

PATH=$PATH:~/bin:~/.local/bin

