# Working on a project

The generated project has this structure:

```
📁 your_project ------------------- # your freshly created project!
├── 📄 CHANGELOG.md --------------- # 
├── 📄 CODE_OF_CONDUCT.md --------- # 
├── 📁 config --------------------- # tools configuration files
│   ├── 📄 coverage.ini ----------- # 
│   ├── 📄 mypy.ini --------------- # 
│   └── 📄 pytest.ini ------------- # 
├── 📄 CONTRIBUTING.md ------------ # 
├── 📄 CREDITS.md ----------------- # 
├── 📁 docs ----------------------- # documentation pages
│   ├── 📄 changelog.md ----------- # 
│   ├── 📄 code_of_conduct.md ----- # 
│   ├── 📄 contributing.md -------- # 
│   ├── 📄 credits.md ------------- # 
│   ├── 📁 css -------------------- # extra CSS files
│   │   └── 📄 mkdocstrings.css --- # 
│   ├── 📄 index.md --------------- # 
│   └── 📁 reference -------------- # code reference pages
│       └── 📄 cli.md ------------- # 
├── 📄 duties.py ------------------ # the project's tasks
├── 📄 LICENSE -------------------- # 
├── 📄 Makefile ------------------- # 
├── 📄 mkdocs.yml ----------------- # docs configuration
├── 📄 pyproject.toml ------------- # project metadata and dependencies
├── 📄 README.md ------------------ # 
├── 📁 scripts -------------------- # helper scripts
│   ├── 📄 multirun.sh ------------ # to run a command in multiple virtualenvs
│   └── 📄 setup.sh --------------- # to install dependencies in multiple virtualenvs
├── 📁 src ------------------------ # the source code directory
│   └── 📁 my_project ------------- # your package
│       ├── 📄 cli.py ------------- # the command line entry point
│       ├── 📄 __init__.py -------- # 
│       └── 📄 __main__.py -------- # 
└── 📁 tests ---------------------- # the tests directory
    ├── 📄 conftest.py ------------ # pytest fixtures, etc.
    ├── 📄 __init__.py ------------ # 
    └── 📄 test_cli.py ------------ # 
```

## Dependencies and virtual environments

## Tasks

### Makefile

The entry-point is the Makefile:

- `make changelog`: Update the changelog in-place with latest commits.
- `make check`: Run all checks.
- `make check-code-quality`: Check the code quality.
- `make check-dependencies`: Check for vulnerabilities in dependencies.
- `make check-docs`: Check if the documentation builds correctly.
- `make check-types`: Check if the code is correctly typed.
- `make clean`: Delete temporary files.
- `make docs`: Build the documentation locally.
- `make docs-regen`: Regenerate some documentation pages.
- `make docs-serve`: Serve the documentation (localhost:8000).
- `make docs-deploy`: Deploy the documentation on GitHub pages.
- `make help`: Print this help.
- `make format`: Run formatting tools on the code.
- `make release`: Create a new release (commit, tag, push, build, publish, deploy docs).
- `make setup`: Setup the development environment (install dependencies).
- `make test`: Run the test suite and report coverage.

## Quality analysis

### check-code-quality

### check-dependencies

### check-docs

### check-types

## Tests

## Continuous Integration

### GitHub Workflow

### GitLab CI

## Documentation

### Writing

### Serving

### Deploying
