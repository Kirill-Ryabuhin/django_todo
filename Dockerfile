from python:3.12-slim

RUN mkdir code
WORKDIR code

ADD . /code/

RUN pip install -r requirements.txt

CMD  gunicorn todo_project.wsgi:application -b  0.0.0.0:8000