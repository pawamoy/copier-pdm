#!/usr/bin/env bash
cd tests/tmp || exit 1
rm -rf .git
git init .
git remote add origin git@github.com:sl-smith/sl-smith-testing
git add -A
git commit -m "initial commit"
git push origin master -f
