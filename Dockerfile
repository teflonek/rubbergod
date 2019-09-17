FROM python:3.7-alpine

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
RUN apk update && apk add gcc git postgresql-dev musl-dev zlib libjpeg-turbo-dev libpng-dev freetype-dev lcms2-dev libwebp-dev harfbuzz-dev fribidi-dev tcl-dev tk-dev

VOLUME /rubbergod
WORKDIR /rubbergod

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt --user

COPY . .
