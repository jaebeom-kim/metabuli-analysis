#!/bin/bash

~/bin/MetaMaps/metamaps mapDirectly \
    --all \
    -t 64 \
    -r /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metamaps/DB.fa \
    -q /fast/jaebeom/long-read/inclusion/prokaryote_inclusion_ont.fq \
    -o /fast/jaebeom/long-read/results/metamaps/inclusion/classification_results \
    --maxmemory 512 \

~/bin/MetaMaps/metamaps classify \
    -t 64 \
    --mappings /fast/jaebeom/long-read/results/metamaps/inclusion/classification_results \
    --DB /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metamaps


    
