#!/bin/bash

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 \
 	/fast/jaebeom/gtdb-ss-exclusion/query/prokaryote_ss_exclusion_reads_1.fna \
	/fast/jaebeom/gtdb-ss-exclusion/query/prokaryote_ss_exclusion_reads_2.fna \
	/fast/jaebeom/gtdb-ss-exclusion/metabuli-db \
	/fast/jaebeom/gtdb-ss-exclusion/results \
	ss-excluison_short_1114 \
	> /fast/jaebeom/gtdb-ss-exclusion/results/ss-excluison_short_1114.log


#  ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --min-sp-score 0.5 --min-score 0.15 \
#  	/fast/jaebeom/gtdb-ss-exclusion/query/prokaryote_ss_exclusion_reads_1.fna \
# 	/fast/jaebeom/gtdb-ss-exclusion/query/prokaryote_ss_exclusion_reads_2.fna \
# 	/fast/jaebeom/gtdb-ss-exclusion/metabuli-db \
# 	/fast/jaebeom/gtdb-ss-exclusion/results \
# 	ss-excluison_short_P_1114 \
# 	> /fast/jaebeom/gtdb-ss-exclusion/results/ss-excluison_short_P_1114.log
