#!/bin/bash

THREADS=$1
NUM=$2

{ /usr/bin/time time -v mmseqs easy-taxonomy --threads ${THREADS} \
	/mnt/scratch/jaebeom/gtdb_202_inclusion/query/reads_merged.fna \
	/mnt/scratch/jaebeom/gtdb_202_inclusion/databases/mmseqs/sequenceDB \
	/mnt/scratch/jaebeom/gtdb_202_inclusion/results/mmseqs/perf \
	./tmp ;
} 2> /mnt/scratch/jaebeom/gtdb_202_inclusion/results/mmseqs/${THREADS}_${NUM}.time
