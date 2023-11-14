#!/usr/bin/env bash
set -eu

. tests/helpers.sh

output=tests/tmp

echo
echo "///////////////////////////////////////////"
echo "             GENERATING PROJECT"
echo "///////////////////////////////////////////"
echo
generate "${PWD}" "${output}"
cd "${output}"
cat .copier-answers.yml
git init .
git remote add origin https://github.com/pawamoy/pawamoy-testing

echo
echo "///////////////////////////////////////////"
echo "             TESTING PROJECT"
echo "///////////////////////////////////////////"
echo
echo ">>> Creating initial commit (feat)"
python <<EOF
import re
with open(".copier-answers.yml") as file:
    answers = file.read()
with open(".copier-answers.yml", "w") as file:
    file.write(re.sub(r"(_commit: [^-]+)-.*", r"\1", answers))
EOF
cat .copier-answers.yml
git add -A .
git commit -am "feat: Initial commit"
git tag v0.1.0
echo
if [ -z "${SKIP_SETUP:-}" ]; then
    echo ">>> Setting up Python environments"
    make --no-print-directory setup
    echo
fi
echo ">>> Running initial quality checks"
make --no-print-directory check
echo
echo ">>> Formatting, and re-running quality checks"
make --no-print-directory format check-quality
echo
echo ">>> Running tests"
make --no-print-directory test
echo
echo ">>> Creating second commit (fix)"
touch empty
git add empty
git commit -m "fix: Fix all bugs"
echo
echo ">>> Updating changelog and releasing version"
make --no-print-directory changelog release version=0.1.1
echo
echo ">>> Checking changelog's contents"
pdm run failprint -- grep 'v0\.1\.0' CHANGELOG.md
pdm run failprint -- grep 'v0\.1\.1' CHANGELOG.md
pdm run failprint -- grep 'Features' CHANGELOG.md
pdm run failprint -- grep 'Bug Fixes' CHANGELOG.md

echo
echo "///////////////////////////////////////////"
echo "             UPDATING PROJECT"
echo "///////////////////////////////////////////"
echo
copier update -f --trust
