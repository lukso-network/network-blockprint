#!/usr/bin/env bash

cd ..

(sleep 5 && kill 10)&
gunicorn --bind 0.0.0.0:8000 api_server 
