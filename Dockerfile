FROM python:3.10-slim-bullseye

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /stocks_products_app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

EXPOSE 8000

COPY . .


RUN chmod +x backendStartup.sh
