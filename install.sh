#!/bin/sh

dot_list="vim vimrc"

scriptpath="$( cd "$(dirname "$0")" ; pwd -P )"

for f in $dot_list; do
		rm -rf "$HOME/.$f"
		ln -s "$scriptpath/$f" "$HOME/.$f"
done
