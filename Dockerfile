FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python3 python3-pip

ADD ./app /app
EXPOSE 5000
WORKDIR /app
RUN pip3 install -r requirements.txt

CMD python3 app.py