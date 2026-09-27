.PHONY: bootstrap test

bootstrap:
	python3 -m venv .venv && .venv/bin/pip install -r requirements.txt && .venv/bin/python -m style_lint

test:
	.venv/bin/python -m pytest tests/ -q
