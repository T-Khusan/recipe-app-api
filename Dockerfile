FROM python:3.7-alpine
MAINTAINER Khusan Tojiboev

ENV PYTHONUNBUFFERED 1

# Install dependencies
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# Setup directory structure
RUN mkdir /app
WORKDIR /app
COPY ./app/ /app

# Create user to run our process from our project and USER means switch to user
RUN adduser -D user
USER user
