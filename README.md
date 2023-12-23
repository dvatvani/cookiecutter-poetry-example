# cookiecutter-poetry-example

[![Release](https://img.shields.io/github/v/release/dvatvani/cookiecutter-poetry-example)](https://img.shields.io/github/v/release/dvatvani/cookiecutter-poetry-example)
[![Build status](https://img.shields.io/github/actions/workflow/status/dvatvani/cookiecutter-poetry-example/main.yml?branch=main)](https://github.com/dvatvani/cookiecutter-poetry-example/actions/workflows/main.yml?query=branch%3Amain)
[![codecov](https://codecov.io/gh/dvatvani/cookiecutter-poetry-example/branch/main/graph/badge.svg)](https://codecov.io/gh/dvatvani/cookiecutter-poetry-example)
[![Commit activity](https://img.shields.io/github/commit-activity/m/dvatvani/cookiecutter-poetry-example)](https://img.shields.io/github/commit-activity/m/dvatvani/cookiecutter-poetry-example)
[![License](https://img.shields.io/github/license/dvatvani/cookiecutter-poetry-example)](https://img.shields.io/github/license/dvatvani/cookiecutter-poetry-example)

A sample Python package project made with [cookiecutter-poetry ](https://github.com/dvatvani/cookiecutter-poetry).

- **Github repository**: <https://github.com/dvatvani/cookiecutter-poetry-example/>
- **Documentation** <https://dvatvani.github.io/cookiecutter-poetry-example/>

## Getting started with your project

First, create a repository on GitHub with the same name as this project, and then run the following commands:

```bash
git init -b main
git add .
git commit -m "init commit"
git remote add origin git@github.com:dvatvani/cookiecutter-poetry-example.git
git push -u origin main
```

Finally, install the environment and the pre-commit hooks with:

```bash
just install
```

You are now ready to start development on your project!
The CI/CD pipeline will be triggered when you open a pull request, merge to main, or when you create a new release.

To finalize the set-up for publishing to PyPi or Artifactory, see [here](https://dvatvani.github.io/cookiecutter-poetry/features/publishing/#set-up-for-pypi).
For activating the automatic documentation with MkDocs, see [here](https://dvatvani.github.io/cookiecutter-poetry/features/mkdocs/#enabling-the-documentation-on-github).
To enable the code coverage reports, see [here](https://dvatvani.github.io/cookiecutter-poetry/features/codecov/).

## Releasing a new version

---

Repository initiated with [dvatvani/cookiecutter-poetry](https://github.com/dvatvani/cookiecutter-poetry).
