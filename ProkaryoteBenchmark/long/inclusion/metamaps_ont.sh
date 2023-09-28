#!/bin/bash

# ~/bin/MetaMaps/metamaps mapDirectly \
#     --all \
#     -t 64 \
#     -r /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metamaps/DB.fa \
#     -q /fast/jaebeom/long-read/inclusion/prokaryote_inclusion_ont.fq \
#     -o /fast/jaebeom/long-read/results/metamaps/inclusion/classification_results \
#     --maxmemory 512 \

# ~/bin/MetaMaps/metamaps classify \
#     -t 64 \
#     --mappings /fast/jaebeom/long-read/results/metamaps/inclusion/classification_results \
#     --DB /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metamaps

{ /usr/bin/time time -v ~/bin/MetaMaps/metamaps mapAgainstIndex \
    --all -t 32 \
    -i /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metamaps/inclusionDB.idx \
    -q /fast/jaebeom/long-read/inclusion/prokaryote_inclusion_ont.fq \
    -o /fast/jaebeom/long-read/results/metamaps/inclusion/ont_result    
    > /fast/jaebeom/long-read/results/metamaps/inclusion/mapAgainstIndex_ont.log ;
} 2> /fast/jaebeom/long-read/results/metamaps/inclusion/mapAgainstIndex_ont.time

{ /usr/bin/time time -v  ~/bin/MetaMaps/metamaps classify \
    -t 32 \
    --mappings /fast/jaebeom/long-read/results/metamaps/inclusion/ont_result \
    --DB /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metamaps 
} 2> /fast/jaebeom/long-read/results/metamaps/inclusion/classify_ont.time



    
