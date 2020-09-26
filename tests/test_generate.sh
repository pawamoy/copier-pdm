#!/usr/bin/env bash
set -eu
export TESTING=true

template="$(realpath .)"
output=tests/tmp

echo "///////////////////////////////////////////"
echo "             GENERATING PROJECT"
echo "///////////////////////////////////////////"
echo
copier -f "${template}" "${output}" \
  -d project_name="Pawamoy Testing" \
  -d project_description='Testing this great template' \
  -d author_fullname="Timothée Mazzucotelli" \
  -d author_username="pawamoy" \
  -d author_email="pawamoy@pm.me"
cd "${output}"
git init .
git remote add origin https://github.com/pawamoy/pawamoy-testing

echo
echo "///////////////////////////////////////////"
echo "             TESTING PROJECT"
echo "///////////////////////////////////////////"
echo
echo ">>> Creating initial commit (feat)"
git add -A .
git commit -am "feat: Initial commit"
git tag v0.1.0
echo
echo ">>> Setting up Python environments"
make --no-print-directory setup
echo
echo ">>> Running initial quality checks"
make --no-print-directory check
echo
echo ">>> Generating docs, formatting, and re-running quality checks"
make --no-print-directory docs-regen format check
echo
echo ">>> Running tests"
make --no-print-directory test
echo
echo ">>> Creating second commit (fix)"
git commit -am "fix: Fix all bugs"
echo
echo ">>> Updating changelog and releasing version"
poetry run invoke changelog release -v 0.1.1
echo
echo ">>> Checking changelog's contents"
poetry run failprint -- grep 'v0\.1\.0' CHANGELOG.md
poetry run failprint -- grep 'v0\.1\.1' CHANGELOG.md
poetry run failprint -- grep 'Features' CHANGELOG.md
poetry run failprint -- grep 'Bug Fixes' CHANGELOG.md

echo
echo "///////////////////////////////////////////"
echo "             UPDATING PROJECT"
echo "///////////////////////////////////////////"
echo
copier -f update
