#!/bin/bash

# Reference: https://github.com/bioinformatics-centre/kaiju

# Run prodigal to get protein sequences from genomes
# Edit the header of the protein sequences to include taxid
# Format) >sequenceID_taxid
# Merge all the protein sequences into one file > proteins-for-inclusion.faa

~/kaiju_latest/kaiju-mkbwt -n 32 -a ARNDCQEGHILKMFPOSUTWYVBZXJ \
    -o /mnt/scratch/jaebeom/gtdb-in/kaiju/inclusionDB \
    /mnt/scratch/jaebeom/gtdb-in/proteins-for-inclusion.faa

~/kaiju_latest/kaiju-mkfmi /mnt/scratch/jaebeom/gtdb-in/kaiju/inclusionDB