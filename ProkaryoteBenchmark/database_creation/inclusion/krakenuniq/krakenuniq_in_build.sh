#!/bin/bash

# Reference: https://github.com/fbreitwieser/krakenuniq

# Taxonomy files
cp -r ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy/ /mnt/scratch/jaebeom/gtdb-in/krakenuniq

# copy seqid2taxid.map (sequence id to taxid mapping) to directory containing fasta files for DB build
cp -r /home/jaebeom/metabuli-analysis/ProkaryoteBenchmark/database_creation/inclusion/krakenuniq \
     /mnt/scratch/jaebeom/gtdb-in/genome

~/krakenuniq/krakenuniq-build --db /mnt/scratch/jaebeom/gtdb-in/krakenuniq \
    --library-dir /mnt/scratch/jaebeom/gtdb-in/genome \
    --jellyfish-bin ~/bin/jellyfish-linux \
    --threads 32
