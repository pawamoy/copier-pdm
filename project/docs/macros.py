import asyncio
import os
import re
from itertools import chain
from pathlib import Path
from shutil import which
from typing import List, Optional, Pattern

import httpx
import toml
from duty import duty
from git_changelog.build import Changelog, Version
from jinja2 import StrictUndefined
from jinja2.sandbox import SandboxedEnvironment
from pip._internal.commands.show import search_packages_info  # noqa: WPS436 (no other way?)


def get_credits_data() -> dict:
    """
    Return data used to generate the credits file.

    Returns:
        Data required to render the credits template.
    """
    project_dir = Path(__file__).parent.parent
    metadata = toml.load(project_dir / "pyproject.toml")["tool"]["poetry"]
    lock_data = toml.load(project_dir / "poetry.lock")
    project_name = metadata["name"]

    poetry_dependencies = chain(metadata["dependencies"].keys(), metadata["dev-dependencies"].keys())
    direct_dependencies = {dep.lower() for dep in poetry_dependencies}
    direct_dependencies.remove("python")
    indirect_dependencies = {pkg["name"].lower() for pkg in lock_data["package"]}
    indirect_dependencies -= direct_dependencies
    dependencies = direct_dependencies | indirect_dependencies

    packages = {}
    for pkg in search_packages_info(dependencies):
        pkg = {_: pkg[_] for _ in ("name", "home-page")}
        packages[pkg["name"].lower()] = pkg

    loop = asyncio.get_event_loop()
    client = httpx.AsyncClient()
    to_get = [dep for dep in dependencies if dep not in packages]
    coroutines = [client.get(f"https://pypi.python.org/pypi/{dep}/json") for dep in to_get]
    responses = loop.run_until_complete(asyncio.gather(*coroutines))
    loop.run_until_complete(client.aclose())

    for response in responses:
        pkg_data = response.json()["info"]
        home_page = pkg_data["home_page"] or pkg_data["project_url"] or pkg_data["package_url"]
        pkg_name = pkg_data["name"]
        package = {"name": pkg_name, "home-page": home_page}
        packages.update({pkg_name.lower(): package})

    return {
        "project_name": project_name,
        "direct_dependencies": sorted(direct_dependencies),
        "indirect_dependencies": sorted(indirect_dependencies),
        "package_info": packages,
    }


def define_env(env):
    @env.macro
    def credits():
        template_url = "https://raw.githubusercontent.com/pawamoy/jinja-templates/master/credits.md"
        env = SandboxedEnvironment(undefined=StrictUndefined)
        template_data = get_credits_data()
        template_text = httpx.get(template_url).text
        rendered = env.from_string(template_text).render(**template_data)
        return rendered
