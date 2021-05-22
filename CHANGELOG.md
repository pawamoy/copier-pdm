# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

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
- Don't restrict to Python <3.10, set dev status to 4 ([03e5065](https://github.com/pawamoy/copier-pdm/commit/03e50655b050a5c5c901ec9208bac13939e2f865) by Timothée Mazzucotelli).


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

### Features
- Add a `py.typed` file to enable MyPy annotations discovery ([94b64c2](https://github.com/pawamoy/copier-pdm/commit/94b64c26ead8fa3fb64b8170bdabbab908eaa180) by Timothée Mazzucotelli).


### Code Refactoring
- Install all dependencies at once before quality in CI ([64e231a](https://github.com/pawamoy/copier-pdm/commit/64e231aec5eb9cfcee10acd66a092f79b3544297) by Timothée Mazzucotelli).
- Improve and simplify coverage configuration ([f622786](https://github.com/pawamoy/copier-pdm/commit/f62278607d47ddeb6526c9e9f087d02ee3aef0c1) by Timothée Mazzucotelli).

## [0.1.3](https://github.com/pawamoy/copier-pdm/releases/tag/0.1.3) - 2021-05-06

<small>[Compare with 0.1.2](https://github.com/pawamoy/copier-pdm/compare/0.1.2...0.1.3)</small>

### Code Refactoring
- Update for PDM 1.5 ([100d7ac](https://github.com/pawamoy/copier-pdm/commit/100d7acf6a3adb0ce6466a7bcf4678ff8c00ff32) by Timothée Mazzucotelli).


## [0.1.2](https://github.com/pawamoy/copier-pdm/releases/tag/0.1.2) - 2021-04-18

<small>[Compare with 0.1.1](https://github.com/pawamoy/copier-pdm/compare/0.1.1...0.1.2)</small>

### Bug Fixes
- Install a working PDM version ([23f9c6a](https://github.com/pawamoy/copier-pdm/commit/23f9c6a19ed25cb64af089593fd6b20498eb48ac) by Timothée Mazzucotelli).


## [0.1.1](https://github.com/pawamoy/copier-pdm/releases/tag/0.1.1) - 2021-04-05

<small>[Compare with 0.1.0](https://github.com/pawamoy/copier-pdm/compare/0.1.0...0.1.1)</small>

### Bug Fixes
- Fix caches names in CI ([a1e9bed](https://github.com/pawamoy/copier-pdm/commit/a1e9bed46d944caf293e2e41b3082a02a44c9cc9) by Timothée Mazzucotelli).


## [0.1.0](https://github.com/pawamoy/copier-pdm/releases/tag/0.1.0) - 2021-04-04

<small>[Compare with first commit](https://github.com/pawamoy/copier-pdm/compare/ad5932b04cecfcc6e6d1311f10082289cbc6ed76...0.1.0)</small>

This template is based on [copier-poetry](https://github.com/pawamoy/copier-poetry),
but uses PDM for project management.

### Features
- Switch to PDM ([cab8b57](https://github.com/pawamoy/copier-pdm/commit/cab8b57aa014577b2170e0ab2b8b555d18adbe46) by Timothée Mazzucotelli).
