#!/usr/bin/env bash
__DIR__=$(dirname $(readlink -f $0))
. $__DIR__/_env

# Node Version Manager & Node
if [ ! -f "${NVM_DIR}/nvm.sh" ]
then
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh |  bash
    # source nvm 
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

    nvm install "$NODE_VERSION"

fi

