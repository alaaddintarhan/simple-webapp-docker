FROM ubuntu:16.04

RUN mkdir workspace & workdir workspace

RUN apt-get update && apt-get install -y python3 python-pip
RUN pip install flask

COPY app.py /workspace/
COPY requirements.txt /workspace/

RUN pip install -r /workspace/requirements.txt

COPY app.py /workspace/
ENTRYPOINT FLASK_APP=/workspace/app.py flask run --host=0.0.0.0 --port=8080
