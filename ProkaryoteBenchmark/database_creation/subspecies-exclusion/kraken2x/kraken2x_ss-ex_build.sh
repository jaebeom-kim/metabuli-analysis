#!/bin/bash

# Reference: https://github.com/DerrickWood/kraken2/blob/master/docs/MANUAL.markdown

# Run prodigal to get protein sequences from genomes
# Edit the header of the protein sequences to include taxid
# Format) >kraken:taxid|taxid
# Merge all the protein sequences into one file > proteins-for-exclusion_kraken2x.faa

# Taxonomy files
cp -r ../../taxonomy /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/kraken2x

mkdir -p /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/kraken2x/library

~/kraken2/kraken2-build --add-to-library \
    /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/proteins-for-db_kraken2x.faa \
    --db /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/kraken2x \
    --protein

~/kraken2/kraken2-build --build \
    --db /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/kraken2x \
    --threads 32 --protein
