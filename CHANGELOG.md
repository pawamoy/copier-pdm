# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [0.9.6](https://github.com/pawamoy/copier-pdm/releases/tag/0.9.6) - 2022-03-07

<small>[Compare with 0.9.5](https://github.com/pawamoy/copier-pdm/compare/0.9.5...0.9.6)</small>

### Bug Fixes
- Fix setup script for first time use ([7ab9adc](https://github.com/pawamoy/copier-pdm/commit/7ab9adc28d275ef57674ac948ea6595e3c172edb) by Timothée Mazzucotelli).

### Code Refactoring
- Improve packaging issues detection ([529e2fe](https://github.com/pawamoy/copier-pdm/commit/529e2fee0328f1b241451a0fa024636e9c297978) by Timothée Mazzucotelli).
- Remove useless docs reference folder ([a60e13b](https://github.com/pawamoy/copier-pdm/commit/a60e13b1f8613237f4aad8e7f026817755aa321f) by Timothée Mazzucotelli).


## [0.9.5](https://github.com/pawamoy/copier-pdm/releases/tag/0.9.5) - 2022-02-26

<small>[Compare with 0.9.4](https://github.com/pawamoy/copier-pdm/compare/0.9.4...0.9.5)</small>

### Code Refactoring
- Remove pyenv docs from readme ([cfa07b1](https://github.com/pawamoy/copier-pdm/commit/cfa07b13a79138fc816a72711133cdab03a94f2c) by Timothée Mazzucotelli).


## [0.9.4](https://github.com/pawamoy/copier-pdm/releases/tag/0.9.4) - 2022-02-19

<small>[Compare with 0.9.3](https://github.com/pawamoy/copier-pdm/compare/0.9.3...0.9.4)</small>

### Code Refactoring
- Update contributing docs ([d2767d7](https://github.com/pawamoy/copier-pdm/commit/d2767d73e6ce533aec2b4b02dfd403812a991fa7) by Timothée Mazzucotelli).


## [0.9.3](https://github.com/pawamoy/copier-pdm/releases/tag/0.9.3) - 2022-02-19

<small>[Compare with 0.9.2](https://github.com/pawamoy/copier-pdm/compare/0.9.2...0.9.3)</small>

### Bug Fixes
- Fix (really) PyPI badge ([d7dc73f](https://github.com/pawamoy/copier-pdm/commit/d7dc73fb6cdba9d886ec8e72b247a43d7265c102) by Timothée Mazzucotelli).

### Code Refactoring
- Also save and restore interpreter in setup script ([c7887a7](https://github.com/pawamoy/copier-pdm/commit/c7887a7fc4fbcb61f6e6d56301f9cba8defabee0) by Timothée Mazzucotelli).


## [0.9.2](https://github.com/pawamoy/copier-pdm/releases/tag/0.9.2) - 2022-02-19

<small>[Compare with 0.9.1](https://github.com/pawamoy/copier-pdm/compare/0.9.1...0.9.2)</small>

### Code Refactoring
- Upgrade setup-pdm action to 2.6 ([129aa62](https://github.com/pawamoy/copier-pdm/commit/129aa62da2bba267a320cc3c88500cabf154fafa) by Timothée Mazzucotelli).


## [0.9.1](https://github.com/pawamoy/copier-pdm/releases/tag/0.9.1) - 2022-02-18

<small>[Compare with 0.9.0](https://github.com/pawamoy/copier-pdm/compare/0.9.0...0.9.1)</small>

### Bug Fixes
- Fix docs tabs and pypi badge ([d7b0f3a](https://github.com/pawamoy/copier-pdm/commit/d7b0f3aba49a7c6f2807e56b9804d680e286edf6) by Timothée Mazzucotelli).
- Fix jinja "undefined" error when user is not "pawamoy" ([01dcf3b](https://github.com/pawamoy/copier-pdm/commit/01dcf3b3f32f38e77e48c20a8c21e66c6674fed5) by Francisco Perez-Sorrosal). [Issue #17](https://github.com/pawamoy/copier-pdm/issues/17), [PR #18](https://github.com/pawamoy/copier-pdm/issues/18)


## [0.9.0](https://github.com/pawamoy/copier-pdm/releases/tag/0.9.0) - 2022-02-04

<small>[Compare with 0.8.0](https://github.com/pawamoy/copier-pdm/compare/0.8.0...0.9.0)</small>

### Features
- Restore the pdm-selected python interpreter after a multi-run ([d664759](https://github.com/pawamoy/copier-pdm/commit/d664759ac02d781dbb06fb7cab152ce617d22a28) by Timothée Mazzucotelli).

### Bug Fixes
- Add missing section-index plugin in mkdocs.yml ([611e99b](https://github.com/pawamoy/copier-pdm/commit/611e99b5398b0369d8517155eba252d9f72bc462) by Timothée Mazzucotelli).

### Code Refactoring
- Use section index to improve reference navigation ([2ec50a4](https://github.com/pawamoy/copier-pdm/commit/2ec50a45ff2211ccbc19f5b2c4e283540e5499ea) by Timothée Mazzucotelli).
- Remove useless markers ([ceb534b](https://github.com/pawamoy/copier-pdm/commit/ceb534be820abe223db8734ab710d2f31f2f897a) by Timothée Mazzucotelli).


## [0.8.0](https://github.com/pawamoy/copier-pdm/releases/tag/0.8.0) - 2021-12-18

<small>[Compare with 0.7.3](https://github.com/pawamoy/copier-pdm/compare/0.7.3...0.8.0)</small>

### Features
- Support Copier v6 (while keeping support for v5) ([918bc1a](https://github.com/pawamoy/copier-pdm/commit/918bc1a4429e76ccf79077f8633d58c3c3519660) by Timothée Mazzucotelli).

### Code Refactoring
- Drop support for Python 3.6 ([d248116](https://github.com/pawamoy/copier-pdm/commit/d248116eabbf662502251beb7660994ba052585d) by Timothée Mazzucotelli).


## [0.7.3](https://github.com/pawamoy/copier-pdm/releases/tag/0.7.3) - 2021-12-16

<small>[Compare with 0.7.2](https://github.com/pawamoy/copier-pdm/compare/0.7.2...0.7.3)</small>

### Code Refactoring
- Make mypy show error codes ([e7d4522](https://github.com/pawamoy/copier-pdm/commit/e7d4522dbd8b9b2292ba4e60ff106527ce96ee20) by Timothée Mazzucotelli).


## [0.7.2](https://github.com/pawamoy/copier-pdm/releases/tag/0.7.2) - 2021-12-16

<small>[Compare with 0.7.1](https://github.com/pawamoy/copier-pdm/compare/0.7.1...0.7.2)</small>

### Code Refactoring
- Output build sections in changelog ([4ca80a7](https://github.com/pawamoy/copier-pdm/commit/4ca80a79f1f39763322efa5b2ab153b98617ae59) by Timothée Mazzucotelli).


## [0.7.1](https://github.com/pawamoy/copier-pdm/releases/tag/0.7.1) - 2021-12-15

<small>[Compare with 0.7.0](https://github.com/pawamoy/copier-pdm/compare/0.7.0...0.7.1)</small>

### Code Refactoring
- Remove dependencies upper bounds ([89f6df5](https://github.com/pawamoy/copier-pdm/commit/89f6df50db9bbfbd6a4d8788dae5e2a5ede6a6a9) by Timothée Mazzucotelli). See https://iscinumpy.dev/post/bound-version-constraints/.


## [0.7.0](https://github.com/pawamoy/copier-pdm/releases/tag/0.7.0) - 2021-11-30

<small>[Compare with 0.6.1](https://github.com/pawamoy/copier-pdm/compare/0.6.1...0.7.0)</small>

### Features
- Add gitpod configuration ([88b9e54](https://github.com/pawamoy/copier-pdm/commit/88b9e5458aef3fa020f802127250a14381e57083) by Timothée Mazzucotelli).


## [0.6.1](https://github.com/pawamoy/copier-pdm/releases/tag/0.6.1) - 2021-11-30

<small>[Compare with 0.6.0](https://github.com/pawamoy/copier-pdm/compare/0.6.0...0.6.1)</small>

### Code Refactoring
- Prepare for strict PEP 621, add classifiers ([d886bc1](https://github.com/pawamoy/copier-pdm/commit/d886bc10d207213fa4b106b842071ca2f882b1a3) by Timothée Mazzucotelli).
- Ignore D417 (does not support parameters sections) ([7198ec4](https://github.com/pawamoy/copier-pdm/commit/7198ec47da04c2a2e49f1678a19e6b28bd073c9f) by Timothée Mazzucotelli).


## [0.6.0](https://github.com/pawamoy/copier-pdm/releases/tag/0.6.0) - 2021-11-21

<small>[Compare with 0.5.0](https://github.com/pawamoy/copier-pdm/compare/0.5.0...0.6.0)</small>

### Features
- Support stubs for typing checks ([6482a6b](https://github.com/pawamoy/copier-pdm/commit/6482a6b3f0e3e7349341c4c78f9dcfe23e67872b) by Timothée Mazzucotelli).

### Code Refactoring
- Support depending on safety directly ([94a1ce6](https://github.com/pawamoy/copier-pdm/commit/94a1ce62b27a39f1785aabab7ad61b8dd963bbc2) by Timothée Mazzucotelli).


## [0.5.0](https://github.com/pawamoy/copier-pdm/releases/tag/0.5.0) - 2021-11-14

<small>[Compare with 0.4.4](https://github.com/pawamoy/copier-pdm/compare/0.4.4...0.5.0)</small>

### Features
- Add make lock recipe ([1d88d93](https://github.com/pawamoy/copier-pdm/commit/1d88d939dca22120d12e3b8143da7efd77015e1e) by Timothée Mazzucotelli).

### Code Refactoring
- Add Python 3.11-dev in CI ([281e038](https://github.com/pawamoy/copier-pdm/commit/281e038949a0bd98bcff79921e19bda08989c65e) by Timothée Mazzucotelli).
- Add Python 3.10 in CI ([47e381d](https://github.com/pawamoy/copier-pdm/commit/47e381dd46e3f7e95c00185e903c97dd4a71e082) by Michael Ramsey).
- Run dependencies check only once ([3278aec](https://github.com/pawamoy/copier-pdm/commit/3278aecbf37e728e409087eaccf09ffa11ade18e) by Timothée Mazzucotelli).
- Upgrade dev-dependencies ([9f14bb6](https://github.com/pawamoy/copier-pdm/commit/9f14bb66d0616c2ba770f6df0a1c353fd5e0b986) by Timothée Mazzucotelli).
- Rename check-code-quality to check-quality ([9ae0489](https://github.com/pawamoy/copier-pdm/commit/9ae0489964bb53e3e960f5f48299c8326111582e) by Timothée Mazzucotelli).


## [0.4.4](https://github.com/pawamoy/copier-pdm/releases/tag/0.4.4) - 2021-09-29

<small>[Compare with 0.4.3](https://github.com/pawamoy/copier-pdm/compare/0.4.3...0.4.4)</small>

### Code Refactoring
- Add Python 3.10 and 3.11 to locally used versions ([94a1150](https://github.com/pawamoy/copier-pdm/commit/94a1150a68baea7eb5079f729bdf860b9e725985) by Timothée Mazzucotelli).
- Prevent float conversion of Python versions ([5e97e87](https://github.com/pawamoy/copier-pdm/commit/5e97e87e504fdcfd59ad2e9f41b148dcfc0ef06a) by Timothée Mazzucotelli).
- Improve detection of Python interpreters ([5dab9e5](https://github.com/pawamoy/copier-pdm/commit/5dab9e5c0de223ce3b7e2e459f1a9afdd70970c2) by Timothée Mazzucotelli).


## [0.4.3](https://github.com/pawamoy/copier-pdm/releases/tag/0.4.3) - 2021-09-09

<small>[Compare with 0.4.2](https://github.com/pawamoy/copier-pdm/compare/0.4.2...0.4.3)</small>

### Code Refactoring
- Add more space at bottom of docs pages ([2fd54b1](https://github.com/pawamoy/copier-pdm/commit/2fd54b175957c1a74b8bd5201bc3f43c1a831f29) by Victor B).


## [0.4.2](https://github.com/pawamoy/copier-pdm/releases/tag/0.4.2) - 2021-09-09

<small>[Compare with 0.4.1](https://github.com/pawamoy/copier-pdm/compare/0.4.1...0.4.2)</small>

### Code Refactoring
- Fix typos ([ecb73bd](https://github.com/pawamoy/copier-pdm/commit/ecb73bd524d52418a2cd30db5007fee54c1121ad) by Timothée Mazzucotelli).


## [0.4.1](https://github.com/pawamoy/copier-pdm/releases/tag/0.4.1) - 2021-08-20

<small>[Compare with 0.4.0](https://github.com/pawamoy/copier-pdm/compare/0.4.0...0.4.1)</small>

### Code Refactoring
- Use new PDM 'group' option ('section' is deprecated) ([4e4f5fb](https://github.com/pawamoy/copier-pdm/commit/4e4f5fb85dff71e780986d14b7945ecf351ed67b) by Timothée Mazzucotelli).


## [0.4.0](https://github.com/pawamoy/copier-pdm/releases/tag/0.4.0) - 2021-08-20

<small>[Compare with 0.3.4](https://github.com/pawamoy/copier-pdm/compare/0.3.4...0.4.0)</small>

### Features
- Set up license classifier according to user's answers ([9e1ff5c](https://github.com/pawamoy/copier-pdm/commit/9e1ff5c4cab3b7711cc57b60eff4cda3051293b8) by Timothée Mazzucotelli).

### Bug Fixes
- Fix credits building ([bb9eacc](https://github.com/pawamoy/copier-pdm/commit/bb9eaccd15182dc39b1945c8c665c82fed5c5000) by Timothée Mazzucotelli).


## [0.3.4](https://github.com/pawamoy/copier-pdm/releases/tag/0.3.4) - 2021-08-01

<small>[Compare with 0.3.3](https://github.com/pawamoy/copier-pdm/compare/0.3.3...0.3.4)</small>

### Code Refactoring
- Stop ignoring docs in flake8 config ([86a6d44](https://github.com/pawamoy/copier-pdm/commit/86a6d4423898d1a3803968a09271e92aca800ba3) by Timothée Mazzucotelli).
- Ignore toml missing imports in mypy ([caed14c](https://github.com/pawamoy/copier-pdm/commit/caed14c60a465869f8248cb310b24fb03236825a) by Timothée Mazzucotelli).


## [0.3.3](https://github.com/pawamoy/copier-pdm/releases/tag/0.3.3) - 2021-07-31

<small>[Compare with 0.3.2](https://github.com/pawamoy/copier-pdm/compare/0.3.2...0.3.3)</small>

### Code Refactoring
- Silmplify credits generation ([a47b30f](https://github.com/pawamoy/copier-pdm/commit/a47b30f34d4b19649e237bab7102d83368db036e) by Timothée Mazzucotelli).


## [0.3.2](https://github.com/pawamoy/copier-pdm/releases/tag/0.3.2) - 2021-06-07

<small>[Compare with 0.3.1](https://github.com/pawamoy/copier-pdm/compare/0.3.1...0.3.2)</small>

### Bug Fixes
- Add migration to remove old files ([ee48c18](https://github.com/pawamoy/copier-pdm/commit/ee48c18d27b4f6d9adaa44b8fa12ef7360232b05) by Timothée Mazzucotelli).


## [0.3.1](https://github.com/pawamoy/copier-pdm/releases/tag/0.3.1) - 2021-06-06

<small>[Compare with 0.3.0](https://github.com/pawamoy/copier-pdm/compare/0.3.0...0.3.1)</small>

### Bug Fixes
- Fix generated code reference navigation ([61be4e3](https://github.com/pawamoy/copier-pdm/commit/61be4e3e88d6504d2ef7dd567cb17472130eed8c) by Timothée Mazzucotelli).

### Code Refactoring
- Add more personal branding to docs ([1b171c8](https://github.com/pawamoy/copier-pdm/commit/1b171c80375b3ae756b29c4a025ce8eb2debbc57) by Timothée Mazzucotelli).


## [0.3.0](https://github.com/pawamoy/copier-pdm/releases/tag/0.3.0) - 2021-06-01

<small>[Compare with 0.2.5](https://github.com/pawamoy/copier-pdm/compare/0.2.5...0.3.0)</small>

### Code Refactoring
- Add project urls ([e604106](https://github.com/pawamoy/copier-pdm/commit/e6041062ce59951174a6ddc7d6aa6986cf03887e) by Timothée Mazzucotelli).
- Clean up ci instructions ([90babd9](https://github.com/pawamoy/copier-pdm/commit/90babd904df015e74aee659395514310e433f9c2) by Timothée Mazzucotelli).
- Upgrade setup-pdm action version ([c66b2e8](https://github.com/pawamoy/copier-pdm/commit/c66b2e8492364b9ad4b75527ce8506841110d2c1) by Timothée Mazzucotelli).

### Features
- Generate code reference nav automatically ([802fdeb](https://github.com/pawamoy/copier-pdm/commit/802fdeb527612b3115b92908bc13d463fd443982) by Timothée Mazzucotelli).


## [0.2.5](https://github.com/pawamoy/copier-pdm/releases/tag/0.2.5) - 2021-05-22

<small>[Compare with 0.2.4](https://github.com/pawamoy/copier-pdm/compare/0.2.4...0.2.5)</small>

### Code Refactoring
- Clean up docs, improve theming ([daeb614](https://github.com/pawamoy/copier-pdm/commit/daeb6144a2a5a6f035f3051ddbd22731994c6717) by Timothée Mazzucotelli).


## [0.2.4](https://github.com/pawamoy/copier-pdm/releases/tag/0.2.4) - 2021-05-16

<small>[Compare with 0.2.3](https://github.com/pawamoy/copier-pdm/compare/0.2.3...0.2.4)</small>

### Bug Fixes
- Append missing trailing new lines ([f382682](https://github.com/pawamoy/copier-pdm/commit/f3826822e8527f117a82042e55d93022cf978cba) by Timothée Mazzucotelli).


## [0.2.3](https://github.com/pawamoy/copier-pdm/releases/tag/0.2.3) - 2021-05-16

<small>[Compare with 0.2.2](https://github.com/pawamoy/copier-pdm/compare/0.2.2...0.2.3)</small>

### Code Refactoring
- Don't restrict to python <3.10, set dev status to 4 ([03e5065](https://github.com/pawamoy/copier-pdm/commit/03e50655b050a5c5c901ec9208bac13939e2f865) by Timothée Mazzucotelli).


## [0.2.2](https://github.com/pawamoy/copier-pdm/releases/tag/0.2.2) - 2021-05-16

<small>[Compare with 0.2.1](https://github.com/pawamoy/copier-pdm/compare/0.2.1...0.2.2)</small>

### Bug Fixes
- Fix combining coverage on shells without globbing ([a2d7e17](https://github.com/pawamoy/copier-pdm/commit/a2d7e179c14b11f511d03fbe81a9b7a687ad6651) by Timothée Mazzucotelli).


## [0.2.1](https://github.com/pawamoy/copier-pdm/releases/tag/0.2.1) - 2021-05-08

<small>[Compare with 0.2.0](https://github.com/pawamoy/copier-pdm/compare/0.2.0...0.2.1)</small>

### Bug Fixes
- Fix mypy warnings in docs/macros.py ([517b0ba](https://github.com/pawamoy/copier-pdm/commit/517b0ba7d9fd44416c0698603fca352c6d7e4726) by Timothée Mazzucotelli).


## [0.2.0](https://github.com/pawamoy/copier-pdm/releases/tag/0.2.0) - 2021-05-08

<small>[Compare with 0.1.3](https://github.com/pawamoy/copier-pdm/compare/0.1.3...0.2.0)</small>

### Code Refactoring
- Install all dependencies at once before quality in ci ([64e231a](https://github.com/pawamoy/copier-pdm/commit/64e231aec5eb9cfcee10acd66a092f79b3544297) by Timothée Mazzucotelli).
- Improve and simplify coverage configuration ([f622786](https://github.com/pawamoy/copier-pdm/commit/f62278607d47ddeb6526c9e9f087d02ee3aef0c1) by Timothée Mazzucotelli).

### Features
- Add a `py.typed` file to enable mypy annotations discovery ([94b64c2](https://github.com/pawamoy/copier-pdm/commit/94b64c26ead8fa3fb64b8170bdabbab908eaa180) by Timothée Mazzucotelli).


## [0.1.3](https://github.com/pawamoy/copier-pdm/releases/tag/0.1.3) - 2021-05-06

<small>[Compare with 0.1.2](https://github.com/pawamoy/copier-pdm/compare/0.1.2...0.1.3)</small>

### Code Refactoring
- Update for pdm 1.5 ([100d7ac](https://github.com/pawamoy/copier-pdm/commit/100d7acf6a3adb0ce6466a7bcf4678ff8c00ff32) by Timothée Mazzucotelli).


## [0.1.2](https://github.com/pawamoy/copier-pdm/releases/tag/0.1.2) - 2021-04-18

<small>[Compare with 0.1.1](https://github.com/pawamoy/copier-pdm/compare/0.1.1...0.1.2)</small>

### Bug Fixes
- Install a working pdm version ([23f9c6a](https://github.com/pawamoy/copier-pdm/commit/23f9c6a19ed25cb64af089593fd6b20498eb48ac) by Timothée Mazzucotelli).


## [0.1.1](https://github.com/pawamoy/copier-pdm/releases/tag/0.1.1) - 2021-04-05

<small>[Compare with 0.1.0](https://github.com/pawamoy/copier-pdm/compare/0.1.0...0.1.1)</small>

### Bug Fixes
- Fix caches names in ci ([a1e9bed](https://github.com/pawamoy/copier-pdm/commit/a1e9bed46d944caf293e2e41b3082a02a44c9cc9) by Timothée Mazzucotelli).


## [0.1.0](https://github.com/pawamoy/copier-pdm/releases/tag/0.1.0) - 2021-04-04

<small>[Compare with first commit](https://github.com/pawamoy/copier-pdm/compare/ad5932b04cecfcc6e6d1311f10082289cbc6ed76...0.1.0)</small>

### Bug Fixes
- Stop including readme and pyproject.toml in package ([54ea35b](https://github.com/pawamoy/copier-pdm/commit/54ea35b20ddd6112db9f3d312f6f41c142f9258d) by Timothée Mazzucotelli).
- Fix parameter expansion not to override empty python_versions ([0837d9c](https://github.com/pawamoy/copier-pdm/commit/0837d9c6b0d743b7c46544ae1d851c3c283bc917) by Timothée Mazzucotelli). Related issues/PRs: [#11](https://github.com/pawamoy/copier-pdm/issues/11)
- Fix license file being generated empty ([b5f0fb3](https://github.com/pawamoy/copier-pdm/commit/b5f0fb3210cbe6f91ac4d5fc65e3261613b96126) by Timothée Mazzucotelli). Related issues/PRs: [#8](https://github.com/pawamoy/copier-pdm/issues/8), [#10](https://github.com/pawamoy/copier-pdm/issues/10)
- Use repository provider in mkdocs `site_url` and `repo_url` ([24f57a4](https://github.com/pawamoy/copier-pdm/commit/24f57a4490efec27852dd9eebd5be62182b0ba51) by WhatTheServer).
- Don't autoescape when updating changelog ([2b63c22](https://github.com/pawamoy/copier-pdm/commit/2b63c222db7bea953bf8394434bd5931f7b5eda4) by Timothée Mazzucotelli).
- Fix path in coverage config ([e195a5b](https://github.com/pawamoy/copier-pdm/commit/e195a5b0a5d1c47b8ff5e4c02daaf648200c556d) by Timothée Mazzucotelli).
- Fix ci cache key names ([a22266c](https://github.com/pawamoy/copier-pdm/commit/a22266ccb08706e1c4fb34de92e66ff502852743) by Timothée Mazzucotelli).
- Fix ci detection and pty usage ([20512fe](https://github.com/pawamoy/copier-pdm/commit/20512fea7cc4b680ea3d5a6062b5b7826032fad7) by Timothée Mazzucotelli).

### Code Refactoring
- Stop using flakehell, use wps-light ([228a424](https://github.com/pawamoy/copier-pdm/commit/228a42468ca708afbf3fe999020d6f8de6634e61) by Timothée Mazzucotelli).
- Exclude fixtures from mypy checks ([584d3d8](https://github.com/pawamoy/copier-pdm/commit/584d3d83787500cc50cbfbba1c21fd510e606649) by Timothée Mazzucotelli).
- Make templated badges more readable ([4d3922d](https://github.com/pawamoy/copier-pdm/commit/4d3922d2e3179f97de87a8aaad4c71e6e970ed97) by Timothée Mazzucotelli).
- Drop bitbucket support ([9ac3b03](https://github.com/pawamoy/copier-pdm/commit/9ac3b03fb9c3ea00285cc495142fe6e5a76cec52) by Timothée Mazzucotelli).
- Rework test coverage combining ([10a1410](https://github.com/pawamoy/copier-pdm/commit/10a1410643101db94271d48c26bb090b7c149bd6) by Timothée Mazzucotelli).
- Set `site_dir` in mkdocs.yml accordingly to chosen provider ([452b6b7](https://github.com/pawamoy/copier-pdm/commit/452b6b723fbe35694d349eaf98789c2e7add490b) by WhatTheServer). Related issues/PRs: [#12](https://github.com/pawamoy/copier-pdm/issues/12)
- Various tweaks and improvements ([56e4973](https://github.com/pawamoy/copier-pdm/commit/56e49738a7b56c680f179157d1e93d8fd5dfe085) by WhatTheServer).
- Remove ipython dev-dependency ([ee02d95](https://github.com/pawamoy/copier-pdm/commit/ee02d9541b760a0189d3be7d396ee542c4bd7346) by Timothée Mazzucotelli).
- Reorganize docs navigation ([12213ab](https://github.com/pawamoy/copier-pdm/commit/12213ab77c4c4d3f1d9f771b9e8df769d26e6aa8) by Timothée Mazzucotelli).
- Use `pymdownx.snippets` instead of `markdown_include` ([2c07518](https://github.com/pawamoy/copier-pdm/commit/2c07518ca2c7d0503d308c1ebcd9e32e00473e35) by Timothée Mazzucotelli).
- Reallow failure for docs on python 3.9 ([56626c1](https://github.com/pawamoy/copier-pdm/commit/56626c1290906827ba927ff7ceb33e6a2f169438) by Timothée Mazzucotelli).
- Update mkdocstrings dependency ([011b8fd](https://github.com/pawamoy/copier-pdm/commit/011b8fd083e0e46eb28760ac411b66e878d1e0fe) by Timothée Mazzucotelli).
- Allow check-docs failure on python 3.9 ([33bebf9](https://github.com/pawamoy/copier-pdm/commit/33bebf984ebc3821575a5c5ee27908852cc755aa) by Timothée Mazzucotelli).

### Features
- Switch to pdm ([cab8b57](https://github.com/pawamoy/copier-pdm/commit/cab8b57aa014577b2170e0ab2b8b555d18adbe46) by Timothée Mazzucotelli).
- Add precommit option and cleanup hook ([ba8cfd4](https://github.com/pawamoy/copier-pdm/commit/ba8cfd4959c2e4b7a207c6d388771769318374d4) by Timothée Mazzucotelli).
- Generate credits when building docs ([db79bd8](https://github.com/pawamoy/copier-pdm/commit/db79bd82ce68400002e313bf04ffa2ec62d20f26) by Timothée Mazzucotelli).
- Integrate coverage html report into docs ([d450918](https://github.com/pawamoy/copier-pdm/commit/d450918fab2fae3c4a1abef2d1e94a835b7c43f9) by Timothée Mazzucotelli).

### Performance Improvements
- Reduce installation time in ci ([4a2a3b4](https://github.com/pawamoy/copier-pdm/commit/4a2a3b459accdadcafb55f856c1307f5906d1a61) by Timothée Mazzucotelli).
- Don't query pypi.org to get missing packages info ([ac6fe27](https://github.com/pawamoy/copier-pdm/commit/ac6fe278d7a74babf7db9a35c9c2991b2006590d) by Timothée Mazzucotelli).


