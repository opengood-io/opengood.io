#!/bin/bash
set -e -x -u

git config --global user.name "${git_user}"
git config --global user.email "${git_email}"

git clone gas-lab-site gas-lab-site-generated

cd source-code

hugo

cp -r public/* ../gas-lab-site-generated

cd ../gas-lab-site-generated

git add .
git commit -m "Publishing automated content update"