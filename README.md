# npmenv/bin
## An extra little help to manage current node install through NODE_VERSION environmemt variable

Set NODE_VERSION to a kwown node version (v6.10.2) and make node available to your current session or scripts

## Current session

The default node version is located in .node-version. Run the following to install node:

```bash
source npmenv/bin/init.sh
```

You don't change .node-version. To change the current node version for the session:

```bash
NODE_VERSION=v6.10.3 source npmenv/bin/_env
```

Now run node -v. It should match the version in NODE_VERSION:

```bash
node -v
```

## Run in scripts

Check the content of bin/node. 

Basically, source `npmenv/bin/_env` with the desired NODE_VERSIOM before calling node


## What it does?

This is just a very simple glue around Node version manager (nvm)

It uses nvm to install and switch current node to match NODE_VERSION.

Clone nvm locally and wrap calls with `bin/npm` to install packages locally 

Setup local node environment under a npmenv/bin folder. Keep it contained.

