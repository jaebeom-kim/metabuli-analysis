#!/bin/bash

~/dev/Metabuli/build-release/src/metabuli add-to-library \
    ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/inclusion/metabuli/inclusion_db_genomes.txt \
    ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/inclusion/metabuli/assacc_to_taxid.tsv \
    /mnt/scratch/jaebeom/gtdb_202_inclusion/db/metabuli \
    --taxonomy-path ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
    --assembly true

find /mnt/scratch/jaebeom/gtdb_202_inclusion/db/metabuli/library -name '*.fna' \
    > /mnt/scratch/jaebeom/gtdb_202_inclusion/db/metabuli/library-files.txt

~/dev/Metabuli/build-release/src/metabuli build \
    /mnt/scratch/jaebeom/gtdb_202_inclusion/db/metabuli/ \
    /mnt/scratch/jaebeom/gtdb_202_inclusion/db/metabuli/library-files.txt \
    ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/gtdb.accession2taxid \
    --taxonomy-path ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
    --threads 32 \
    
