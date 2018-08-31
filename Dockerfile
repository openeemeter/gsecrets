FROM python:3.7.0

# Need sudo
RUN apt-get update && apt-get install -y sudo && rm -rf /var/lib/apt/lists/*

COPY . /app/
WORKDIR /app
RUN pip install -e .