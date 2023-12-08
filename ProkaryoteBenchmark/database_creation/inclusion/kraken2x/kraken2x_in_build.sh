#!/bin/bash

# Reference: https://github.com/DerrickWood/kraken2/blob/master/docs/MANUAL.markdown

# Run prodigal to get protein sequences from genomes
# Edit the header of the protein sequences to include taxid
# Format) >kraken:taxid|taxid
# Merge all the protein sequences into one file > proteins-for-inclusion_kraken2x.faa

# Taxonomy files
cp -r ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy /mnt/scratch/jaebeom/gtdb-in/kraken2x/

mkdir -p /mnt/scratch/jaebeom/gtdb-in/kraken2x/library

kraken2-build --add-to-library \
    /mnt/scratch/jaebeom/gtdb-in/proteins-for-inclusion_kraken2format.faa \
    --db /mnt/scratch/jaebeom/gtdb-in/kraken2x/ --protein

kraken2-build --build  --db /mnt/scratch/jaebeom/gtdb-in/kraken2x \
    --threads 32 --protein



