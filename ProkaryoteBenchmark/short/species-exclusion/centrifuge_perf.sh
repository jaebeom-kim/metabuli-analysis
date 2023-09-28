#!/bin/bash

THREADS=$1
NUM=$2

{ /usr/bin/time time -v centrifuge -x /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/centrifuge/centri \
       	-f --threads ${THREADS} -k 1 \
	--report-file /mnt/scratch/jaebeom/gtdb_202_exclusion/results/centrifuge/perf_report_${THREADS}.tsv \
	-1 /mnt/scratch/jaebeom/gtdb_202_exclusion/query/reads.fna_1 \
	-2 /mnt/scratch/jaebeom/gtdb_202_exclusion/query/reads.fna_2 \
	> /mnt/scratch/jaebeom/gtdb_202_exclusion/results/centrifuge/perf_${THREADS}_readclassification.tsv ;
} 2> /mnt/scratch/jaebeom/gtdb_202_exclusion/results/centrifuge/${THREADS}_${NUM}.txt
