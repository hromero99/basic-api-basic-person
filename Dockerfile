FROM python:3.9
MAINTAINTER hromeorl.es
WORKDIR /app
COPY . .
RUN pip3 install django django-rest-framework gunicorn psycopg2
ENV GUNICORN_WORKERS=4
ENTRYPOINT ["bash","/app/entrypoint.sh" ]
