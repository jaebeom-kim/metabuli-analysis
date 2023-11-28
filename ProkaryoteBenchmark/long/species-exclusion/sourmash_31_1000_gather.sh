#!/bin/bash

sourmash gather -k 31 --dna \
        /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/sourmash/exclusion_ont_reads_singleton.sig.zip \
        /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/sourmash/exclusion.lca.json \
        -o /fast/jaebeom/long-read/results/sourmash/exclusion/ont_gather_31-1000.csv

# sourmash sketch dna /fast/jaebeom/long-read/exclusion/prokaryote_exclusion_ont.fq \
#         -p k=31,scaled=1000 \
#         --singleton \
#         -o /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/sourmash/exclusion_ont_reads_singleton.sig.zip

# sourmash lca classify \
#         --scaled 1000 \
#         --query /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/sourmash/exclusion_ont_reads_singleton.sig.zip \
#         --db /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/sourmash/exclusion.lca.json \
#         -o /fast/jaebeom/long-read/results/sourmash/exclusion/ont_lca_classify_31-1000.csv 


