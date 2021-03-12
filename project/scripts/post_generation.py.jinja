import os
import shutil


def silence_errors(func):
    def wrapped(*args, **kwargs):
        try:
            func(*args, **kwargs)
        except Exception:
            pass
    return wrapped


@silence_errors
def rm(path):
    os.remove(path)


@silence_errors
def rmdir(path):
    shutil.rmtree(path)


def clean_up_providers():
    provider = "[[ repository_provider ]]"
    if provider == "github.com":
        rm(".gitlab-ci.yml")
    elif provider == "gitlab.com":
        rmdir(".github")


def clean_up_precommit():
    use_precommit = [[ use_precommit ]]
    if not use_precommit:
        rm(".pre-commit-config.yaml")


def delete_myself():
    rm(__file__)


if __name__ == "__main__":
    clean_up_providers()
    clean_up_precommit()
    delete_myself()

    print("Project sucessfully generated!")
    print("Run `make` to show the available actions.")

