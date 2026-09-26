.PHONY: bootstrap smoke test lint

bootstrap:
	pip install -r requirements.txt && pip install -e . && python -m style_lint --init

smoke:
	python -c "import style_profile; print(style_profile.get_rules('default'))"

test:
	python -m pytest tests

lint:
	python -m style_lint
