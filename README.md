# Copier PDM

Copier template for Python projects managed by PDM.

This copier template is mainly for my own usage,
but feel free to try it out, or fork it!

Also checkout [copier-poetry](https://github.com/pawamoy/copier-poetry),
which is the same template
but with [Poetry](https://github.com/python-poetry/poetry) instead of PDM.

## Features

- [PDM](https://github.com/pdm-project/pdm) setup, with pre-defined `pyproject.toml`
- Documentation built with [MkDocs](https://github.com/mkdocs/mkdocs)
  ([Material theme](https://github.com/squidfunk/mkdocs-material)
  and "autodoc" [mkdocstrings plugin](https://github.com/pawamoy/mkdocstrings))
- Pre-configured tools for code formatting, quality analysis and testing:
    - [black](https://github.com/psf/black),
    - [flake8](https://gitlab.com/pycqa/flake8) and plugins,
    - [isort](https://github.com/timothycrosley/isort),
    - [mypy](https://github.com/python/mypy),
    - [safety](https://github.com/pyupio/safety)
- Tests run with [pytest](https://github.com/pytest-dev/pytest) and plugins, with [coverage](https://github.com/nedbat/coveragepy) support
- Cross-platform tasks with [duty](https://github.com/pawamoy/duty)
- Support for GitHub workflow and Gitlab CI
- Python 3.6 or above
- Auto-generated `CHANGELOG.md` from git commits (using Angular message style)
- Auto-generated `CREDITS.md` from Python dependencies
- All licenses from [choosealicense.com](https://choosealicense.com/appendix/)
- Makefile for convenience

## Quick setup and usage

:warning: You need PDM version 1.5.0b1 for this template to work.

Make sure all the
[requirements](https://pawamoy.github.io/copier-pdm/requirements)
are met, then:

```bash
copier "https://github.com/pawamoy/copier-pdm.git" /path/to/your/new/project
```

Or even shorter:

```bash
copier "gh:pawamoy/copier-pdm" /path/to/your/new/project
```

See the [documentation](https://pawamoy.github.io/copier-pdm)
for more details.
