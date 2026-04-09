all:

format:
	npx --yes prettier --write .

lint:
	npx --yes --check .

test:
	python -m pytest -q

clean:
	rm -rf .pytest_cache __pycache__
