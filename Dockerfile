FROM python:3.7-slim

ENV HOME=/usr/src/app
WORKDIR $HOME

RUN apt-get update && apt-get install -y zip

COPY / $HOME/
