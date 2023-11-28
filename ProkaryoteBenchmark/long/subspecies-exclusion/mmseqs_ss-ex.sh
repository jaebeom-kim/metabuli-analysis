#!/bin/bash

mmseqs easy-taxonomy --threads 32 \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss-exclusion_ont.fq \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/mmseqs/ss-exclusionDB \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/mmseqs/ss-exclusion_ont \
	/mnt/scratch/jaebeom/ --orf-filter 0

mmseqs easy-taxonomy --threads 32 \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss-exclusion_sequel.fq \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/mmseqs/ss-exclusionDB \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/mmseqs/ss-exclusion_sequel \
	/mnt/scratch/jaebeom/ --orf-filter 0

mmseqs easy-taxonomy --threads 32 \
	/fast/jaebeom/long-read/ss-exclusion/prokaryote_ss-exclusion_sequel_ccs.fq \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/mmseqs/ss-exclusionDB \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/mmseqs/ss-exclusion_sequel_ccs \
	/mnt/scratch/jaebeom/ --orf-filter 0
