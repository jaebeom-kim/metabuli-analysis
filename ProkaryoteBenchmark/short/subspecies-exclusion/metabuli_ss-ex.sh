#!/bin/bash

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 \
 	/fast/jaebeom/gtdb-ss-exclusion/query/prokaryote_ss_exclusion_reads_1.fna \
	/fast/jaebeom/gtdb-ss-exclusion/query/prokaryote_ss_exclusion_reads_2.fna \
	/fast/jaebeom/gtdb-ss-exclusion/metabuli-db \
	/fast/jaebeom/gtdb-ss-exclusion/results \
	ss-excluison_short \
	> /fast/jaebeom/gtdb-ss-exclusion/results/ss-excluison_short.log

#  ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 \
#  	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss_exclusion_reads_1.fna \
# 	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss_exclusion_reads_2.fna \
# 	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metabuli \
# 	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metabuli \
# 	ss-excluison_short \
# 	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metabuli/ss-excluison_short.log

#  ~/dev/Metabuli/build-sse/src/metabuli classify --threads 1 --hamming-margin 3 \
#  	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/9997_1.fna \
# 	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/9997_2.fna \
# 	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metabuli_191110 \
# 	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metabuli \
# 	9997_h3_191110 \
# 	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metabuli/9997_h3_191110.log
