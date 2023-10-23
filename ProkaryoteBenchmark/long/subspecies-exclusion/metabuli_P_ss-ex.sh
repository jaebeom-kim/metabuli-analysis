#!/bin/bash

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
 	--min-score 0.008 \
 	/fast/jaebeom/gtdb-ss-exclusion/query/prokaryote_ss-exclusion_ont.fq \
	/fast/jaebeom/gtdb-ss-exclusion/metabuli-db \
	/fast/jaebeom/gtdb-ss-exclusion/results \
	ss-excluison_ont_P \
	> /fast/jaebeom/gtdb-ss-exclusion/results/ss-excluison_ont_P.log

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
 	--min-score 0.0055 \
	/fast/jaebeom/gtdb-ss-exclusion/query/prokaryote_ss-exclusion_sequel.fq \
	/fast/jaebeom/gtdb-ss-exclusion/metabuli-db \
	/fast/jaebeom/gtdb-ss-exclusion/results \
	ss-excluison_sequel_P \
	> /fast/jaebeom/gtdb-ss-exclusion/results/ss-excluison_sequel_P.log

