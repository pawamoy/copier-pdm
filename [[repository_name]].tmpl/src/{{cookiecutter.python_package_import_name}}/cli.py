"""
Module that contains the command line application.

Why does this file exist, and why not put this in __main__?

You might be tempted to import things from __main__ later,
but that will cause problems: the code will get executed twice:

- When you run `python -m {{ cookiecutter.python_package_import_name }}` python will execute
  ``__main__.py`` as a script. That means there won't be any
  ``{{ cookiecutter.python_package_import_name }}.__main__`` in ``sys.modules``.
- When you import __main__ it will get executed again (as a module) because
  there's no ``{{ cookiecutter.python_package_import_name }}.__main__`` in ``sys.modules``.

Also see http://click.pocoo.org/5/setuptools/#setuptools-integration.
"""

import argparse


def main(args=None):
    """The main function, which is executed when you type ``{{ cookiecutter.python_package_import_name }}`` or ``python -m {{ cookiecutter.python_package_import_name }}``."""
    parser = get_parser()
    args = parser.parse_args(args=args)

    return 0


def get_parser():
    return argparse.ArgumentParser(prog="{{ cookiecutter.python_package_command_line_name }}")
