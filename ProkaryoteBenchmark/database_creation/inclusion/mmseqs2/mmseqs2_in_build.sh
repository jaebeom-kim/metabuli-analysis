#!/bin/bash

mmseqs createdb \
        /mnt/scratch/jaebeom/gtdb-in/proteins-for-inclusion.faa \
        /mnt/scratch/jaebeom/gtdb-in/mmseqs2/inclusionDB

mmseqs createtaxdb \
        /mnt/scratch/jaebeom/gtdb-in/mmseqs2/inclusionDB \
        /mnt/scratch/jaebeom/ \
        --ncbi-tax-dump ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
        --tax-mapping-file ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/inclusion/mmseqs2/seqid2taxid.map 

