#!/bin/bash

~/bin/MetaMaps/metamaps mapDirectly \
    --all \
    -t 32 \
    -r /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metamaps/DB.fa \
    -q /fast/jaebeom/long-read/inclusion/prokaryote_inclusion_ont.fq \
    -o /fast/jaebeom/long-read/results/classification_results

~/bin/MetaMaps/metamaps classify \
    -t 32 \
    --mappings /fast/jaebeom/long-read/results/classification_results \
    --DB /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metamaps


    