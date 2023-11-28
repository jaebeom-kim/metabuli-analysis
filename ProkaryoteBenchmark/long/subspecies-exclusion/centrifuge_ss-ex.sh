#!/bin/bash

centrifuge -x /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/centrifuge/exclusion \
	-q --threads 32 -k 1 \
	--report-file /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/centrifuge/ss-exclusion_ont_report.tsv \
	-U /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss-exclusion_ont.fq \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/centrifuge/ss-exclusion_ont_classifications.tsv

centrifuge -x /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/centrifuge/exclusion \
	-q --threads 32 -k 1 \
	--report-file /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/centrifuge/ss-exclusion_sequel_report.tsv \
	-U /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss-exclusion_sequel.fq \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/centrifuge/ss-exclusion_sequel_classifications.tsv

centrifuge -x /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/centrifuge/exclusion \
	-q --threads 16 -k 1 \
	--report-file /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/centrifuge/ss-exclusion_sequel_ccs_report.tsv \
	-U /fast/jaebeom/long-read/ss-exclusion/prokaryote_ss-exclusion_sequel_ccs.fq \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/centrifuge/ss-exclusion_sequel_ccs_classifications.tsv
