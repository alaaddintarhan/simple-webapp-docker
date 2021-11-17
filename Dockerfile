FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python python-pip

COPY app.py /opt/
COPY ./requirements.txt /bin/sh/

RUN pip install flask
RUN pip install -r requirements.txt

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
