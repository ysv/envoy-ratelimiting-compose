FROM python:3.7.7-alpine3.11

RUN apk update && apk add bash curl \
 && pip3 install -q Flask==0.11.1 requests==2.18.4 \
 && mkdir /source

ADD ./service.py /source
CMD python3 /source/service.py
