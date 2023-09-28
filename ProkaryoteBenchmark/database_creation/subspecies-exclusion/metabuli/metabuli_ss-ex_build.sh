#!/bin/bash

# ~/dev/Metabuli/build-release/src/metabuli add-to-library \
#     ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/subspecies-exclusion/metabuli/ss-exclusion_db_genomes.txt \
#     ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/subspecies-exclusion/metabuli/assacc_to_taxid.tsv \
#     /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metabuli \
#     --taxonomy-path ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
#     --assembly true

# find /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metabuli/library -name '*.fna' \
#     > /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metabuli/library-files.txt

# ~/dev/Metabuli/build-release/src/metabuli build \
#     /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metabuli/ \
#     /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metabuli/library-files.txt \
#     ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/gtdb.accession2taxid \
#     --taxonomy-path ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
#     --threads 32 \
#     --mask 1 \
#     --mask-prob 0.9 \

~/dev/Metabuli/build-release/src/metabuli build \
    /fast/jaebeom/gtdb-ss-exclusion/metabuli-db/ \
    /fast/jaebeom/gtdb-ss-exclusion/metabuli-db/library-files.txt \
    ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/gtdb.accession2taxid \
    --taxonomy-path ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
    --threads 32 \
    --mask 1 \
    --mask-prob 0.9 \
