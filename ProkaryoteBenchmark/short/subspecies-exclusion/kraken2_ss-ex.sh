#!/bin/bash
# THREADS=$1
# NUM=$2
# { /usr/bin/time time -v  ~/kraken2/kraken2 \
# 	--db /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/kraken2 --paired \
# 	--report /mnt/scratch/jaebeom/gtdb_202_exclusion/results/kraken2/perf_report.tsv \
# 	--threads ${THREADS} \
#         --minimum-hit-groups 3 \
# 	/mnt/scratch/jaebeom/gtdb_202_exclusion/query/reads.fna_1 \
# 	/mnt/scratch/jaebeom/gtdb_202_exclusion/query/reads.fna_2 \
#        	> /mnt/scratch/jaebeom/gtdb_202_exclusion/results/kraken2/perf_readclassifications.tsv ;
# } 2> /mnt/scratch/jaebeom/gtdb_202_exclusion/results/kraken2/${THREADS}_${NUM}.time

#!/bin/bash

~/kraken2/kraken2 --db /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/kraken2 \
	--report /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/kraken2/ss-exclusion_short_report.tsv \
	--threads 32 \
	--paired \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss_exclusion_reads_1.fna \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss_exclusion_reads_2.fna \
	--minimum-hit-groups 3 \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/kraken2/ss-exclusion_short_classifications.tsv
	