#!/bin/bash

# Run prodigal to get protein sequences from genomes
# Edit the header of the protein sequences to include taxid
# Format) >sequenceID_taxid
# Merge all the protein sequences into one file > proteins-for-exclusion.faa
# The same file was used for Kaiju

mmseqs creatdb \
        /mnt/scratch/jaebeom/gtdb_202_exclusion/files_for_db/proteins-for-exclusion.faa \
        /mnt/scratch/jaebeom/gtdb_202_exclusion/db/mmseqs2/exclusionDB

mmseqs createtaxdb \
        /mnt/scratch/jaebeom/gtdb_202_exclusion/db/mmseqs2/exclusionDB \
        /mnt/scratch/jaebeom/ \
        --ncbi-tax-dump ../../taxonomy \
        --tax-mapping-file ./seqid2taxid.map 

