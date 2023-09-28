#!/bin/bash

# Centrifuge takes single fasta file as input
# So, all the reference genomes was combined into one fasta file
FASTA=/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db_genomes.fna

centrifuge-build \
    --conversion-table conversion-table.tsv \
    --taxonomy-tree ../../taxonomy/nodes.dmp \
    --name-table ../../taxonomy/names.dmp \
    -p 32 \
    $FASTA \
    /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/centrifuge/exclusion
