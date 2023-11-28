#!/bin/bash

# # ont
# { /usr/bin/time time -v ~/bin/MetaMaps/metamaps mapAgainstIndex \
#     --all -t 32 \
#     -i /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metamaps/inclusionDB.idx \
#     -q /fast/jaebeom/long-read/inclusion/prokaryote_inclusion_ont.fq \
#     -o /fast/jaebeom/long-read/results/metamaps/inclusion/ont_result    
#     > /fast/jaebeom/long-read/results/metamaps/inclusion/mapAgainstIndex_ont.log ;
# } 2> /fast/jaebeom/long-read/results/metamaps/inclusion/mapAgainstIndex_ont.time

# { /usr/bin/time time -v  ~/bin/MetaMaps/metamaps classify \
#     -t 32 \
#     --mappings /fast/jaebeom/long-read/results/metamaps/inclusion/ont_result \
#     --DB /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metamaps 
# } 2> /fast/jaebeom/long-read/results/metamaps/inclusion/classify_ont.time


# # Sequel
# { /usr/bin/time time -v ~/bin/MetaMaps/metamaps mapAgainstIndex \
#     --all -t 32 \
#     -i /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metamaps/inclusionDB.idx \
#     -q /fast/jaebeom/long-read/inclusion/prokaryote_inclusion_sequel.fq \
#     -o /fast/jaebeom/long-read/results/metamaps/inclusion/sequel_result    
#     > /fast/jaebeom/long-read/results/metamaps/inclusion/mapAgainstIndex_sequel.log ;
# } 2> /fast/jaebeom/long-read/results/metamaps/inclusion/mapAgainstIndex_sequel.time

# { /usr/bin/time time -v  ~/bin/MetaMaps/metamaps classify \
#     -t 32 \
#     --mappings /fast/jaebeom/long-read/results/metamaps/inclusion/sequel_result \
#     --DB /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metamaps 
# } 2> /fast/jaebeom/long-read/results/metamaps/inclusion/classify_sequel.time


# sequel ccs
{ /usr/bin/time time -v ~/bin/MetaMaps/metamaps mapAgainstIndex \
    --all -t 32 \
    -i /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metamaps/inclusionDB.idx \
    -q /fast/jaebeom/long-read/inclusion/prokaryote_inclusion_sequel_ccs.fq \
    -o /fast/jaebeom/long-read/results/metamaps/inclusion/sequel_ccs_result    
    > /fast/jaebeom/long-read/results/metamaps/inclusion/mapAgainstIndex_sequel_ccs.log ;
} 2> /fast/jaebeom/long-read/results/metamaps/inclusion/mapAgainstIndex_sequel_ccs.time

{ /usr/bin/time time -v  ~/bin/MetaMaps/metamaps classify \
    -t 32 \
    --mappings /fast/jaebeom/long-read/results/metamaps/inclusion/sequel_ccs_result \
    --DB /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metamaps 
} 2> /fast/jaebeom/long-read/results/metamaps/inclusion/classify_sequel_ccs.time


    
