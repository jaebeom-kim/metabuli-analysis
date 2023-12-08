#!/bin/bash

# Reference: https://github.com/DerrickWood/kraken2/blob/master/docs/MANUAL.markdown

# Taxonomy files
cp -r  ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy/ /mnt/scratch/jaebeom/gtdb-in/kraken2
cp ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/gtdb.accession2taxid /mnt/scratch/jaebeom/gtdb-in/kraken2/taxonomy/

kraken2-build --add-to-library /mnt/scratch/jaebeom/gtdb-in/gtdb_202_inclusion_reference_genomes.fna \
    --db /mnt/scratch/jaebeom/gtdb-in/kraken2

kraken2-build --build --db /mnt/scratch/jaebeom/gtdb-in/kraken2 \
    --threads 32