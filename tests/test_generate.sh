#!/usr/bin/env bash
set -eu
export TESTING=true

output=tests/tmp

echo "///////////////////////////////////////////"
echo "             TAGGING TEMPLATE COPY"
echo "///////////////////////////////////////////"
echo
template=$(mktemp -d)
cp -rf . "${template}"
(
  cd "${template}" || exit 1
  git add . -A || true
  git commit -m "test" || true
  git tag 99.99.99
)
echo "Template copy located at ${template}"

echo
echo "///////////////////////////////////////////"
echo "             GENERATING PROJECT"
echo "///////////////////////////////////////////"
echo
copier -f "${template}" "${output}" \
  -d project_name="Pawamoy Testing" \
  -d project_description='Testing this great template' \
  -d author_fullname="Timothee Mazzucotelli" \
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
echo ">>> Formatting, and re-running quality checks"
make --no-print-directory format check-code-quality
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

echo
echo "///////////////////////////////////////////"
echo "             CLEANUP"
echo "///////////////////////////////////////////"
echo
echo ">>> Removing ${template}"
rm -rf "${template}"
