#!/bin/bash

mmseqs easy-taxonomy --threads 32 \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss_exclusion_reads_merged.fna \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/mmseqs/ss-exclusionDB \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/mmseqs/ss-exclusion_short \
	/mnt/scratch/jaebeom/ --orf-filter 0
