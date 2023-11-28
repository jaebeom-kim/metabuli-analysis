#!/bin/bash

# sourmash sketch dna /fast/jaebeom/long-read/inclusion/prokaryote_inclusion_ont.fq \
#         -p k=31,scaled=1000 \
#         --singleton \
#         -o /fast/jaebeom/long-read/results/sourmash/inclusion/inclusion_ont_reads_singleton.sig.zip

# sourmash lca classify \
#         --scaled 1000 \
#         --query /fast/jaebeom/long-read/results/sourmash/inclusion/inclusion_ont_reads_singleton.sig.zip \
#         --db /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/sourmash/inclusion.lca.js.lca.json \
#         -o /fast/jaebeom/long-read/results/sourmash/inclusion/ont_lca_classify_31-1000.csv 

sourmash gather -k 31 \
        /fast/jaebeom/long-read/results/sourmash/inclusion/signatures/58bd169224221e9924743786b0c50778.sig.gz \
        /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/sourmash/inclusion.lca.js.lca.json \
        -o /fast/jaebeom/long-read/results/sourmash/inclusion/inclusion_ont_1sig_gather.csv 

# found less than 50.0 kbp in common. => exiting

# found 1954 matches total;
# the recovered matches hit 4.1% of the query k-mers (unweighted).

# WARNING: final scaled was 10000, vs query scaled of 1000