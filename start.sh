#!/bin/bash:start

set -e
export FLASK_APP=china:create_app
gunicorn -w 4 -b 0.0.0.0:${PORT:-8080} china:create_app &
python3 -m AnonXMusic
