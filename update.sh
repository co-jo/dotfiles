#!/bin/bash

HOME=$HOME
USER=$(id -g -n)
GROUP=$(id -g)

list=(
	'.config'
	'.tmux.conf'
)

for file in ${list[@]}; do
	sudo cp -r $file $HOME
	sudo chown -R $USER:$GROUP $HOME/$file
done
