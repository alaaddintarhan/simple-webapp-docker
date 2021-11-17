FROM ubuntu:latest
 
RUN apt-get update && apt-get install -y python3.8 python3-pip 
RUN pip3 install flask
RUN pip3 install --upgrade pip3

COPY app.py /opt/
COPY requirements.txt /opt/

RUN pip3 install -r /opt/requirements.txt

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
