# npmenv
## A little help to run **npm** in **myfolder**

Setup local npm environment under a npmenv folder. Keep it contained.

## What it does?

Clone nvm locally and wrap calls with `bin/npm` to install packages locally 

## Clone and tweak .node-version 

```bash
git clone https://github.com/trevorijones/npmenv.git
```
set .node-version to the target node version (v6.9.2)

## Install node and friends (actually nvm, npm, node)

```bash
npmenv/bin/init.sh
```
## Example of wrapped commands

```bash
npmenv/bin/npm install -g yo
```
## Usage in other scripts

set __NPMENV__ to point to the npmenv folder
source $__NPMENV__/bin/_env.sh

```bash
 #!/usr/bin/env bash                                                     
 __NPMENV__=<path to npm>                                                  
 . $__NPMENV__/bin/_env.sh 
 
 npm install -g eslint
 ....
 ```
