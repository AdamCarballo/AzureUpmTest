#!/bin/sh

set -o nounset
set -o errexit
set -o xtrace

git checkout --track origin/upm
git subtree split --prefix=Assets/$UPM_DIRECTORY --branch upm
git tag $VERSION upm
git push origin upm --tags