#!/bin/bash

~/bin/MetaMaps/metamaps mapDirectly \
    --all \
    -t 32 \
    -r /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metamaps_small/DB.fa \
    -q /fast/jaebeom/long-read/inclusion/prokaryote_inclusion_ont.fq \
    -o /fast/jaebeom/long-read/results/metamaps/inclusion/classification_results_small \
    --maxmemory 512 \

~/bin/MetaMaps/metamaps classify \
    -t 32 \
    --mappings /fast/jaebeom/long-read/results/metamaps/inclusion/classification_results_small \
    --DB /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metamaps_small


    
