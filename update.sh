#!/bin/bash

HOME=$HOME
USER=${USER:-$(id -g -n)}
GROUP=$(id -g)

if [ $USER = 'root' ]; then
    read -p "Using USER 'root', are you sure? (Press ENTER to continue)"
fi

list=(
	'.config'
	'.tmux.conf'
	'.fzf.zsh'
	'.zshrc'
)

echo "Updating config files. Found:"
echo -e "\tUSER:  $USER"
echo -e "\tHOME:  $HOME"
echo -e "\tGROUP: $GROUP"

for file in ${list[@]}; do
	cp -r $file $HOME
	chown -R $USER:$GROUP $HOME/$file
done
