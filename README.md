# npmenv
Setup local npm environment under a npmenv folder

## clone this somewhere in you're willing to use node

```bash
git clone https://github.com/trevorijones/npmenv.git
```

## set the node version
set .node-version to the target node version (v6.9.2)

## install node and friends (actually nvm, npm, node)

```bash
npmenv/bin/init.sh
```
## Example of wrapped commands

```bash
npmenv/bin/npm install -g yo
```
## Usage in other scripts

set __NPMENV__ to point to the npmenv folder
source $__NPMENV__/bin/base-npm.sh

```bash
 #!/usr/bin/env bash                                                     
 __NPMENV__=<path to npm>                                                  
 . $__NPMENV__/bin/base-npm.sh 
 
 npm install -g eslint
 ....
 ```
