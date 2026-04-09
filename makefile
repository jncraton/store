all: public

public:
	@echo "Building public site"
	@mkdir -p public
	@cp -r index.html public/
	@if [ -d assets ]; then cp -r assets public/ || true; fi
	@echo "Built public/"

format:
	npx --no-install prettier --write . || true

lint:
	npx --no-install prettier --check . || true

test:
	python -m pytest -q

deploy: all
	@echo "Copied site to public/ for deployment (GitHub Actions will publish)."

clean:
	rm -rf public .pytest_cache __pycache__
