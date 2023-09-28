#!/bin/bash

~/kaiju_latest/kaiju \
	-t ../../database_creation/taxonomy/nodes.dmp \
	-f /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/kaiju/ss-exclusionDB.fmi \
	-i /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss-exclusion_ont.fq \
	-z 32 \
	-o /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/kaiju/ss-exclusion_ont_result.tsv

~/kaiju_latest/kaiju \
	-t ../../database_creation/taxonomy/nodes.dmp \
	-f /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/kaiju/ss-exclusionDB.fmi \
	-i /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss-exclusion_sequel.fq \
	-z 32 \
	-o /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/kaiju/ss-exclusion_sequel_result.tsv
