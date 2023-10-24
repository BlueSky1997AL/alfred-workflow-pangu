#!/bin/bash

set -e

NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

nvm use

npm install
npm run build
npm run pack

cp info.plist dist
cp -a assets/. dist

cd dist
rm -rvf ./index.js
zip pangu.alfredworkflow *

echo "Build complete!"
