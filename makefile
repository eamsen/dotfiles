HOMEDIR = /home/$$USER

install: git vim tmux

git:
	@ln -sf $(CURDIR)/git/.gitconfig $(HOMEDIR)/.gitconfig
	@echo "Linked $(HOMEDIR)/.gitconfig"

vim:
	@ln -sf $(CURDIR)/vim/.vimrc $(HOMEDIR)/.vimrc
	@ln -sf $(CURDIR)/vim/.vim $(HOMEDIR)/.vim
	@echo "Linked $(HOMEDIR)/.vimrc and $(HOMEDIR)/.vim"

tmux:
	@ln -sf $(CURDIR)/tmux/.tmux.conf $(HOMEDIR)/.tmux.conf
	@echo "Linked $(HOMEDIR)/.tmux.conf"

.PHONY: git vim tmux
