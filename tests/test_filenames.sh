#!/usr/bin/env bash
set -eu

filenames_with_double_quotes="$(find . -type f | grep '"' || true)"
if [ -n "${filenames_with_double_quotes}" ]; then
  echo "Double-quotes are not valid characters on Windows" >&2
  echo "Found in the following file names:" >&2
  echo "${filenames_with_double_quotes}" >&2
  exit 1
fi
