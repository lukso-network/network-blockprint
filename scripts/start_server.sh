#!/usr/bin/env bash

cd ..
source ./venv/bin/activate
gunicorn --timeout 1800 --bind 0.0.0.0:8000 api_server:app
