#!/bin/bash

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
 	/fast/jaebeom/gtdb-ss-exclusion/query/prokaryote_ss-exclusion_ont.fq \
	/fast/jaebeom/gtdb-ss-exclusion/metabuli-db \
	/fast/jaebeom/gtdb-ss-exclusion/results \
	ss-excluison_ont \
	> /fast/jaebeom/gtdb-ss-exclusion/results/ss-excluison_ont.log

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
 	/fast/jaebeom/gtdb-ss-exclusion/query/prokaryote_ss-exclusion_sequel.fq \
	/fast/jaebeom/gtdb-ss-exclusion/metabuli-db \
	/fast/jaebeom/gtdb-ss-exclusion/results \
	ss-excluison_sequel \
	> /fast/jaebeom/gtdb-ss-exclusion/results/ss-excluison_sequel.log

