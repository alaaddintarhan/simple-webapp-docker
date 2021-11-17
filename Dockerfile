FROM ubuntu
RUN apt-get update
RUN apt-get install 
RUN -y python3 -m pip install flask
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
