#!/bin/bash
THREADS=$1
NUM=$2

{ /usr/bin/time time -v  ~/krakenuniq/krakenuniq \
	--db /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/krakenuniq --paired \
	--report-file /mnt/scratch/jaebeom/gtdb_202_inclusion/results/krakenuniq/perf_report.tsv \
	--threads ${THREADS} \
	/mnt/scratch/jaebeom/gtdb_202_inclusion/query/reads.fna_1 \
	/mnt/scratch/jaebeom/gtdb_202_inclusion/query/reads.fna_2 \
       	> /mnt/scratch/jaebeom/gtdb_202_inclusion/results/krakenuniq/perf_readclassifications.tsv ;
} 2> /mnt/scratch/jaebeom/gtdb_202_inclusion/results/krakenuniq/${THREADS}_${NUM}.time

