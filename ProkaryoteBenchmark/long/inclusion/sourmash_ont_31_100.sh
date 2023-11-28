#!/bin/bash

sourmash sketch dna /fast/jaebeom/long-read/inclusion/prokaryote_inclusion_ont.fq \
        -p k=31,scaled=100 \
        --singleton \
        -o /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/sourmash/inclusion_ont_reads_singleton_31_100.sig.zip

sourmash lca classify \
        --scaled 100 \
        --query /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/sourmash/inclusion_ont_reads_singleton_31_100.sig.zip \
        --db /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/sourmash/inclusion_31_100.lca.json \
        -o /fast/jaebeom/long-read/results/sourmash/inclusion/ont_lca_classify_31-100.csv 

# sourmash gather -k 31 ./prokaryote_inclusion_ont.fq.sig \
#         /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/sourmash/inclusion.lca.json \
#         -o /fast/jaebeom/long-read/results/sourmash/inclusion/inclusion_ont_reads_gather.csv 

# found less than 50.0 kbp in common. => exiting

# found 1954 matches total;
# the recovered matches hit 4.1% of the query k-mers (unweighted).

# WARNING: final scaled was 10000, vs query scaled of 1000