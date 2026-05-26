.PHONY: install lint test coverage run

install:
	pip install -r requirements.txt

lint:
	flake8 app.py test_app.py

test:
	pytest

coverage:
	pytest --cov=app --cov-report=term-missing

run:
	python app.py
