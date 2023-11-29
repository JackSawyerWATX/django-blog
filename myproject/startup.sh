#!/bin/bash
python manage.py collectstatic && gunicorn --workers 2 myproject.wsgi

# Set environment variables
export DJANGO_SETTINGS_MODULE="your_project.settings"
export DATABASE_URL="your_database_url"
export SECRET_KEY="your_secret_key"

# Install dependencies
pip install -r requirements.txt

# Run database migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput

# Start the application
gunicorn your_project.wsgi:application
