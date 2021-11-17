FROM ubuntu:16.04
RUN apt-get update && apt-get install -y python3 python-pip
RUN pip install flask
ENV PATH=/home/ubuntu/.virtualenvs/bin:$PATH
RUN pip install -r requirements.txt
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
