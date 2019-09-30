pipenv run python -m pipenv2setup
pipenv run python setup.py sdist bdist_wheel
pipenv run twine upload --username $PYPI_USER --password $PYPI_PASS dist/*