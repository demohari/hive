.PHONY: docs

install:
	pip install -r requirements.txt


dev: install
	pip install -r requirements_dev.txt

git :
	git config --global user.email "kishore_koneru@yahoo.com"
	git config --global user.name "demohari"
test:
	pytest tests.py


clean:
	rm -rf __pycache__ .pytest_cache .mypy_cache .tox


flake:
	flake8 common.py tests.py


check: flake test clean


docs:
	pdoc --html --force --output-dir docs common
