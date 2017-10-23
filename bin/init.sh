#!/usr/bin/env bash
__DIR__=$(dirname $(readlink -f $0))
. $__DIR__/_env

# Node Version Manager & Node
if [ ! -s "$NVM_DIR/nvm.sh" ]
then
    curl -o- https://raw.githubusercontent.com/creationix/nvm/${NVM_VERSION}/install.sh |  bash
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
fi

if [ -n "$NODE_VERSION" ]
then
    nvm install "$NODE_VERSION"
fi


