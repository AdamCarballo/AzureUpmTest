#!/bin/sh

set -o nounset
set -o errexit
set -o xtrace

# Fix VERSION variable and add V prefix
TRIMMED_VERSION="v$(echo "${VERSION}" | tr -d '[:space:]')"

# Checkout upm
git checkout --track origin/upm
# Go back to master
git checkout master
# Split master by the directory and commit to upm
git subtree split --prefix=Assets/$UPM_DIRECTORY --branch upm
# Tag the last upm commit
git tag $TRIMMED_VERSION upm
# Push to upm with tag
git push origin upm --tags