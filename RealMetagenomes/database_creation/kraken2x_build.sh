#!/bin/bash

# Reference: https://github.com/DerrickWood/kraken2/blob/master/docs/MANUAL.markdown

# Run prodigal to get protein sequences from genomes
# Edit the header of the protein sequences to include taxid
# Format) >kraken:taxid|taxid
# Merge all the protein sequences into one file > proteins-for-realdata_kraken2x.faa

# Taxonomy files
cp -r ./taxonomy /fast/jaebeom/realdata_benchmarks/databases/kraken2x

mkdir -p /fast/jaebeom/realdata_benchmarks/databases/kraken2x/library

awk '{if($0 ~ /^>/) {print ">kraken:taxid|10000006"} else {print $0}}' \
    /fast/jaebeom/realdata_benchmarks/databases/kaiju/GCF_009914755.1_T2T-CHM13v2.0_protein.faa \
    > /fast/jaebeom/realdata_benchmarks/databases/kraken2x/9606.faa

kraken2-build --add-to-library /fast/jaebeom/realdata_benchmarks/databases/kraken2x/9606.faa \
    --db /fast/jaebeom/realdata_benchmarks/databases/kraken2x --protein

kraken2-build --add-to-library \
    /fast/jaebeom/gtdb-inclusion-genomes/proteins-for-inclusion_kraken2format.faa \
    --db /fast/jaebeom/realdata_benchmarks/databases/kraken2x --protein

kraken2-build --build --protein --db /fast/jaebeom/realdata_benchmarks/databases/kraken2x \
    --threads 32