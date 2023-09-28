#!/bin/bash

# Reference: https://github.com/fbreitwieser/krakenuniq

# Taxonomy files
cp -r ../../taxonomy /mnt/scratch/jaebeom/gtdb_202_exclusion/db/krakenuniq

# copy seqid2taxid.map (sequence id to taxid mapping) to directory containing fasta files for DB build
cp seqid2taxid.map /mnt/scratch/jaebeom/gtdb_202_exclusion/db_genomes

~/krakenuniq/krakenuniq-build --db /mnt/scratch/jaebeom/gtdb_202_exclusion/db/krakenuniq \
    --library-dir /mnt/scratch/jaebeom/gtdb_202_exclusion/db_genomes \
    --threads 32
