"""Development tasks."""

import os
from contextlib import contextmanager
from functools import wraps
from pathlib import Path
from shutil import which

import invoke

PY_SRC_PATHS = [Path("src"), Path("tests"), Path("tasks.py")]
PY_SRC_LIST = [str(p) for p in PY_SRC_PATHS]
PY_SRC = " ".join(PY_SRC_LIST)
MAIN_PYTHON = "3.6"
PYTHON_VERSIONS = ["3.6", "3.7", "3.8"]
TESTING = os.environ.get("TESTING", "0") in ("1", "true")
CI = os.environ.get("CI", "0") in ("1", "true")
WINDOWS = os.name == "nt"
PTY = not WINDOWS


def get_poetry_venv(python_version):
    """Return the path to a poetry venv."""
    current_venv = os.environ["VIRTUAL_ENV"]
    if current_venv.endswith(f"py{python_version}"):
        return current_venv
    return "-".join(current_venv.split("-")[:-1]) + f"-py{python_version}"


@contextmanager
def setpath(path):
    """Set the PATH environment variable in a with clause."""
    current_path = os.environ["PATH"]
    os.environ["PATH"] = f"{path}:{current_path}"
    yield
    os.environ["PATH"] = current_path


def _python(versions):
    """Run a task onto multiple Python versions."""
    if not versions:
        return lambda _: _

    if CI:

        def decorator(func):
            @wraps(func)
            def wrapped(context, *args, **kwargs):
                context.python_version = which("python")
                context.skip = False
                func(context, *args, **kwargs)
                del context.python_version

            return wrapped

        return decorator

    if isinstance(versions, str):
        versions = [versions]

    def decorator(func):  # noqa: E0102 (already defined but also returned)
        @wraps(func)
        def wrapped(context, *args, **kwargs):
            for version in versions:
                context.python_version = version
                path = Path(get_poetry_venv(version)) / "bin"
                if not path.exists():
                    context.skip = True
                    func(context, *args, **kwargs)
                else:
                    context.skip = False
                    with setpath(path):
                        func(context, *args, **kwargs)
                del context.python_version
                del context.skip

        return wrapped

    return decorator


invoke.python = _python


@invoke.task
def changelog(context):
    """Update the changelog in-place with latest commits."""
    context.run(
        "failprint -t 'Updating changelog' -- python scripts/update_changelog.py "
        "CHANGELOG.md '<!-- insertion marker -->' '^## \\[v?(?P<version>[^\\]]+)'",
        pty=PTY,
    )


@invoke.task
def check_code_quality(context):
    """Check the code quality."""
    from failprint.cli import run as failprint  # noqa: C0415 (not installed when running invoke directly)

    code = failprint(title="Checking code quality", cmd=["flakehell", "lint", *PY_SRC_LIST])
    context.run("false" if code != 0 else "true")


@invoke.task
def check_dependencies(context):
    """Check for vulnerabilities in dependencies."""
    safety = "safety" if which("safety") else "pipx run safety"
    context.run(
        "poetry export -f requirements.txt --without-hashes |"
        f"failprint --no-pty -t 'Checking dependencies' -- {safety} check --stdin --full-report",
        pty=PTY,
    )


@invoke.task
def check_docs(context):
    """Check if the documentation builds correctly."""
    context.run("failprint -t 'Building documentation' -- mkdocs build -s", pty=PTY)


@invoke.task
@invoke.python(PYTHON_VERSIONS)
def check_types(context):
    """Check that the code is correctly typed."""
    title = f"Type-checking ({context.python_version})"
    command = "mypy --config-file config/mypy.ini " + PY_SRC
    if context.skip:
        title += " (missing interpreter)"
        command = "true"
    context.run(f"failprint -t '{title}' -- {command}", pty=PTY)


@invoke.task(check_code_quality, check_types, check_docs, check_dependencies)
def check(context):  # noqa: W0613 (no use for the context argument)
    """Check it all!"""  # noqa: D400 (exclamation mark is funnier)


