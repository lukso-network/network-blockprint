#!/usr/bin/env bash

cd ..
source ./venv/bin/activate

echo "Starting the background tasks with the following env values:"
echo "BLOCK_DB: $BLOCK_DB"
echo "DISABLE_DB_BUILD: $DISABLE_DB_BUILD"

./background_tasks.py
