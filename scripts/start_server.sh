#!/usr/bin/env bash

cd ..
source ./vevn/bin/activate

echo "Starting the server with the following env values:"
echo "BLOCK_DB: $BLOCK_DB"
echo "DISABLE_DB_BUILD: $DISABLE_DB_BUILD"

gunicorn --bind 0.0.0.0:8000 api_server 
