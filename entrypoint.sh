#!/bin/bash
pip3 install -r requirements.txt
python3 /app/manage.py makemigrations --noinput
python3 /app/manage.py migrate --noinput --run-syncdb
python3 /app/manage.py collectstatic --no-input
gunicorn api.wsgi:application --workers $GUNICORN_WORKERS --bind 0.0.0.0:8000
