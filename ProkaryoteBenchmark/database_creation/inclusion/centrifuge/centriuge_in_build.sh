#!/bin/bash

# Centrifuge takes single fasta file as input
# So, all the reference genomes was combined into one fasta file
FASTA=/mnt/scratch/jaebeom/gtdb-in/gtdb_202_inclusion_reference_genomes.fna

centrifuge-build \
    --conversion-table ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/inclusion/centrifuge/conversion-table.tsv \
    --taxonomy-tree ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy/nodes.dmp \
    --name-table ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy/names.dmp \
    -p 32 \
    $FASTA \
    /mnt/scratch/jaebeom/gtdb-in/centrifuge/inclusionDB
