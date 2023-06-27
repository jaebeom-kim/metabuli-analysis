#!/bin/bash
THREADS=$1
NUM=$2

{ /usr/bin/time time -v ~/kaiju_latest/kaiju \
	-t /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metabuli15/taxonomy/nodes.dmp \
	-f /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/kaiju/kaiju.fmi \
	-i /mnt/scratch/jaebeom/gtdb_202_inclusion/query/reads.fna_1 \
	-j /mnt/scratch/jaebeom/gtdb_202_inclusion/query/reads.fna_2 \
	-z ${THREADS} \
	-o /mnt/scratch/jaebeom/gtdb_202_inclusion/results/kaiju/perf.tsv ;
} 2> /mnt/scratch/jaebeom/gtdb_202_inclusion/results/kaiju/${THREADS}_${NUM}.time
