#!/bin/bash
set -e -x -u

git config --global user.name "${git_user}"
git config --global user.email "${git_email}"

git clone web-site web-site-generated

cd source-code
hugo
cp -r public/* ../web-site-generated
cp CNAME ../web-site-generated
cd ../web-site-generated

git add .
git commit -m "Publishing automated content update"