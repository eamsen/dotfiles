HOMEDIR = /home/$$USER

install: git vim tmux gdb

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

gdb:
	@ln -sf $(CURDIR)/gdb/.gdbinit $(HOMEDIR)/.gdbinit
	@echo "Linked $(HOMEDIR)/.gdbinit"

.PHONY: git vim tmux gdb
