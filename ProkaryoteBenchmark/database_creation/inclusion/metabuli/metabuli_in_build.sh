#!/bin/bash

~/dev/Metabuli/build-release/src/metabuli add-to-library \
    /mnt/scratch/jaebeom/gtdb-in/genome/list.txt \
    ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/gtdb.accession2taxid \
    /mnt/scratch/jaebeom/gtdb-in/metabuli \
    --taxonomy-path ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \

find /mnt/scratch/jaebeom/gtdb-in/metabuli/library -name '*.fna' \
    > /mnt/scratch/jaebeom/gtdb-in/metabuli/library-files.txt

~/dev/Metabuli/build-release/src/metabuli build \
    /mnt/scratch/jaebeom/gtdb-in/metabuli/ \
    /mnt/scratch/jaebeom/gtdb-in/metabuli/library-files.txt \
    ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/gtdb.accession2taxid \
    --taxonomy-path ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
    --threads 32 \
    
