#!/bin/bash

# Reference: https://github.com/DerrickWood/kraken2/blob/master/docs/MANUAL.markdown

# Taxonomy files
cp -r ../../taxonomy /mnt/scratch/jaebeom/gtdb_202_inclusion/db/kraken2
cp ../../gtdb.accession2taxid /mnt/scratch/jaebeom/gtdb_202_inclusion/db/kraken2/taxonomy/

find /mnt/scratch/jaebeom/gtdb_202_inclusion/genomes/ -name "*.fna" \
    | xargs -0 -I{} -n1 \
    kraken2-build --add-to-library {} \
    --db /mnt/scratch/jaebeom/gtdb_202_inclusion/db/kraken2

# kraken2-build --build --db /mnt/scratch/jaebeom/gtdb_202_inclusion/db/kraken2 \
#     --threads 32