#!/usr/bin/env bash

if $DISABLE_DB_BUILD; then
  echo "DB build disabled: continuing"
else 
  ./create_data_directory.sh
fi

cd ..
source ./venv/bin/activate

echo "Starting the background tasks with the following env values:"
echo "BLOCK_DB: $BLOCK_DB"
echo "DISABLE_DB_BUILD: $DISABLE_DB_BUILD"

./background_tasks.py
