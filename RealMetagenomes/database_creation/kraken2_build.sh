#!/bin/bash

# Reference: https://github.com/DerrickWood/kraken2/blob/master/docs/MANUAL.markdown

# Taxonomy files
cp -r ~/metabuli-analysis/RealMetagenomes/database_creation/taxonomy \
    /fast/jaebeom/realdata_benchmarks/databases/kraken2

cp ~/metabuli-analysis/RealMetagenomes/database_creation/gtdb+human.accession2taxid \
    /fast/jaebeom/realdata_benchmarks/databases/kraken2/taxonomy/

mkdir -p /fast/jaebeom/realdata_benchmarks/databases/kraken2/library

awk '{print $0}' /mnt/scratch/jaebeom/gtdb_202_inclusion/genome_list.txt | while read -r line; do
    kraken2-build --add-to-library "${line}" \
        --db /fast/jaebeom/realdata_benchmarks/databases/kraken2
done

kraken2-build --add-to-library /fast/databases/metabuli/filteringDB/human/GCF_009914755.1_T2T-CHM13v2.0_genomic.fna \
   --db /fast/jaebeom/realdata_benchmarks/databases/kraken2

kraken2-build --build --db /fast/jaebeom/realdata_benchmarks/databases/kraken2 \
    --threads 32
