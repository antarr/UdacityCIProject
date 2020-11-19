install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv Code/test_hello.py

lint:
	pylint --disable=R,C Code/hello.py

all:
	install lint test
