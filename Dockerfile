FROM ubuntu:16.04
 
RUN apt-get update && apt-get install -y python3 python-pip
RUN sudo apt install python3-venv
RUN pip install flask
RUN python -m flask --version

COPY app.py /opt/
COPY requirements.txt /opt/

RUN pip install -r /opt/requirements.txt

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
