#!/bin/bash -ex

WORKSPACE=$TRAVIS_BUILD_DIR

sudo apt-get install graphviz
mkdir -p build/logs
phpenv rehash
set +H

export GIT_COMMITTER_NAME=s-nakajima
export GIT_COMMITTER_EMAIL=nakajimashouhei@gmail.com
export GIT_AUTHOR_NAME=s-nakajima
export GIT_AUTHOR_EMAIL=nakajimashouhei@gmail.com

composer update
export PATH=$PATH:$TRAVIS_BUILD_DIR/vendors/bin

git clone -b gh-pages git://github.com/$NETCOMMONS3DOCS $NETCOMMONS_BUILD_DIR
cd $NETCOMMONS_BUILD_DIR
