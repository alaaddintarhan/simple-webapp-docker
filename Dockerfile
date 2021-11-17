FROM ubuntu:latest

RUN apt -f install
RUN apt update && apt dist-upgrade

RUN apt install python3-pip
RUN pip3 install flask
RUN pip3 install --upgrade pip3

COPY app.py /opt/
COPY requirements.txt /opt/

RUN pip3 install -r /opt/requirements.txt

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
