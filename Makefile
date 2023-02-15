install:
		pip install --upgrade pip &&\
			pip install -r requirements.txt

test:	
		python3 -m pytest -vv --cov=hello --cov=greeting tests
		python -m pytest --nbval Untitled14.ipynb

format:
		black *.py

lint:
		pylint --disable=R,C hello.py

all:	install lint test format 