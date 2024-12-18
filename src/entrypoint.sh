#!/bin/bash

# run migration
python manage.py migrate

# django run server
# python manage.py runserver 0.0.0.0:8000

# gunicorn
# gunicorn --bind 0.0.0.0:8000 -k gevent --workers 17 common.wsgi:application
gunicorn --bind 0.0.0.0:8000 -k gthread --threads 17 common.wsgi:application
