#!/usr/bin/env bash

classified_clients="data/mainnet/training/slots_1_to_2"
raw_data="test_data"

cd ..

mkdir -p $classified_clients
mkdir $raw_data

# Good prysm distribution
./load_blocks.py 1 100000 $raw_data

# Good Lighthouse distribution
./load_blocks.py 3850000 3950000 $raw_data

# Good Teku distribution
./load_blocks.py 3333000 3433000 $raw_data

# Good Nimbus distribution
./load_blocks.py 4950000 5050000 $raw_data

./prepare_training_data.py $raw_data $classified_data
./classifier.py $classified_data --classify $raw_data
./build_db.py --db-path $BLOCK_DB --classify-dir $raw_data --classify $classified_data
