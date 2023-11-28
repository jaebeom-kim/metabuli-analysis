#!/bin/bash

# inclusion
~/dev/Metabuli/build-release/src/metabuli mapping2taxon \
    /fast/jaebeom/long-read/results/metamaps/inclusion/ont_result
    /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metamaps/taxonomy

~/dev/Metabuli/build-release/src/metabuli mapping2taxon \
    /fast/jaebeom/long-read/results/metamaps/inclusion/sequel_result
    /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metamaps/taxonomy

# subspecies exclusion
~/dev/Metabuli/build-release/src/metabuli mapping2taxon \
    /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_sequel_result \
    /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metamaps/taxonomy/

~/dev/Metabuli/build-release/src/metabuli mapping2taxon \
    /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_ont_result \
    /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metamaps/taxonomy/

# species exclusion
~/dev/Metabuli/build-release/src/metabuli mapping2taxon \
    /fast/jaebeom/long-read/results/metamaps/exclusion/ont_result \
    /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metamaps/taxonomy

~/dev/Metabuli/build-release/src/metabuli mapping2taxon \
    /fast/jaebeom/long-read/results/metamaps/exclusion/sequel_result \
    /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metamaps/taxonomy

~/dev/Metabuli/build-release/src/metabuli mapping2taxon \
    /fast/jaebeom/long-read/results/metamaps/exclusion/sequel_ccs_result \
    /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metamaps/taxonomy

~/dev/Metabuli/build-release/src/metabuli mapping2taxon \
    /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metamaps/ss-exclusion_sequel_ccs_result \
    /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metamaps/taxonomy/


