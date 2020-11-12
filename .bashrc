export BASH_CONF="bashrc"
export EDITOR='vim'

alias la='ls -A'
alias ls='ls -GFA'
alias rm='rm -i'
alias vi='vim'
alias edbash='vi ~/.bashrc'
alias edvi='vi ~/.vimrc'
alias edzsh='vi ~/.zshrc'
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
    [[ -e .huskyrc || -e .huskyrc2 ]] || { echo "Not a Huskyrc folder" >&2; return 1; }
    if [[ -e .huskyrc2 ]]; then 
        if mv .huskyrc2 .huskyrc; then
             echo ".huskyrc enabled";
        else
            echo "Error" >&2;
            return 1;
        fi
    else
        if mv .huskyrc .huskyrc2; then
            echo ".huskyrc disabled";
        else
            echo "Error" >&2;
            return 1;
        fi
    fi
    return 0;
}

function cov () {
    [[ "$PWD" == *client ]] || { echo "You must be in the client/ folder" >&2; return  1; }
    [[ ! -e ./package.json ]] && { echo "No package.json in folder" >&2; return 1; }
    if grep -Rq 'coverage' package.json; then
        sed -i '' 's/ --coverage//' package.json
        echo "Coverage disabled"
    else
        if grep -Rq 'react-scripts test' package.json; then
            sed -i '' 's/react-scripts test/react-scripts test --coverage/' package.json
            echo "Coverage enabled"
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


#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
