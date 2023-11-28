#!/bin/bash

# Centrifuge takes single fasta file as input
# So, all the reference genomes was combined into one fasta file

cat /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/genomes/viral.genomic.filtered.SARS-CoV-2-removed.fna \
    /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/genomes/GCF_009914755.1_T2T-CHM13v2.0_genomic.fna \
    > /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/genomes/viral.genomic.filtered.SARS-CoV-2-removed_with_human.fna

FASTA=/data3/jaebeom/benchmarks/covid_inclusion/db_with_human/genomes/viral.genomic.filtered.SARS-CoV-2-removed_with_human.fna

centrifuge-build \
    --conversion-table seqid2taxid.map \
    --taxonomy-tree ./taxonomy/nodes.dmp \
    --name-table ./taxonomy/names.dmp \
    -p 32 \
    $FASTA \
    /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/centrifuge
