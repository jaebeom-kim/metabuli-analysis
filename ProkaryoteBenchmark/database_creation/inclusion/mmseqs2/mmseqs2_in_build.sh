#!/bin/bash

mmseqs creatdb \
        /mnt/scratch/jaebeom/gtdb_202_inclusion/files_for_db/proteins-for-inclusion.faa \
        /mnt/scratch/jaebeom/gtdb_202_inclusion/db/mmseqs2/inclusionDB

mmseqs createtaxdb \
        /mnt/scratch/jaebeom/gtdb_202_inclusion/db/mmseqs2/inclusionDB \
        /mnt/scratch/jaebeom/ \
        --ncbi-tax-dump ../../taxonomy \
        --tax-mapping-file ./seqid2taxid.map 

