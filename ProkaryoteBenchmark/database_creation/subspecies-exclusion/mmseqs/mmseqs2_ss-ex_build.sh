#!/bin/bash

# Run prodigal to get protein sequences from genomes
# Edit the header of the protein sequences to include taxid
# Format) >sequenceID_taxid
# Merge all the protein sequences into one file > proteins-for-exclusion.faa
# The same file was used for Kaiju

# mmseqs createdb \
#         /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/proteins-for-db.faa \
#         /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/mmseqs/ss-exclusionDB 

# awk -F '\t' '{print $2}' /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/mmseqs/ss-exclusionDB.lookup | \
#         awk -F '_' '{print $0"\t"$2}' \
#         > /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/mmseqs/seqid2taxid.map

mmseqs createtaxdb \
        /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/mmseqs/ss-exclusionDB \
        /mnt/scratch/jaebeom/ \
        --ncbi-tax-dump ../../taxonomy \
        --tax-mapping-file /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/mmseqs/seqid2taxid.map \
        --threads 32