#!/bin/bash

~/krakenuniq/krakenuniq --db /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/krakenuniq \
	--report-file /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/krakenuniq/ss-exclusion_ont_report.tsv \
	--threads 32 \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss-exclusion_ont.fq \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/krakenuniq/ss-exclusion_ont_classifications.tsv
	
~/krakenuniq/krakenuniq --db /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/krakenuniq \
	--report-file /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/krakenuniq/ss-exclusion_sequel_report.tsv \
	--threads 32 \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss-exclusion_sequel.fq \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/krakenuniq/ss-exclusion_sequel_classifications.tsv

~/krakenuniq/krakenuniq --db /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/krakenuniq \
	--report-file /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/krakenuniq/ss-exclusion_sequel_ccs_report.tsv \
	--threads 16 \
	/fast/jaebeom/long-read/ss-exclusion/prokaryote_ss-exclusion_sequel_ccs.fq \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/krakenuniq/ss-exclusion_sequel_ccs_classifications.tsv

