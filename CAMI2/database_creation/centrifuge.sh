#!/bin/bash

# Centrifuge takes single fasta file as input
# So, all the reference genomes was combined into one fasta file
FASTA=/mnt/scratch/jaebeom/gtdb_202_inclusion/gtdb_202_inclusion_reference_genomes.fna

centrifuge-build \
    --conversion-table seqid2taxid.tsv \
    --taxonomy-tree /data3/jaebeom/benchmarks/cami/cami2_taxonomy/nodes.dmp \
    --name-table /data3/jaebeom/benchmarks/cami/cami2_taxonomy/names.dmp \
    -p 32 \
    $FASTA \
    /data3/jaebeom/benchmarks/cami-gtdb/databases/centrifuge/cami