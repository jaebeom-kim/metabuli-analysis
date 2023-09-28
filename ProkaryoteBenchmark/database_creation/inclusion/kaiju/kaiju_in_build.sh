#!/bin/bash

# Reference: https://github.com/bioinformatics-centre/kaiju

# Run prodigal to get protein sequences from genomes
# Edit the header of the protein sequences to include taxid
# Format) >sequenceID_taxid
# Merge all the protein sequences into one file > proteins-for-inclusion.faa

kaiju-mkbwt -n 32 -a ARNDCQEGHILKMFPOSUTWYVBZXJ \
    -o /mnt/scratch/jaebeom/gtdb_202_inclusion/db/kaiju/inclusionDB \
    /mnt/scratch/jaebeom/gtdb_202_inclusion/files_for_db/proteins-for-inclusion.faa

kaiju-mkfmi /mnt/scratch/jaebeom/gtdb_202_inclusion/db/kaiju/inclusionDB