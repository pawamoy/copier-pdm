#!/usr/bin/env bash
set -eu

template="$(realpath .)"
output=tests/tmp

echo "///////////////////////////////////////////"
echo "             GENERATING PROJECT"
echo "///////////////////////////////////////////"
echo

copier -f "${template}" "${output}" \
  -d project_name="My Project" \
  -d project_description='Testing this great template' \
  -d author_fullname="Timothée Mazzucotelli" \
  -d author_username="pawamoy" \
  -d author_email="pawamoy@pm.me"

echo
echo "///////////////////////////////////////////"
echo "             UPDATING PROJECT"
echo "///////////////////////////////////////////"
echo
cd "${output}"
copier -f update
