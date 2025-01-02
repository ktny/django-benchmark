#!/bin/bash

# run migration
python manage.py migrate

# django run server
# python manage.py runserver 0.0.0.0:8000

# gunicorn
# シングルプロセス
# gunicorn --bind 0.0.0.0:8000 -k gevent --workers 1 common.wsgi:application

# マルチプロセス
# gunicorn --bind 0.0.0.0:8000 -k gevent --workers 17 common.wsgi:application

# マルチスレッド
# gunicorn --bind 0.0.0.0:8000 -k gthread --threads 17 common.wsgi:application

# マルチプロセス・マルチスレッド
gunicorn --bind 0.0.0.0:8000 -k gthread --workers 17 --threads 17 common.wsgi:application
