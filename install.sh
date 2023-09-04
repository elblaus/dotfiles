#!/bin/bash

generic=false
while getopts 'g' OPTION; do
    case "$OPTION" in
        r)
            generic=true
            ;;
    esac
done

set +x

# CONFIG FOLDER LINKS
cd config
for dir in *
do
	rm -r "~/.config/$dir"
	ln -s "$PWD/$dir" ~/.config/
done
cd ..

# TMUX SETTINGS
cp tmux.conf ~/.tmux.conf

# GNOME SETTINGS
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:escape']"

# ZSH
cp aliases-generic.zsh ~/.oh-my-zsh/custom
if [ "$generic" = false ]; then
    cp aliases-private.zsh ~/.oh-my-zsh/custom
fi
