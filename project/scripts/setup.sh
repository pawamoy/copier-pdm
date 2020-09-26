#!/usr/bin/env bash
if ! command -v poetry &>/dev/null; then
    if ! command -v pipx &>/dev/null; then
        python -m pip install --user pipx
    fi
    pipx install poetry
fi
if [ -n "${PYTHON_VERSIONS}" ]; then
    for python_version in ${PYTHON_VERSIONS}; do
        if output=$(poetry env use "${python_version}" 2>&1); then
            if echo "${output}" | grep -q ^Creating; then
                echo "> Created environment for Python ${python_version}"
            else
                echo "> Using Python ${python_version} environment"
            fi
            poetry install
        else
            echo "> poetry env use ${python_version}: Python version not available?" >&2
        fi
    done
else
    poetry install
fi