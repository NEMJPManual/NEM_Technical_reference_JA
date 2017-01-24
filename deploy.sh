#!/usr/bin/env bash
set -u
readonly PROGNAME=${0##*/}

abort () {
    echo "$@" 1>&2
    exit 1
}


REVISION=$(git rev-parse --short HEAD)

GH_TOKEN=$GH_TOKEN_FOR_NEM_TECHREF
# if you want to use custom domain.
# echo > CNAME

cd _book
git init

git config --global user.email "joemphilips@gmail.com"
git config --global user.name "joemphilips"

git add .

# commit only if there is something to.
set +e
ret=$(git status | grep -q 'nothing to commit'; echo $?)
set -e

if [ $ret -eq 0 ]; then
    echo "Noting to push to gh-pages."
else
    git commit -m "ci: publish pages at ${REVISION}"
    echo "pushing to gh-pages."
    git remote add origin "https://joemphilips:${GH_TOKEN}@github.com/NEMJPManual/NEM_Technical_reference_JA"
    git push -f origin master:gh-pages
fi
