#!/bin/sh

set -o nounset
set -o errexit
set -o xtrace

echo 'export VERSION=$(cat ../Assets/$upm_DIRECTORY/package.json | grep version | head -1 | cut -d \  -f 4 | sed "s/[\",]//g")' >> $BASH_ENV
echo ${VERSION}

git checkout --track origin/upm
git subtree split --prefix=Assets/$upm_DIRECTORY --branch upm
git tag $VERSION upm
git push origin upm --tags