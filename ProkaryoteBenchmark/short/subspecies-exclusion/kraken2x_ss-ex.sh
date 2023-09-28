#!/bin/bash

~/kraken2/kraken2 --db /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/kraken2x \
	--report /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/kraken2x/ss-exclusion_short_report.tsv \
	--threads 32 \
	--paired \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss_exclusion_reads_1.fna \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss_exclusion_reads_2.fna \
	--minimum-hit-groups 3 \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/kraken2x/ss-exclusion_short_classifications.tsv
	