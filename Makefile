.PHONY: bootstrap test lint

bootstrap:
	pip install -r requirements.txt && pip install -e . && python -m style_lint --init

test:
	python -m pytest tests

lint:
	python -m style_lint
