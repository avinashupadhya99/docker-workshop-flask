FROM python:3.7-slim

# Not mandatory
WORKDIR workshop

EXPOSE 5000

# Default value, can be overriden using -e flag while running the container
ENV name=Docker

# Copy only the requirements first to cache it. The cache will be updated only if requirements.txt changes
COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD gunicorn --bind 0.0.0.0:5000 app:app