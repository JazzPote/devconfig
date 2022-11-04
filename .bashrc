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
alias edtract='vi ~/.tractablerc'
alias cz='npx git-cz'
alias listScripts='ls -1 ~/bin'
alias activate='source ./venv/bin/activate'
alias py='python3'
alias dc='docker-compose'
alias cra='npx create-react-app'
alias cna='npx create-next-app'


function killport () {
	lsof -ti tcp:$1 | xargs kill -9;
}

PATH=$PATH:~/bin:~/.local/bin


#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
