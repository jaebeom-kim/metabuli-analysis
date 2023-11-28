#!/bin/bash

# Reference: https://github.com/fbreitwieser/krakenuniq

mkdir -p /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/krakenuniq

# Taxonomy files
cp -r ./taxonomy /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/krakenuniq

# copy seqid2taxid.map (sequence id to taxid mapping) to directory containing fasta files for DB build
cp ./seqid2taxid.map /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/genomes

~/krakenuniq/krakenuniq-build --db /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/krakenuniq \
    --library-dir /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/genomes \
    --jellyfish-bin ~/bin/jellyfish-linux \
    --threads 32
