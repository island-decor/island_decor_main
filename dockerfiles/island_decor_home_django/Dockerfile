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
ENTRYPOINT ["sh", "-c", "mkdir /island_decor_homepage \
      && cd /island_decor_homepage \
      && git clone https://github.com/island-decor/island_decor_homepage.git \
      && cd island_decor_homepage \
      && python3 manage.py makemigrations \
      && python3 manage.py migrate \
      && gunicorn island_decor_homepage.wsgi:application \
      --bind 0.0.0.0:80 --workers 3"]
