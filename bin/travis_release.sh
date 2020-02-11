#!/bin/bash
set -e
set -x

# show all environment variables
env

git config --global user.email "build@travis-ci.com"
git config --global user.name "Travis CI"

echo "Travis branch is: $TRAVIS_BRANCH"
echo "Git tag version is: $GIT_TAG_VERSION"

git checkout $TRAVIS_BRANCH

# add tag
git tag v$GIT_TAG_VERSION -a -m "Tagging version v$GIT_TAG_VERSION"

git push origin $TRAVIS_BRANCH --tags 2>&1
