#!/usr/bin/env bash
set -e
for test_file in tests/test_*.sh; do
    bash "${test_file}"
done
