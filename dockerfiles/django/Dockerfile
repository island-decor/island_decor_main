FROM python:3.6.5-alpine3.7
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN apk add --no-cache \
    postgresql-dev \
    gcc \
    musl-dev \
    git
RUN pip install -r requirements.txt
