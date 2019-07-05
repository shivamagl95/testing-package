#!/bin/bash
branch=`git rev-parse --abbrev-ref HEAD`
echo ${branch}
if [[ "${branch}" == "master" ]]
then
npm run release 
git push --follow-tags origin ${branch}
fi

if [[ "${branch}" == "testing" ]] 
then
npm run release -- --prerelease beta
git push --follow-tags origin ${branch}
fi
