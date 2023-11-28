#!/bin/bash

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 64 --seq-mode 3 \
 	--min-score 0.008 \
 	/fast/jaebeom/gtdb-ss-exclusion/query/prokaryote_ss-exclusion_ont.fq \
	/fast/jaebeom/gtdb-ss-exclusion/metabuli-db \
	/fast/jaebeom/gtdb-ss-exclusion/results \
	ss-excluison_ont_P_1110 \
	> /fast/jaebeom/gtdb-ss-exclusion/results/ss-excluison_ont_P_1110.log

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 64 --seq-mode 3 \
 	--min-score 0.005 \
	/fast/jaebeom/gtdb-ss-exclusion/query/prokaryote_ss-exclusion_sequel.fq \
	/fast/jaebeom/gtdb-ss-exclusion/metabuli-db \
	/fast/jaebeom/gtdb-ss-exclusion/results \
	ss-excluison_sequel_P_1110 \
	> /fast/jaebeom/gtdb-ss-exclusion/results/ss-excluison_sequel_P_1110.log

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 64 --seq-mode 3 \
 	--min-score 0.07 --min-sp-score 0.3 \
	 /fast/jaebeom/long-read/ss-exclusion/prokaryote_ss-exclusion_sequel_ccs.fq \
	/fast/jaebeom/gtdb-ss-exclusion/metabuli-db \
	/fast/jaebeom/gtdb-ss-exclusion/results \
	ss-excluison_sequel_ccs_P_1110 \
	> /fast/jaebeom/gtdb-ss-exclusion/results/ss-excluison_sequel_ccs_P_1110.log
