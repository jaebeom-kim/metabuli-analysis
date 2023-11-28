#!/bin/bash

sourmash sketch dna /fast/jaebeom/long-read/exclusion/prokaryote_exclusion_ont.fq \
        -p k=31,scaled=100 \
        --singleton \
        -o /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/sourmash/exclusion_ont_reads_singleton_31_100.sig.zip

sourmash lca classify \
        --scaled 100 \
        --query /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/sourmash/exclusion_ont_reads_singleton_31_100.sig.zip \
        --db /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/sourmash/exclusion_31_100.lca.json \
        -o /fast/jaebeom/long-read/results/sourmash/exclusion/ont_lca_classify_31-100.csv 

# sourmash gather -k 31 ./prokaryote_inclusion_ont.fq.sig \
#         /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/sourmash/inclusion.lca.json \
#         -o /fast/jaebeom/long-read/results/sourmash/inclusion/inclusion_ont_reads_gather.csv 
