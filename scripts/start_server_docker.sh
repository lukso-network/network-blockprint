#!/usr/bin/env bash

cd ..

echo "Starting the docker server with the following env values:"
echo "BLOCK_DB: $BLOCK_DB"
echo "DISABLE_DB_BUILD: $DISABLE_DB_BUILD"
echo "DATA DIR: $DATA_DIR"

(sleep 5 && kill 10)&
gunicorn --bind 0.0.0.0:8000 api_server 
