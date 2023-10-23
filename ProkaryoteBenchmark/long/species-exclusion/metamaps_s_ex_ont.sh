#!/bin/bash

# { /usr/bin/time time -v ~/bin/MetaMaps/metamaps mapAgainstIndex \
#     --all -t 32 \
#     -i /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metamaps/exclusionDB.idx \
#     -q /fast/jaebeom/long-read/exclusion/prokaryote_exclusion_ont.fq \
#     -o /fast/jaebeom/long-read/results/metamaps/exclusion/ont_result    
#     > /fast/jaebeom/long-read/results/metamaps/exclusion/mapAgainstIndex_ont.log ;
# } 2> /fast/jaebeom/long-read/results/metamaps/exclusion/mapAgainstIndex_ont.time

# { /usr/bin/time time -v  ~/bin/MetaMaps/metamaps classify \
#     -t 32 \
#     --mappings /fast/jaebeom/long-read/results/metamaps/exclusion/ont_result \
#     --DB /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metamaps 
# } 2> /fast/jaebeom/long-read/results/metamaps/exclusion/classify_ont.time

{ /usr/bin/time time -v ~/bin/MetaMaps/metamaps mapAgainstIndex \
    --all -t 32 \
    -i /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metamaps/exclusionDB.idx \
    -q /fast/jaebeom/long-read/exclusion/prokaryote_exclusion_sequel.fq \
    -o /fast/jaebeom/long-read/results/metamaps/exclusion/sequel_result    
    > /fast/jaebeom/long-read/results/metamaps/exclusion/mapAgainstIndex_sequel.log ;
} 2> /fast/jaebeom/long-read/results/metamaps/exclusion/mapAgainstIndex_sequel.time

{ /usr/bin/time time -v  ~/bin/MetaMaps/metamaps classify \
    -t 32 \
    --mappings /fast/jaebeom/long-read/results/metamaps/exclusion/sequel_result \
    --DB /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metamaps 
} 2> /fast/jaebeom/long-read/results/metamaps/exclusion/classify_sequel.time

