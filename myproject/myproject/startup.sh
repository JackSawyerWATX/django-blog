#!/bin/bash

cd C:/django-blog/

python manage.py collectstatic && gunicorn --workers 2 myproject.wsgi

python manage.py runserver 0.0.0.0:8000