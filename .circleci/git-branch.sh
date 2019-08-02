#!/bin/sh

set -o nounset
set -o errexit
set -o xtrace

git checkout --track origin/upm
git checkout master
git subtree split --prefix=Assets/$UPM_DIRECTORY --branch upm

echo $VERSION
echo v$VERSION

git tag v$VERSION upm
git push origin upm --tags