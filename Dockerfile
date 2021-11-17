FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python python-pip

COPY  app.py /opt/
COPY  requirements.txt /opt/

RUN pip install -r /opt/requirements.txt
RUN pip install flask  

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
