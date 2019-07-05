#!/bin/bash
branch=`git rev-parse --abbrev-ref HEAD`
if [[ "${branch}" == "master" ]]
then
npm run release 
git push --follow-tags origin $branch
fi

if [[ "${branch}" == "develop" ]] 
then
npm run release -- --prerelease beta
git push --follow-tags origin $branch
fi
