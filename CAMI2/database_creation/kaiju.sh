#!/bin/bash

# Reference: https://github.com/bioinformatics-centre/kaiju

# Run prodigal to get protein sequences from DNA sequences used for Kraken2's database
# Edit the header of the protein sequences to include taxid
# Format) >sequenceID_taxid
# Merge all the protein sequences into one file > proteins-for-cami_gtdb.faa

kaiju-mkbwt -n 32 -a ARNDCQEGHILKMFPOSUTWYVBZXJ \
    -o /data3/jaebeom/benchmarks/cami-gtdb/databases/kaiju/proteins \
    /data3/jaebeom/benchmarks/cami-gtdb/proteins-for-cami_gtdb.faa

kaiju-mkfmi /data3/jaebeom/benchmarks/cami-gtdb/databases/kaiju/proteins