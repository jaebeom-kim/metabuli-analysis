#!/bin/bash

# ~/dev/Metabuli/build/src/metabuli add-to-library \
#     ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/exclusion/metabuli/exclusion_db_genomes.txt \
#     ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/exclusion/metabuli/assacc_to_taxid.tsv \
#     /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metabuli \
#     --taxonomy-path ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy

# find /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metabuli -name '*.fna' \
#     > /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metabuli/library-files.txt

~/dev/Metabuli/build/src/metabuli build \
    /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metabuli/ \
    /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metabuli/library-files.txt \
    ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/gtdb.accession2taxid \
    --taxonomy-path ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
    --threads 64 \
    --mask 1 \
    --mask-prob 0.9 \
    --accession-level 1 




