#!/bin/sh

set -o nounset
set -o errexit
set -o xtrace

git checkout --track origin/upm
git checkout master
git subtree split --prefix=Assets/$UPM_DIRECTORY --branch upm

echo $VERSION

git tag v2.0.0 upm
git tag $VERSION upm
git push origin upm --tags