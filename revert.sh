#!/bin/bash

set -e

echo Checking if dotfile-config present ...
[ -f dotfile.conf ] || \
  ( echo Missing dotfile-config file, please make one first && exit 1)

echo Sourcing that config ...
. $PWD/dotfile.conf

echo Running stow on $TO_DEPLOY ...
stow -D $TO_DEPLOY
