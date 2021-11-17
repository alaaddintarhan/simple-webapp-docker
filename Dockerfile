FROM ubuntu:16.04

#MAINTANER Your Name "alaaddintarhan26@gmail.com"

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

# ENTRYPOINT [ "python" ]
# CMD [ "app.py" ]

ENTRYPOINT FLASK_APP=/app/app.py flask run --host=0.0.0.0 --port=8080


