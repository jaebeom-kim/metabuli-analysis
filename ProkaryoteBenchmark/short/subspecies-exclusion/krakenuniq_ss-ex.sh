#!/bin/bash

~/krakenuniq/krakenuniq --db /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/krakenuniq \
	--report-file /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/krakenuniq/ss-exclusion_short_report.tsv \
	--threads 32 \
	--paired \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss_exclusion_reads_1.fna \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss_exclusion_reads_2.fna \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/krakenuniq/ss-exclusion_short_classifications.tsv
	