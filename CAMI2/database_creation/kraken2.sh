#!/bin/bash

# Reference: https://github.com/DerrickWood/kraken2/blob/master/docs/MANUAL.markdown

# Taxonomy files
cp -r /data3/jaebeom/benchmarks/cami/cami2_taxonomy/ /data3/jaebeom/benchmarks/cami-gtdb/databases/kraken2
cp /data3/jaebeom/benchmarks/cami/ncbi_taxonomy_accession2taxid/nucl_gb.accession2taxid \
    /data3/jaebeom/benchmarks/cami-gtdb/databases/kraken2/taxonomy/

find /mnt/scratch/jaebeom/gtdb_202_inclusion/genomes/ -name "*.fna" \
    | xargs -0 -I{} -n1 \
    kraken2-build --add-to-library {} \
    --db /data3/jaebeom/benchmarks/cami-gtdb/databases/kraken2

kraken2-build --build --db /data3/jaebeom/benchmarks/cami-gtdb/databases/kraken2 \
    --threads 32