@invoke.task
def clean(context):
    """Delete temporary files."""
    context.run("rm -rf .coverage*")
    context.run("rm -rf .mypy_cache")
    context.run("rm -rf .pytest_cache")
    context.run("rm -rf build")
    context.run("rm -rf dist")
    context.run("rm -rf pip-wheel-metadata")
    context.run("rm -rf site")
    context.run("find . -type d -name __pycache__ | xargs rm -rf")
    context.run("find . -name '*.rej' -delete")


@invoke.task
def docs_regen(context):
    """Regenerate some documentation pages."""
    context.run("python scripts/regen_docs.py")


@invoke.task(docs_regen)
def docs(context):
    """Build the documentation locally."""
    context.run("mkdocs build")


@invoke.task(docs_regen)
def docs_serve(context, host="127.0.0.1", port=8000):
    """Serve the documentation (localhost:8000)."""
    context.run(f"mkdocs serve -a {host}:{port}")


@invoke.task(docs_regen)
def docs_deploy(context):
    """Deploy the documentation on GitHub pages."""
    context.run("mkdocs gh-deploy")


@invoke.task
def format(context):  # noqa: W0622 (we don't mind shadowing the format builtin)
    """Run formatting tools on the code."""
    context.run("failprint -t 'Removing unused imports' -- autoflake -ir --remove-all-unused-imports " + PY_SRC)
    context.run("failprint -t 'Ordering imports' -- isort -y -rc " + PY_SRC)
    context.run("failprint -t 'Formatting code' -- black " + PY_SRC)


@invoke.task
def release(context, version):
    """Release a new Python package."""
    context.run(f"failprint -t 'Bumping version in pyproject.toml' -- poetry version {version}")
    context.run("failprint -t 'Staging files' -- git add pyproject.toml CHANGELOG.md")
    context.run(f"failprint -t 'Committing changes' -- git commit -m 'chore: Prepare release {version}'")
    context.run(f"failprint -t 'Tagging commit' -- git tag {version}")
    if not TESTING:
        context.run("failprint -t 'Pushing commits' --no-pty -- git push")
        context.run("failprint -t 'Pushing tags' --no-pty -- git push --tags")
        context.run("failprint -t 'Building dist/wheel' -- poetry build")
        context.run("failprint -t 'Publishing version' -- poetry publish")
        context.run("failprint -t 'Deploying docs' -- poetry run mkdocs gh-deploy")


@invoke.task
def setup(context):
    """Set up the development environments (install dependencies)."""
    if CI:
        context.run("poetry install", pty=PTY)
        return
    for python in PYTHON_VERSIONS:
        message = f"Setting up Python {python} environment"
        print(message + "\n" + "-" * len(message))
        context.run(f"poetry env use {python} >/dev/null")
        opts = "--no-dev --extras tests" if python != MAIN_PYTHON else ""
        context.run(f"poetry install {opts} || true", pty=PTY)
        print()
    context.run("poetry env use system &>/dev/null")


@invoke.task
def combine(context):
    """Combine coverage data from multiple runs."""
    context.run("failprint -t 'Combining coverage data' -- coverage combine --rcfile=config/coverage.ini")


@invoke.task
def coverage(context):
    """Report coverage as text and HTML."""
    context.run("coverage report --rcfile=config/coverage.ini")
    context.run("coverage html --rcfile=config/coverage.ini")


@invoke.task(post=[combine])
@invoke.python(PYTHON_VERSIONS)
def test(context, match=""):
    """Run the test suite."""
    title = f"Running tests ({context.python_version})"
    command = (
        f"coverage run --rcfile=config/coverage.ini -m pytest -c config/pytest.ini -k '{match}' {PY_SRC} 2>/dev/null"
    )
    if context.skip:
        title += " (missing interpreter)"
        command = "true"
    context.run(f"failprint -t '{title}' -- {command}", pty=PTY)
