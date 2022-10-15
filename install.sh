#!/bin/bash

cd config
for dir in *
do
	rm -r "~/.config/$dir"
	ln -s "$PWD/$dir" ~/.config/
done
