.PHONY: install lint test run

install:
	pip install -r requirements.txt

lint:
	flake8 app.py test_app.py

test:
	pytest

run:
	python app.py
