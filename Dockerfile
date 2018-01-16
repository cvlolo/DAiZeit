FROM python:2.7

RUN mkdir -p /home/project/practica3
WORKDIR /home/project/practica3
COPY requirements.txt /home/project/practica3
RUN pip install --no-cache-dir -r requirements.txt

COPY . /home/project/practica3

EXPOSE 80

RUN gunicorn -w 1 -b :8000 practica3:app

