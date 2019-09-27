init:
	rm -rf ./venv
	python3 -m venv venv
	./venv/bin/pip install -r requirements.txt

start:
	./venv/bin/mkdocs serve

build:
	./venv/bin/mkdocs build

deploy:
	./venv/bin/mkdocs gh-deploy
