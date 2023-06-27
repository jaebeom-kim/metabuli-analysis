#!/bin/bash
THREADS=$1
NUM=$2
{ /usr/bin/time time -v  ~/kraken2/kraken2 --db /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/kraken2x \
	--paired \
	--report /mnt/scratch/jaebeom/gtdb_202_exclusion/results/kraken2x/perf_report.tsv \
	--threads ${THREADS} \
	--minimum-hit-groups 3 \
	/mnt/scratch/jaebeom/gtdb_202_exclusion/query/reads.fna_1 \
	/mnt/scratch/jaebeom/gtdb_202_exclusion/query/reads.fna_2 \
       	> /mnt/scratch/jaebeom/gtdb_202_exclusion/results/kraken2x/perf_readclassifications.tsv ;
} 2> /mnt/scratch/jaebeom/gtdb_202_exclusion/results/kraken2x/${THREADS}_${NUM}.time

