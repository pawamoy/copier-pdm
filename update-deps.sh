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
git add . -A
git commit -m "Initial commit"

echo
echo "///////////////////////////////////////////"
echo "             UPDATING DEPENDENCIES"
echo "///////////////////////////////////////////"
echo
poetry run pip install tomlkit
poetry run python <<EOF
import subprocess
from copy import deepcopy

from tomlkit import parse, dumps, inline_table
from tomlkit.items import String

# load original deps
with open("pyproject.toml") as fd:
    pyproject = parse(fd.read())

# remove them from the file
tmp_pyproject = deepcopy(pyproject)
tmp_poetry = tmp_pyproject["tool"]["poetry"]
tmp_poetry["dependencies"] = {"python": tmp_poetry["dependencies"]["python"]}
tmp_poetry["dev-dependencies"] = {}
with open("pyproject.toml", "w") as fd:
    fd.write(dumps(tmp_pyproject))

# re-add them all one by one
add_cmd = ["poetry", "add"]
poetry = pyproject["tool"]["poetry"]
deps = poetry["dependencies"]
dev_deps = poetry["dev-dependencies"]

for dep_name, dep_data in deps.items():
    if dep_name == "python":
        continue
    opts = [dep_name]
    if isinstance(dep_data, dict):
        if dep_data.get("optional"):
            opts.append("--optional")
        if dep_data.get("extras"):
            opts.extend(["-E", ",".join(dep_data["extras"])])
    subprocess.run(add_cmd + opts)

for dep_name, dep_data in dev_deps.items():
    opts = ["-D", dep_name]
    if isinstance(dep_data, dict):
        if dep_data.get("extras"):
            opts.extend(["-E", ",".join(dep_data["extras"])])
    subprocess.run(add_cmd + opts)

# load data again and inject it back into original
with open("pyproject.toml") as fd:
    new_pyproject = parse(fd.read())

new_poetry = new_pyproject["tool"]["poetry"]
poetry["dependencies"].update(new_poetry["dependencies"])
poetry["dev-dependencies"].update(new_poetry["dev-dependencies"])

for key, value in poetry["dependencies"].items():
    if not isinstance(value, String):
        inline = inline_table()
        inline.update(value)
        poetry["dependencies"][key] = inline

for key, value in poetry["dev-dependencies"].items():
    if not isinstance(value, String):
        inline = inline_table()
        inline.update(value)
        poetry["dev-dependencies"][key] = inline

# re-write pyproject.toml
with open("pyproject.toml", "w") as fd:
    fd.write(dumps(pyproject))
EOF
git diff