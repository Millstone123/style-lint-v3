bootstrap:
	pip install -r requirements.txt -q 2>/dev/null; python3 -m pytest tests -q

test:
	python3 -m pytest tests -q

.PHONY: bootstrap test
