#!/bin/bash
set -e

git config --global user.email "build@travis-ci.com"
git config --global user.name "Travis CI"

git checkout $TRAVIS_BRANCH

# add compiled binary as release
git add prog
git commit -m "Setting version to $GIT_TAG_VERSION"
git tag v$GIT_TAG_VERSION -a -m "Tagging version v$GIT_TAG_VERSION"

git push origin $TRAVIS_BRANCH --tags 2>&1
