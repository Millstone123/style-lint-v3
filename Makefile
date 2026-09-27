.PHONY: bootstrap test

bootstrap:
	python3 -m venv .venv
	.venv/bin/pip install -r requirements.txt --quiet
	.venv/bin/python -c "import py_compile; py_compile.compile('style_lint/config.py', doraise=True)"
	.venv/bin/python -c "import json,os; p=os.path.expanduser('~/.cache/style-profile'); os.makedirs(p,exist_ok=True); json.dump({'theme':'default','characters':101}, open(os.path.join(p,'profile.json'),'w'))"
	.venv/bin/python -c "import os,importlib; importlib.import_module('style_lint')"
	@echo "Bootstrap complete."

test:
	.venv/bin/python -m pytest tests/ -q
