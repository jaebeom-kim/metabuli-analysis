#!/bin/bash

THREADS=$1
NUM=$2

{ /usr/bin/time time -v mmseqs easy-taxonomy --threads ${THREADS} \
	/mnt/scratch/jaebeom/gtdb_202_exclusion/query/reads_merged.fna \
	/mnt/scratch/jaebeom/gtdb_202_exclusion/databases/mmseqs/seqTaxDB \
	/mnt/scratch/jaebeom/gtdb_202_exclusion/results/mmseqs/ \
	./tmp ;
} 2> /mnt/scratch/jaebeom/gtdb_202_exclusion/results/mmseqs/${THREADS}_${NUM}.time
