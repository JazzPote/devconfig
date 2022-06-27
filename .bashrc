[[ -e ~/.tractablerc ]] && emulate sh -c "source ~/.tractablerc"

export BASH_CONF="bashrc"
export EDITOR='vim'
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

alias la='ls -A'
alias ls='ls -GFA'
alias rm='rm -i'
alias vi='vim'
alias edbash='vi ~/.bashrc'
alias edvi='vi ~/.vimrc'
alias edzsh='vi ~/.zshrc'
alias edvim='edvi'
alias edtract='vi ~/.tractablerc'
alias cz='npx git-cz'
alias listScripts='ls -1 ~/bin'
alias activate='source ./venv/bin/activate'
alias py='python3'
alias dc='docker-compose'
alias cra='npx create-react-app'
alias cna='npx create-next-app'

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


###########
#         #
#  AVENI  #
#         #
###########

export AWS_SDK_LOAD_CONFIG=1

