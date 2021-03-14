# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [0.3.1](https://github.com/pawamoy/copier-poetry/releases/tag/0.3.1) - 2021-03-14

<small>[Compare with 0.3.0](https://github.com/pawamoy/copier-poetry/compare/0.3.0...0.3.1)</small>

### Code Refactoring
- Stop using flakehell, use wps-light ([228a424](https://github.com/pawamoy/copier-poetry/commit/228a42468ca708afbf3fe999020d6f8de6634e61) by Timothée Mazzucotelli).
- Exclude fixtures from mypy checks ([584d3d8](https://github.com/pawamoy/copier-poetry/commit/584d3d83787500cc50cbfbba1c21fd510e606649) by Timothée Mazzucotelli).


## [0.3.0](https://github.com/pawamoy/copier-poetry/releases/tag/0.3.0) - 2021-03-12

<small>[Compare with 0.2.1](https://github.com/pawamoy/copier-poetry/compare/0.2.1...0.3.0)</small>

### Features
- Add precommit option and cleanup hook ([ba8cfd4](https://github.com/pawamoy/copier-poetry/commit/ba8cfd4959c2e4b7a207c6d388771769318374d4) by Timothée Mazzucotelli).

### Performance Improvements
- Reduce installation time in GitHub CI ([4a2a3b4](https://github.com/pawamoy/copier-poetry/commit/4a2a3b459accdadcafb55f856c1307f5906d1a61) by Timothée Mazzucotelli).

### Bug Fixes
- Stop including README and pyproject.toml in package ([54ea35b](https://github.com/pawamoy/copier-poetry/commit/54ea35b20ddd6112db9f3d312f6f41c142f9258d) by Timothée Mazzucotelli).
- Fix parameter expansion not to override empty `PYTHON_VERSIONS` ([0837d9c](https://github.com/pawamoy/copier-poetry/commit/0837d9c6b0d743b7c46544ae1d851c3c283bc917) by Timothée Mazzucotelli). Related issues/PRs: [#11](https://github.com/pawamoy/copier-poetry/issues/11)
- Fix license file being generated empty ([b5f0fb3](https://github.com/pawamoy/copier-poetry/commit/b5f0fb3210cbe6f91ac4d5fc65e3261613b96126) by Timothée Mazzucotelli). Related issues/PRs: [#8](https://github.com/pawamoy/copier-poetry/issues/8), [#10](https://github.com/pawamoy/copier-poetry/issues/10)
- Use repository provider in mkdocs `site_url` and `repo_url` ([24f57a4](https://github.com/pawamoy/copier-poetry/commit/24f57a4490efec27852dd9eebd5be62182b0ba51) by WhatTheServer).

### Code Refactoring
- Make templated badges more readable ([4d3922d](https://github.com/pawamoy/copier-poetry/commit/4d3922d2e3179f97de87a8aaad4c71e6e970ed97) by Timothée Mazzucotelli).
- Drop bitbucket support ([9ac3b03](https://github.com/pawamoy/copier-poetry/commit/9ac3b03fb9c3ea00285cc495142fe6e5a76cec52) by Timothée Mazzucotelli).
- Rework test coverage combining ([10a1410](https://github.com/pawamoy/copier-poetry/commit/10a1410643101db94271d48c26bb090b7c149bd6) by Timothée Mazzucotelli).
- Set `site_dir` in mkdocs.yml accordingly to chosen provider ([452b6b7](https://github.com/pawamoy/copier-poetry/commit/452b6b723fbe35694d349eaf98789c2e7add490b) by WhatTheServer). Related issues/PRs: [#12](https://github.com/pawamoy/copier-poetry/issues/12)
- Various tweaks and improvements ([56e4973](https://github.com/pawamoy/copier-poetry/commit/56e49738a7b56c680f179157d1e93d8fd5dfe085) by WhatTheServer).


## [0.2.1](https://github.com/pawamoy/copier-poetry/releases/tag/0.2.1) - 2021-02-11

<small>[Compare with 0.2.0](https://github.com/pawamoy/copier-poetry/compare/0.2.0...0.2.1)</small>

### Performance Improvements
- Don't query pypi.org to get missing packages info ([ac6fe27](https://github.com/pawamoy/copier-poetry/commit/ac6fe278d7a74babf7db9a35c9c2991b2006590d) by Timothée Mazzucotelli).


## [0.2.0](https://github.com/pawamoy/copier-poetry/releases/tag/0.2.0) - 2021-02-10

<small>[Compare with 0.1.13](https://github.com/pawamoy/copier-poetry/compare/0.1.13...0.2.0)</small>

### Code Refactoring
- Remove ipython dev-dependency ([ee02d95](https://github.com/pawamoy/copier-poetry/commit/ee02d9541b760a0189d3be7d396ee542c4bd7346) by Timothée Mazzucotelli).
- Reorganize docs navigation ([12213ab](https://github.com/pawamoy/copier-poetry/commit/12213ab77c4c4d3f1d9f771b9e8df769d26e6aa8) by Timothée Mazzucotelli).
- Use `pymdownx.snippets` instead of `markdown_include` ([2c07518](https://github.com/pawamoy/copier-poetry/commit/2c07518ca2c7d0503d308c1ebcd9e32e00473e35) by Timothée Mazzucotelli).

### Features
- Generate credits when building docs ([db79bd8](https://github.com/pawamoy/copier-poetry/commit/db79bd82ce68400002e313bf04ffa2ec62d20f26) by Timothée Mazzucotelli).
- Integrate coverage html report into docs ([d450918](https://github.com/pawamoy/copier-poetry/commit/d450918fab2fae3c4a1abef2d1e94a835b7c43f9) by Timothée Mazzucotelli).


## [0.1.13](https://github.com/pawamoy/copier-poetry/releases/tag/0.1.13) - 2021-02-03

<small>[Compare with 0.1.12](https://github.com/pawamoy/copier-poetry/compare/0.1.12...0.1.13)</small>

### Bug Fixes
- Don't autoescape when updating changelog ([2b63c22](https://github.com/pawamoy/copier-poetry/commit/2b63c222db7bea953bf8394434bd5931f7b5eda4) by Timothée Mazzucotelli).


## [0.1.12](https://github.com/pawamoy/copier-poetry/releases/tag/0.1.12) - 2021-02-03

<small>[Compare with 0.1.11](https://github.com/pawamoy/copier-poetry/compare/0.1.11...0.1.12)</small>

### Bug Fixes
- Fix path in coverage config ([e195a5b](https://github.com/pawamoy/copier-poetry/commit/e195a5b0a5d1c47b8ff5e4c02daaf648200c556d) by Timothée Mazzucotelli).

### Code Refactoring
- Reallow failure for docs on python 3.9 ([56626c1](https://github.com/pawamoy/copier-poetry/commit/56626c1290906827ba927ff7ceb33e6a2f169438) by Timothée Mazzucotelli).


## [0.1.11](https://github.com/pawamoy/copier-poetry/releases/tag/0.1.11) - 2021-01-06

<small>[Compare with 0.1.10](https://github.com/pawamoy/copier-poetry/compare/0.1.10...0.1.11)</small>

### Code Refactoring
- Update mkdocstrings dependency ([011b8fd](https://github.com/pawamoy/copier-poetry/commit/011b8fd083e0e46eb28760ac411b66e878d1e0fe) by Timothée Mazzucotelli).


## [0.1.10](https://github.com/pawamoy/copier-poetry/releases/tag/0.1.10) - 2020-12-06

<small>[Compare with 0.1.9](https://github.com/pawamoy/copier-poetry/compare/0.1.9...0.1.10)</small>

### Bug Fixes
- Fix ci cache key names ([a22266c](https://github.com/pawamoy/copier-poetry/commit/a22266ccb08706e1c4fb34de92e66ff502852743) by Timothée Mazzucotelli).

### Code Refactoring
- Allow check-docs failure on python 3.9 ([33bebf9](https://github.com/pawamoy/copier-poetry/commit/33bebf984ebc3821575a5c5ee27908852cc755aa) by Timothée Mazzucotelli).


## [0.1.9](https://github.com/pawamoy/copier-poetry/releases/tag/0.1.9) - 2020-11-18

<small>[Compare with 0.1.8](https://github.com/pawamoy/copier-poetry/compare/0.1.8...0.1.9)</small>

### Bug Fixes
- Fix ci detection and pty usage ([20512fe](https://github.com/pawamoy/copier-poetry/commit/20512fea7cc4b680ea3d5a6062b5b7826032fad7) by Timothée Mazzucotelli).


## [0.1.8](https://github.com/pawamoy/copier-poetry/releases/tag/0.1.8) and below - 2020-11-11

<small>[Compare with first commit](https://github.com/pawamoy/copier-poetry/compare/ad5932b04cecfcc6e6d1311f10082289cbc6ed76...0.1.8)</small>

Exploring templating abilities!