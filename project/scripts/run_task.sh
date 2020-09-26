#!/usr/bin/env bash
if [ -n "${PYTHON_VERSIONS}" ]; then
    for python_version in ${PYTHON_VERSIONS}; do
        if output=$(poetry env use "${python_version}" 2>&1); then
            if echo "${output}" | grep -q ^Creating; then
                echo "> Environment for Python ${python_version} not created, skipping" >&2
                poetry env remove "${python_version}" &>/dev/null
            else
                echo "> Using Python ${python_version} environment"
                "$@"
            fi
        else
            echo "> poetry env use ${python_version}: Python version not available?" >&2
        fi
    done
else
    "$@"
fi