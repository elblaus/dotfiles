#!/bin/bash

cp aliases.zsh ~/.oh-my-zsh/custom

cd config
for dir in *
do
	rm -r "~/.config/$dir"
	ln -s "$PWD/$dir" ~/.config/
done
