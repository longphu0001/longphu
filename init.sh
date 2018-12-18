#!/bin/bash

source "../sh/nodejs.sh"

export PATH="$(dirname "$PWD")/$NODEJS/bin:$PATH"

if [ ! -f "package.json" ]; then
    echo "========================================"
    yarn init
fi

echo "========================================"
echo "Installing all the dependencies of project"
yarn

# echo "========================================"
# echo "Get Package Dev :"
# yarn add -D webpack webpack-cli @webpack-cli/init
# yarn add -D html-webpack-plugin
# yarn add -D pug pug-loader pug-html-loader html-loader
# yarn add -D css-loader style-loader sass-loader node-sass
# yarn add -D extract-text-webpack-plugin
# yarn add -D uglifyjs-webpack-plugin
# yarn add -D webpack-bundle-analyzer webpack-lighthouse-plugin


export PATH="$PWD/node_modules/.bin:$PATH"