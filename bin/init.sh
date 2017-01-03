#!/usr/bin/env bash
__DIR__=$(dirname $(readlink -f $0))
. $__DIR__/base-npm.sh

# Node Version Manager & Node
if [ ! -f "${NVM_DIR}/nvm.sh" ]
then
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh |  bash
    # source nvm 
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

    nvm install "$NODE_VERSION"

fi

# install eslint
npm install -g eslint@1.10.3
npm install -g eslint-plugin-mocha@1.1.0
npm install -g babel-eslint@4.1.8

# install yo
npm install -g yo

# install kibana plugin generator
npm install -g generator-jhipster

