#!/bin/bash

find /mnt/scratch/jaebeom/gtdb_202_inclusion/db/metabuli/library -name '*.fna' \
    > /fast/jaebeom/realdata_benchmarks/databases/metabuli/library-files.txt

echo "/fast/databases/metabuli/filteringDB/human/GCF_009914755.1_T2T-CHM13v2.0_genomic.fna" >> /fast/jaebeom/realdata_benchmarks/databases/metabuli/library-files.txt

~/dev/Metabuli/build-release/src/metabuli build \
    /fast/jaebeom/realdata_benchmarks/databases/metabuli \
    /fast/jaebeom/realdata_benchmarks/databases/metabuli/library-files.txt \
    ~/metabuli-analysis/RealMetagenomes/database_creation/gtdb+human.accession2taxid \
    --taxonomy-path ~/metabuli-analysis/RealMetagenomes/database_creation/taxonomy \
    --threads 32 \
    
