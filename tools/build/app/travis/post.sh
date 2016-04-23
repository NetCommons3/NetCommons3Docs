#!/bin/bash -ex

cd $NETCOMMONS_BUILD_DIR
if [ "$TRAVIS_BRANCH" == "master" ]; then
  git pull
  [ $GH_TOKEN ] && git push --quiet https://$GH_TOKEN@github.com/$NETCOMMONS3DOCS.git gh-pages
fi
