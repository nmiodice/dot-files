#!/bin/bash

##
# Note: run as sudo!
##

set -euo pipefail

TMP_DIR="/tmp/sysconfig.tmp/"


# install latest git
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git -y


git config --global credential.helper store
sudo apt-get install -y \
    cowsay \
    fortune \
    direnv

rm -rf "$TMP_DIR"
git clone https://github.com/nmiodice/dot-files.git "$TMP_DIR"
for f in $(find "$TMP_DIR" -name ".*"); do
    case $f in

    *".git"*)
        ;;
    *)
        echo "...copying $f"
        cp -R "$f" "$HOME"
    ;;
    esac
done

echo "Please run the following to finish configuration:"
echo "source \"$HOME/.bashrc\""
