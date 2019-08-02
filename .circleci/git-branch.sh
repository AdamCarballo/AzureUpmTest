#!/bin/sh

set -o nounset
set -o errexit
set -o xtrace

git checkout --track origin/upm
git checkout master
git subtree split --prefix=Assets/$UPM_DIRECTORY --branch upm

echo $VERSION

TRIMMED_VERSION="v$(echo "${VERSION}" | tr -d '[:space:]')"
echo $TRIMMED_VERSION

git tag $TRIMMED_VERSION upm
git push origin upm --tags