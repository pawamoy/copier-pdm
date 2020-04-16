# Cookie Poetry

<!-- badge list -->
Cookiecutter for Poetry projects.

This cookiecutter is mainly for my own usage,
but feel free to try it out, or fork it!

<!-- logo -->

- [Changelog](CHANGELOG.md)
- [Contributing](CONTRIBUTING.md)
- [Features](#features)
- [License: ISC License](LICENSE)
- [Requirements](#requirements)
- [Usage](#usage)
- [Credits](#credits)

## Features
- [Poetry](https://github.com/sdispater/poetry) setup, with pre-defined `pyproject.toml`
- Documentation built with Sphinx, in Markdown and/or reStructuredText
- Pre-configured tools: black, isort, bandit, safety
- Tests run with pytest (and plugins), with coverage
- Dark theme for coverage HTML report
- Gitlab CI configuration (no Travis CI)
- Python 3.6 or above
- Auto-generated CREDITS.md from Python dependencies
- All licenses from [choosealicense.com](https://choosealicense.com/appendix/)
- Makefile for convenience

### Makefile
- `build`: Build the package wheel and sdist.
- `check`: Run multiple checks.
- `check-bandit`: Check for security warnings in code using bandit.
- `check-black`: Check if code is formatted nicely using black.
- `check-flake8`: Check for general warnings in code using flake8.
- `check-isort`: Check if imports are correctly ordered using isort.
- `check-pylint`: Check for more extensive code-smells with pylint.
- `check-safety`: Check for vulnerabilities in dependencies using safety.
- `check-spelling`: Check spelling in the documentation.
- `clean`: Delete temporary files.
- `clean-tests`: Delete temporary tests files.
- `credits`: Regenerate CREDITS.md.
- `docs`: Build the documentation locally.
- `help`: Print this help.
- `lint`: Run linting tools on the code.
- `lint-black`: Lint the code using black.
- `lint-isort`: Sort the imports using isort.
- `publish`: Publish the latest built version on PyPI.
- `readme`: Regenerate README.md.
- `setup`: Setup the development environment (install dependencies).
- `test`: Run the tests using pytest.
- `update-spelling-wordlist`: Update the spelling word list.

Typically, once the project is generated, you would run:

```
make setup
make readme credits
make check
make test
```

## Requirements
- [git](https://git-scm.com/downloads)
- [python](https://www.python.org/downloads/)
- [cookiecutter](https://github.com/audreyr/cookiecutter)

## Usage
```
cookiecutter gh:pawamoy/cookie-poetry
```

## Credits
This cookiecutter was created with [cookiecutter-cookiecutter](https://github.com/pawamoy/cookiecutter-cookiecutter).
