#!/usr/bin/env bash

RAW_DATA_DIR="test_data"

cd ..

classified_data="$DATA_DIR/slots_1_to_2"
mkdir -p $classified_data
mkdir $RAW_DATA_DIR

# Good prysm distribution
./load_blocks.py 1 100000 $RAW_DATA_DIR

# Good Lighthouse distribution
./load_blocks.py 3850000 3950000 $RAW_DATA_DIR

# Good Teku distribution
./load_blocks.py 3333000 3433000 $RAW_DATA_DIR

# Good Nimbus distribution
./load_blocks.py 4950000 5050000 $RAW_DATA_DIR

./prepare_training_data.py $RAW_DATA_DIR $classified_data
./classifier.py $classified_data --classify $RAW_DATA_DIR
./build_db.py --db-path $BLOCK_DB --classify-dir $RAW_DATA_DIR --classify $classified_data
