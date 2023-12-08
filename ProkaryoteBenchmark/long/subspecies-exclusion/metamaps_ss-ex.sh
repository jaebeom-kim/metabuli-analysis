#!/bin/bash

# ont
{ /usr/bin/time time -v ~/bin/MetaMaps/metamaps mapAgainstIndex \
    --all -t 32 \
    -i /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metamaps/exclusionDB.idx \
    -q /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss-exclusion_ont.fq \
    -o /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_ont_result \
    > /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_mapAgainstIndex_ont.log ;
} 2> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_mapAgainstIndex_ont.time

{ /usr/bin/time time -v  ~/bin/MetaMaps/metamaps classify \
    -t 32 \
    --mappings /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_ont_result \
    --DB /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metamaps
} 2> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_classify_ont.time

## sequel
{ /usr/bin/time time -v ~/bin/MetaMaps/metamaps mapAgainstIndex \
    --all -t 32 \
    -i /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metamaps/exclusionDB.idx \
    -q /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss-exclusion_sequel.fq \
    -o /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_sequel_result \
    > /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_mapAgainstIndex_sequel.log ;
} 2> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_mapAgainstIndex_sequel.time

{ /usr/bin/time time -v  ~/bin/MetaMaps/metamaps classify \
    -t 32 \
    --mappings /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_sequel_result \
    --DB /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metamaps
} 2> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_classify_sequel.time

# sequel ccs
{ /usr/bin/time time -v 
~/bin/MetaMaps/metamaps mapAgainstIndex \
    --all -t 32 \
    -i /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metamaps/exclusionDB.idx \
    -q /fast/jaebeom/long-read/ss-exclusion/prokaryote_ss-exclusion_sequel_ccs.fq \
    -o /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_sequel_ccs_result \
    > /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_mapAgainstIndex_sequel_ccs.log 
} 2> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_mapAgainstIndex_sequel_ccs.time

{ /usr/bin/time time -v  
~/bin/MetaMaps/metamaps classify \
    -t 32 \
    --mappings /fast/jaebeom/ssp_exclusion_metamaps_db/metamaps/ss-exclusion_sequel_ccs_result \
    --DB /fast/jaebeom/ssp_exclusion_metamaps_db/metamaps
} 2> /fast/jaebeom/ssp_exclusion_metamaps_db/metamaps/ss-exclusion_classify_sequel_ccs.time
