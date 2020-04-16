from {{ cookiecutter.python_package_import_name }} import cli


def test_main():
    assert cli.main([]) == 0
