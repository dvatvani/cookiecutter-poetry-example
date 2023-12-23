default:
  @just --list --unsorted

# Initial setup of project, without any commit to GitHub
setup-project-no-github:
    @git init -b main
    @git add .
    @git commit -m "Initial commit"
    @just install

# Initial setup of project, including an initial push to GitHub
setup-project: setup-project-no-github
    @git remote add origin git@github.com:dvatvani/cookiecutter-poetry-example.git
    @git push -u origin main

# Install the poetry environment and install the pre-commit hooks
install:
	@echo "🚀 Creating virtual environment using pyenv and poetry"
	@poetry env use python
	@poetry install
	@poetry run pre-commit install

# Run code quality tools.
check:
	@echo "🚀 Checking Poetry lock file consistency with 'pyproject.toml'"
	@poetry check --lock
	@echo "🚀 Linting code: Running pre-commit"
	@poetry run pre-commit run -a
	@echo "🚀 Static type checking: Running mypy"
	@poetry run mypy
	@echo "🚀 Checking for obsolete dependencies: Running deptry"
	@poetry run deptry .

# Test the code with pytest
test:
	@echo "🚀 Testing code: Running pytest"
	@poetry run pytest --cov --cov-config=pyproject.toml --cov-report=xml

# Build wheel file using poetry
build: clean-build
	@echo "🚀 Creating wheel file"
	@poetry build

# clean build artifacts
clean-build:
	@rm -rf dist

# Test if documentation can be built without warnings or errors
docs-test:
	@poetry run mkdocs build -s

# Build and serve the documentation
docs:
	@poetry run mkdocs serve
