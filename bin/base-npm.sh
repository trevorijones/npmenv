__BASE_DIR__=$(dirname $(dirname $(readlink -f $0)))

# Something like v6.7.2
NODE_VERSION="$(cat ${__BASE_DIR__}/.node-version)"

export NVM_DIR="${__BASE_DIR__}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

export NODE_PATH=$NVM_DIR/versions/node/${NODE_VERSION}/lib/node_modules

export PATH=$NVM_DIR/versions/node/${NODE_VERSION}/bin:$PATH

echo "-----"
echo "|    Node: `which node`"
echo "|     Npm: `which npm`"
echo "|Npm root: `npm root -g`"
echo "|     Nvm: `which nvm`"
echo "|      Yo: `which yo`"
echo "-----"
