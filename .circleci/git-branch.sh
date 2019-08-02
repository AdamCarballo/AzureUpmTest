#!/bin/sh

set -o nounset
set -o errexit
set -o xtrace

git checkout --track origin/upm
git checkout master
git subtree split --prefix=Assets/$UPM_DIRECTORY --branch upm

echo $VERSION
echo v$VERSION
echo $UPM_DIRECTORY

TRIMMED_VERSION="$(echo -e "${VERSION}" | tr -d '[:space:]')"
echo $TRIMMED_VERSION

git checkout upm
git tag $TRIMMED_VERSION
git push origin upm --tags