#!/bin/bash
# THREADS=$1
# NUM=$2

# { /usr/bin/time time -v ~/kaiju_latest/kaiju \
# 	-t /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metabuli15/taxonomy/nodes.dmp \
# 	-f /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/kaiju/proteins.fmi \
# 	-i /mnt/scratch/jaebeom/gtdb_202_exclusion/query/reads.fna_1 \
# 	-j /mnt/scratch/jaebeom/gtdb_202_exclusion/query/reads.fna_2 \
# 	-z ${THREADS} \
# 	-o /mnt/scratch/jaebeom/gtdb_202_exclusion/results/kaiju/perf.tsv ;
# } 2> /mnt/scratch/jaebeom/gtdb_202_exclusion/results/kaiju/${THREADS}_${NUM}.time

~/kaiju_latest/kaiju \
	-t ../../database_creation/taxonomy/nodes.dmp \
	-f /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/kaiju/ss-exclusionDB.fmi \
	-i /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss_exclusion_reads_1.fna \
	-j /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss_exclusion_reads_2.fna \
	-o /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/kaiju/ss-exclusion_short_result.tsv \
	-z 32
