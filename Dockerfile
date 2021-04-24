FROM python:3.7-slim

WORKDIR workshop

EXPOSE 5000

ENV name=Docker

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD gunicorn --bind 0.0.0.0:5000 app:app