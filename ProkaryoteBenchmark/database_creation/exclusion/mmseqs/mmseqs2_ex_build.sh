#!/bin/bash

# Run prodigal to get protein sequences from genomes
# Edit the header of the protein sequences to include taxid
# Format) >sequenceID_taxid
# Merge all the protein sequences into one file > proteins-for-inclusion.faa
# The same file was used for Kaiju

mmseqs creatdb \
        /mnt/scratch/jaebeom/gtdb_202_inclusion/files_for_db/proteins-for-inclusion.faa \
        /mnt/scratch/jaebeom/gtdb_202_inclusion/db/mmseqs2/inclusionDB

mmseqs createtaxdb \
        /mnt/scratch/jaebeom/gtdb_202_inclusion/db/mmseqs2/inclusionDB \
        /mnt/scratch/jaebeom/ \
        --ncbi-tax-dump ../../taxonomy \
        --tax-mapping-file ./seqid2taxid.map 

