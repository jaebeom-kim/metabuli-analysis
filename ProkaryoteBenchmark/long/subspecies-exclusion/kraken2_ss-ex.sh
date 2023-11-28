#!/bin/bash

~/kraken2/kraken2 --db /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/kraken2 \
	--report /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/kraken2/ss-exclusion_ont_report.tsv \
	--threads 32 \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss-exclusion_ont.fq \
	--minimum-hit-groups 3 \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/kraken2/ss-exclusion_ont_classifications.tsv

~/kraken2/kraken2 --db /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/kraken2 \
	--report /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/kraken2/ss-exclusion_sequel_report.tsv \
	--threads 32 \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss-exclusion_sequel.fq \
	--minimum-hit-groups 3 \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/kraken2/ss-exclusion_sequel_classifications.tsv

~/kraken2/kraken2 --db /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/kraken2 \
	--report /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/kraken2/ss-exclusion_sequel_report.tsv \
	--threads 16 \
	/fast/jaebeom/long-read/ss-exclusion/prokaryote_ss-exclusion_sequel_ccs.fq \
	--minimum-hit-groups 3 \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/kraken2/ss-exclusion_sequel_ccs_classifications.tsv