FROM tiangolo/uvicorn-gunicorn:python3.7

LABEL maintainer="Sebastian Ramirez <tiangolo@gmail.com>"

COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

COPY . /app

# FROM python:3.8-alpine
# COPY ./requirements.txt /app/requirements.txt
# WORKDIR /app
# EXPOSE 5000
# RUN pip install -r requirements.txt
# COPY . /app
