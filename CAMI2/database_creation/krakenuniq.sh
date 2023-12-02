#!/bin/bash

# Reference: https://github.com/fbreitwieser/krakenuniq

# Taxonomy files
cp -r /data3/jaebeom/benchmarks/cami/cami2_taxonomy \
    /data3/jaebeom/benchmarks/cami-gtdb/databases/krakenuniq/taxonomy

cp /data3/jaebeom/benchmarks/cami/ncbi_taxonomy_accession2taxid/nucl_gb.accession2taxid \
    /data3/jaebeom/benchmarks/cami-gtdb/databases/krakenuniq/taxonomy/

# The same sequences used for Metabuli's database was used for KrakenUniq's database
~/krakenuniq/krakenuniq-build --db /data3/jaebeom/benchmarks/cami-gtdb/databases/krakenuniq/ \
    --library-dir /data3/jaebeom/benchmarks/cami-gtdb/databases/metabuli/library \
    --jellyfish-bin ~/bin/jellyfish-linux \
    --threads 32
