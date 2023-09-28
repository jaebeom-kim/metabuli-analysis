#!/bin/bash

centrifuge \
	-x /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/centrifuge/exclusion \
    -f --threads 32 -k 1 \
	--report-file /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/centrifuge/ss-exclusion_short_report.tsv \
	-1 /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss_exclusion_reads_1.fna \
	-2 /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss_exclusion_reads_2.fna \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/centrifuge/ss-exclusion_short_classifications.tsv ;
