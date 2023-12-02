#!/bin/bash

# Reference: https://github.com/DerrickWood/kraken2/blob/master/docs/MANUAL.markdown

# The same protein sequences used for Kaiju's database was used for Kraken2's database

# Taxonomy files
cp -r /data3/jaebeom/benchmarks/cami/cami2_taxonomy/ \
    /data3/jaebeom/benchmarks/cami-gtdb/databases/kraken2x/taxonomy

mkdir -p /data3/jaebeom/benchmarks/cami-gtdb/databases/kraken2x/library

# The header of protein sequences have DNA sequences' accession number from which they were predicted using Progigal
# So, nucl_gb.accession2taxid is used here instead of prot.accession2taxid
cp /data3/jaebeom/benchmarks/cami/ncbi_taxonomy_accession2taxid/nucl_gb.accession2taxid \
    /data3/jaebeom/benchmarks/cami-gtdb/databases/kraken2x/taxonomy/

kraken2-build --add-to-library \
    /data3/jaebeom/benchmarks/cami-gtdb/proteins-for-cami_gtdb.faa \
    --db /data3/jaebeom/benchmarks/cami-gtdb/databases/kraken2x --protein

kraken2-build --build  --db /data3/jaebeom/benchmarks/cami-gtdb/databases/kraken2x/ \
    --threads 32 --protein



