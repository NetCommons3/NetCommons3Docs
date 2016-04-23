#!/bin/bash -ex

# Clear previous build
rm -rf $APP

cd -

# Install all plugins
git clone $CLASS_DOC_SOURCE_URI $CLASS_DOC_SOURCE_ROOT
cd $CLASS_DOC_SOURCE_ROOT
cp composer.json .
composer update --prefer-dist

plugins=""
dev="--dev "
for plugin in `cat ${APP_ROOT}/Plugin/Install/vendors.txt`
do
  plugins="${plugins} ${plugin}"
done
echo "composer require ${dev}${plugins}"
composer require ${dev}${plugins}
