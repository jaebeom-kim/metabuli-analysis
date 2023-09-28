#!/bin/bash


 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --min-sp-score 0.5 --min-score 0.15 \
 	/fast/jaebeom/gtdb-ss-exclusion/query/prokaryote_ss_exclusion_reads_1.fna \
	/fast/jaebeom/gtdb-ss-exclusion/query/prokaryote_ss_exclusion_reads_2.fna \
	/fast/jaebeom/gtdb-ss-exclusion/metabuli-db \
	/fast/jaebeom/gtdb-ss-exclusion/results \
	ss-excluison_short_P \
	> /fast/jaebeom/gtdb-ss-exclusion/results/ss-excluison_short_P.log
	
#  ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --min-sp-score 0.5 --min-score 0.15 \
#  	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss_exclusion_reads_1.fna \
# 	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss_exclusion_reads_2.fna \
# 	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metabuli \
# 	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metabuli \
# 	ss-excluison_short_P \
# 	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metabuli/ss-excluison_short_P.log
