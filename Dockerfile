FROM python:3.9
WORKDIR /app
COPY . .
RUN pip3 install django django-rest-framework gunicorn psycopg2
ENV GUNICORN_WORKERS=4
ENV PG_DBNAME=""
ENV PG_DBUSER=""
ENV PG_DBPASS=""
ENV PG_HOST=""
ENV PG_PORT=""
ENTRYPOINT [ "/app/entrypoint.sh" ]
