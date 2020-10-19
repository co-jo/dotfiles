#!/bin/bash

HOME=$HOME

list=(
	'.config'
	'.tmux.conf'
)

for file in ${list[@]}; do
	sudo cp -r $file $HOME
done
