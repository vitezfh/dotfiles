#!/bin/bash

set -xe

mkdir -p scripts

echo Cloning git@github.com:vitezfh/.scripts.git to scripts/.scripts ...
git clone git@github.com:vitezfh/.scripts.git $HOME/dotfiles/scripts/.scripts 2> /dev/null || true

echo Checking if dotfile-config present ...
[ -f dotfile.conf ] || \
  ( echo Missing dotfile-config file, please make one first && exit 1)

echo Sourcing that config ...
. $HOME/dotfiles/dotfile.conf

echo Running stow on $TO_DEPLOY ...
stow $TO_DEPLOY

# TODO: add function "relink"
echo Unlinking and linking sway themes ...
mkdir -p $XDG_CONFIG_HOME/sway/theme
unlink $XDG_CONFIG_HOME/sway/theme/theme.link || true
ln -s $XDG_CONFIG_HOME/sway/theme/$SWAY_THEME $XDG_CONFIG_HOME/sway/theme/theme.link

echo Unlinking and linking kitty themes ...
mkdir -p $XDG_CONFIG_HOME/kitty
unlink $XDG_CONFIG_HOME/kitty/theme.link || true
ln -s $XDG_CONFIG_HOME/kitty/$SWAY_THEME".conf" $XDG_CONFIG_HOME/kitty/theme.link

echo Unlinking and linking waybar themes ...
mkdir -p $XDG_CONFIG_HOME/waybar
unlink $XDG_CONFIG_HOME/waybar/style.css || true
ln -s $XDG_CONFIG_HOME/waybar/$SWAY_THEME".css" $XDG_CONFIG_HOME/waybar/style.css


