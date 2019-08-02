#!/bin/sh

set -o nounset
set -o errexit
set -o xtrace

git checkout --track origin/upm
git checkout master
git subtree split --prefix=Assets/$UPM_DIRECTORY --branch upm

echo $VERSION
echo v$VERSION

git checkout upm
git tag v$VERSION
git push origin upm --tags