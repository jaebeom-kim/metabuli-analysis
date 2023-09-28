#!/bin/bash

# Reference: https://github.com/DerrickWood/kraken2/blob/master/docs/MANUAL.markdown

# Taxonomy files
cp -r ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
    /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/kraken2

cp ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/gtdb.accession2taxid \
    /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/kraken2/taxonomy

find /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db_genomes -name '*.fna' | xargs cat \
    > /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db_genomes_for_kr2.fna

~/kraken2/kraken2-build --add-to-library /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db_genomes_for_kr2.fna \
    --db /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/kraken2

~/kraken2/kraken2-build --build --threads 32 --db /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/kraken2/
    