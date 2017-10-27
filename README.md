# npmenv/bin
## An extra little help to manage Node installs through NODE_VERSION environmemt variable

Set NODE_VERSION to a kwown node version (v6.10.2) and make _node_ available to your current session or scripts

## Current session

The default node version is located in .node-version. Run the following to install node:

```bash
./npmenv/bin/init.sh
```

You don't change .node-version.

.node-version has the current node version you get when sourcing `npmenv/bin/_env`

So for the current session in your terminal, just run:

```bash
source npmenv/bin/_env
```

or `. npmenv/bin/_env`


To change the current node version for the session:

```bash
NODE_VERSION=v6.10.3 source npmenv/bin/_env
```

This never tries to install the node for this version, only switch to it if available.

Everytime a new version is to be installed, run the `init.sh` script with NODE_VERSION:

```bash
NODE_VERSION=v6.11.3 ./npmenv/bin/init.sh
````

Now run node -v. It should match the version in NODE_VERSION:

```bash
node -v
```

## Run in scripts

Check the content of bin/node. 

Basically, source `npmenv/bin/_env` with the desired NODE_VERSION before calling node

You can check .node-version content and call 'npmenv/bin/itni'


## What it does?

This is just a very simple glue around Node version manager (nvm)

It uses nvm to install and switch current node to match NODE_VERSION.

Clone nvm locally and wrap calls with `bin/npm` to install packages locally 

Setup local node environment under a npmenv/bin folder. Keep it contained.

## Installing an packages

Source `npmenv/bin/_env` as first step:

```
source npmenv/bin/_env
```

### yarn

```bash
npm install -g yarn
```

Then add dependencies with a --prefix ./npmenv to install to ./npmenv/bin

```bash
yarn global add grunt --prexix ./npmenv 
```


