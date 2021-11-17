FROM ubuntu:20.04
RUN apt-get update && apt-get install -y python3.9 python3.9-dev
RUN pip install -r requirements.txt
RUN pip install flask 
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
