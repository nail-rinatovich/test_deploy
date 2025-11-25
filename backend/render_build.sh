#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

# Install dependencies declared at the repo root.
pip install -r ../requirements.txt

# Collect static files so Render can serve them.
python manage.py collectstatic --noinput

