# Description

An example of repo of using `pipenv` and `pipenv2setup` to build a push a package to `Pypi`

# Install and Run

## Install the version of python required for the project

Assuming that `pyenv` is already installed

	>>> pyenv install 3.4.0

This is the version of python specified in the Pipfile, so we will need install it before we can move on.

## Install the virtualenv and dependancies of the project

I have added `export PIPENV_VENV_IN_PROJECT="enabled"` to my `~/.bash_profile` so that the virtual env is created in the project, this makes it easy to delete the virtualenv using `rm -rf .venv` if there are any strange problems.

	>>> pipenv install

This will also have installed the development dependancies `twine` and `pipenv2setup`, we will need these when deploying to `Pypi`.

## Run the project

There are scripts in the `Pipfile` that allow us to run tests or the project directly as a script.

	>>> pipenv run test
	>>> pipenv run main

# Publish

First ensure that the dev dependancies are installed:

	>>> pipenv install --dev

There is a script that will publish the package to `Pypi`. It will take the packages (and their versions) listed in the `Pipfile` and insert them into the `install_requires` section in the `setup.py` file.

Set your `Pypi` username and password as environment variables:

	>>> export PYPI_USER=<username>
	>>> export PYPI_PASS=<password>

Then run the publish script:

	>>> pipenv run publish

N.B this will fail unless you have changed the package name from `pipenvExample`. That package name is already taken!
