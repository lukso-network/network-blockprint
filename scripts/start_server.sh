#!/usr/bin/env bash

cd ..
source ./vevn/bin/activate
gunicorn --bind 0.0.0.0:8000 api_server 
