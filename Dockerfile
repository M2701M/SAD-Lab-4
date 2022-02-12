FROM ubuntu:18.04
ENV PYTHONUNBUFFERED=1

RUN apt-get update && apt-get install -y --no-install-recommends build-essential python3 python3-pip postgresql-client

WORKDIR /usr/src/app
COPY requirements.txt ./
RUN python3 -m pip install --upgrade pip
RUN pip3 install -r requirements.txt
RUN django-admin startproject mysite
WORKDIR /usr/src/app/mysite
RUN python3 manage.py startapp helloworld
COPY views.py /usr/src/app/mysite/helloworld/views.py
COPY urls.py /usr/src/app/mysite/mysite/urls.py
COPY settings.py /usr/src/app/mysite/mysite/settings.py

EXPOSE 8000