#!/usr/bin/env bash
for test_file in tests/test_*.sh; do
    bash "${test_file}"
done
