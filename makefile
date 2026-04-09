all:

lint:
	npx --yes prettier@3.6.2 --check .

format:
	npx --yes prettier@3.6.2 --write .

lint:
	npx --yes --check .

test:
	python -m pytest -q

clean:
	rm -rf .pytest_cache __pycache__
