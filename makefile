HOMEDIR = /home/$$USER

install: submodule git vim

submodule:
	@git submodule init >/dev/null
	@git submodule update

git:
	@ln -sf $(CURDIR)/git/.gitconfig $(HOMEDIR)/.gitconfig
	@echo "Linked $(HOMEDIR)/.gitconfig"

vim:
	@ln -sf $(CURDIR)/vim/.vimrc $(HOMEDIR)/.vimrc
	@ln -sf $(CURDIR)/vim/.vim $(HOMEDIR)/.vim
	@echo "Linked $(HOMEDIR)/.vimrc and $(HOMEDIR)/.vim"
 

.PHONY: git vim
