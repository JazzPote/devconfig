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
alias sapi='cd ../apigee-stub && npm start'
alias sping='cd ../ping-mock && npm start'
alias spsp='cd ../psp && npm start'
alias skado='cd ../kado && npm start'
alias ssettei='cd ../settei && npm start'
alias hu='
if [[ -e .huskyrc2 ]]; then 
	if mv .huskyrc2 .huskyrc; then
		 echo ".huskyrc reverted OK";
	else
		echo "Error";
	fi
else
	if mv .huskyrc .huskyrc2; then
		echo ".huskyrc discarded OK";
	else
		echo "Error";
	fi
fi'

function killport () {
	lsof -ti tcp:$1 | xargs kill -9;
}

PATH=$PATH:~/bin

