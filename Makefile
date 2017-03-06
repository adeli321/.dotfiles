.PHONY: help install clean bashrc bashprofile

install: clean bashrc bashprofile
	@echo "installed"

bashrc:
	@ln -s 'pwd'/bashrc ~/.bashrc

bashprofile:
	@ln -s `pwd`/bash_profile ~/.bash_profile

clean:
	@touch ~/.bash_profile && mv ~/.bash_profile ~/.bash_profile.backup
	@touch ~/.bashrc && mv ~/.bashrc ~/.bashrc.backup
