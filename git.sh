#!/bin/bash

cd $(dirname $0)
find . -name "*.rpm" -o -name "*.deb" |sort >README.txt

git add .
git commit -S -m "$(date "+%Y-%m-%d %H:%M:%S")"
git push -u origin master
