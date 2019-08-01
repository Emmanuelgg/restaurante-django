FROM python:3.6
ENV PYTHONUNBUFFERED 1
RUN mkdir /api
WORKDIR /api
ADD requirements.txt /api/
RUN pip install -U pip && pip install -r requirements.txt
ADD . /api/
