.PHONY: bootstrap test

bootstrap:
	python3 -m venv .venv
	.venv/bin/pip install -r requirements.txt --quiet
	@echo "Bootstrap complete."

test:
	.venv/bin/python -m pytest tests/ -q
