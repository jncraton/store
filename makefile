all:

lint:
	npx --yes prettier@3.6.2 --check .

format:
	npx --yes prettier@3.6.2 --write .

test:
	uv run --with pytest-playwright==0.7.2 python -m playwright install chromium firefox
	uv run --with pytest-playwright==0.7.2 python -m pytest --browser chromium --browser firefox

clean:
	rm -rf .pytest_cache __pycache__
