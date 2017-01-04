__BASE_DIR__=$(dirname $(dirname $(readlink -f $0)))

[ -z "$__NPMENV__" ] && __NPMENV__=$__BASE_DIR__

# Something like v6.9.2
[ ! -s ${__NPMENV__}/.node-version ] && echo "Empty or missing .node-version" && exit 1
NODE_VERSION="$(cat ${__NPMENV__}/.node-version)"

export NVM_DIR="${__NPMENV__}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

export NODE_PATH=$NVM_DIR/versions/node/${NODE_VERSION}/lib/node_modules

export PATH=$NVM_DIR/versions/node/${NODE_VERSION}/bin:$PATH

echo "-----"
echo "|    PATH: $PATH"
echo "|    Node: `which node`"
echo "|     Npm: `which npm`"
echo "|Npm root: `npm root -g`"
echo "|     Nvm: `which nvm`"
echo "|      Yo: `which yo`"
echo "-----"
