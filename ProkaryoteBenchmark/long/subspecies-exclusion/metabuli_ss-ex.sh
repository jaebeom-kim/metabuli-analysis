#!/bin/bash

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 64 --seq-mode 3 \
 	/fast/jaebeom/gtdb-ss-exclusion/query/prokaryote_ss-exclusion_ont.fq \
	/fast/jaebeom/gtdb-ss-exclusion/metabuli-db \
	/fast/jaebeom/gtdb-ss-exclusion/results \
	ss-excluison_ont_1114 \
	> /fast/jaebeom/gtdb-ss-exclusion/results/ss-excluison_ont_1109-2.log

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 64 --seq-mode 3 \
 	/fast/jaebeom/gtdb-ss-exclusion/query/prokaryote_ss-exclusion_sequel.fq \
	/fast/jaebeom/gtdb-ss-exclusion/metabuli-db \
	/fast/jaebeom/gtdb-ss-exclusion/results \
	ss-excluison_sequel_1114 \
	> /fast/jaebeom/gtdb-ss-exclusion/results/ss-excluison_sequel_1109-2.log

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 64 --seq-mode 3 \
	/fast/jaebeom/long-read/ss-exclusion/prokaryote_ss-exclusion_sequel_ccs.fq \
	/fast/jaebeom/gtdb-ss-exclusion/metabuli-db \
	/fast/jaebeom/gtdb-ss-exclusion/results \
	ss-excluison_sequel_ccs_1114 \
	> /fast/jaebeom/gtdb-ss-exclusion/results/ss-excluison_sequel_ccs_1109-2.log
