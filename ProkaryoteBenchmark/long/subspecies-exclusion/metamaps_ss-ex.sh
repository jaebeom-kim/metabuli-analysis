#!/bin/bash

{ /usr/bin/time time -v ~/bin/MetaMaps/metamaps mapAgainstIndex \
    --all -t 32 \
    -i /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metamaps/exclusionDB.idx \
    -q /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss-exclusion_ont.fq \
    -o /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_ont_result    
    > /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_mapAgainstIndex_ont.log ;
} 2> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_mapAgainstIndex_ont.time

{ /usr/bin/time time -v  ~/bin/MetaMaps/metamaps classify \
    -t 32 \
    --mappings /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_ont_result \
    --DB /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metamaps
} 2> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_classify_ont.time

{ /usr/bin/time time -v ~/bin/MetaMaps/metamaps mapAgainstIndex \
    --all -t 32 \
    -i /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metamaps/exclusionDB.idx \
    -q /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss-exclusion_sequel.fq \
    -o /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_sequel_result    
    > /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_mapAgainstIndex_sequel.log ;
} 2> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_mapAgainstIndex_sequel.time

{ /usr/bin/time time -v  ~/bin/MetaMaps/metamaps classify \
    -t 32 \
    --mappings /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_sequel_result \
    --DB /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metamaps
} 2> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_classify_sequel.time