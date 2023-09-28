#!/bin/bash

# Reference: https://github.com/DerrickWood/kraken2/blob/master/docs/MANUAL.markdown

# Run prodigal to get protein sequences from genomes
# Edit the header of the protein sequences to include taxid
# Format) >kraken:taxid|taxid
# Merge all the protein sequences into one file > proteins-for-exclusion_kraken2x.faa

# Taxonomy files
cp -r ../../taxonomy /mnt/scratch/jaebeom/gtdb_202_exclusion/db/kraken2x

kraken2-build --add-to-library --protein \
    /mnt/scratch/jaebeom/gtdb_202_exclusion/files_for_db/proteins-for-exclusion_kraken2x.faa \
    --db /mnt/scratch/jaebeom/gtdb_202_exclusion/db/kraken2x

kraken2-build --build --protein --db /mnt/scratch/jaebeom/gtdb_202_inclusion/db/kraken2x \
    --threads 32