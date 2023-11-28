#!/bin/bash

# Reference: https://github.com/DerrickWood/kraken2/blob/master/docs/MANUAL.markdown

# Taxonomy files
cp -r ./taxonomy /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/kraken2

mkdir -p /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/kraken2/library

kraken2-build --add-to-library \
    /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/genomes/viral.genomic.filtered.5var.fna \
    --db /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/kraken2

kraken2-build --add-to-library \
    /fast/databases/metabuli/filteringDB/human/GCF_009914755.1_T2T-CHM13v2.0_genomic.fna \
    --db /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/kraken2

kraken2-build --build --db /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/kraken2 \
    --threads 32