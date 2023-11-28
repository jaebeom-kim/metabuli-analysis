#!/bin/bash

# Centrifuge takes single fasta file as input
# So, all the reference genomes was combined into one fasta file
mkdir -p /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/centrifuge

cat /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/genomes/viral.genomic.filtered.5var.fna \
    /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/genomes/GCF_009914755.1_T2T-CHM13v2.0_genomic.fna \
    > /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/genomes/viral.genomic.filtered.5var.with_human.fna

FASTA=/data3/jaebeom/benchmarks/covid_inclusion/db_with_human/genomes/viral.genomic.filtered.5var.with_human.fna

centrifuge-build \
    --conversion-table seqid2taxid.map \
    --taxonomy-tree ./taxonomy/nodes.dmp \
    --name-table ./taxonomy/names.dmp \
    -p 32 \
    $FASTA \
    /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/centrifuge
