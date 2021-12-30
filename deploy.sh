#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

git checkout --orphan gh-pages
git rm -rf .
mv dist/* . &&  rmdir dist/
git add assets/ favicon.ico index.html
git commit -m 'deploy' --no-verify.
# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:tenzint/vite-clock.git master:gh-pages

cd -