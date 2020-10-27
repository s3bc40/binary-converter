#! /usr/bin/env sh

# abort on errors
set -e

# build
echo "Deployment..."
npm run build

# copy dist dir into doc for githubpages
cp -r dist docs

echo "Push prod app to GithubPages..."
git add .
git commit -m 'Deploy app to GihubPages'
git push origin main

cd -

echo "App deployed!!!"