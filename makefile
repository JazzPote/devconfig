#####################
##      SETUP      ##
#####################

# Going to install all the configs and scripts on the machine
setup-machine: setup-configs setup-git-aliases setup-scripts

setup-configs:
	cp .bashrc ~/.bashrc
	cp .zshrc ~/.zshrc
	cp .vimrc ~/.vimrc

setup-git-aliases:
	./loadGitAliases.sh

setup-scripts:
	cp -r ./scripts ~/bin


######################
##      UPDATE      ##
######################

# Going to update everything at once
update-devconfig: update-configs update-scripts update-vscode-configs

update-configs:
	cp ~/.bashrc .bashrc
	cp ~/.zshrc .zshrc
	cp ~/.vimrc .vimrc

update-scripts:
	cp -r ~/bin/* ./scripts

update-vscode-configs:
	cp -r ~/.vscode/vscode/* ./vscode