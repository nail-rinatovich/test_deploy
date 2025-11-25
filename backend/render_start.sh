#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

python manage.py migrate --noinput
gunicorn backend.wsgi:application --bind "0.0.0.0:${PORT:-8000}"

