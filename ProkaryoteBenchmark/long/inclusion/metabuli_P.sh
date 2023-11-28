#!/bin/bash

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
 	--min-score 0.008 \
 	/fast/jaebeom/long-read/inclusion/prokaryote_inclusion_ont.fq \
	/fast/jaebeom/gtdb-inclusion-db/databases/metabuli \
	/fast/jaebeom/long-read/results/metabuli \
	inclusion_ont_P_1114 \
	> /fast/jaebeom/long-read/results/metabuli/incluison_ont_P_1110.log

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
 	--min-score 0.005 \
	/fast/jaebeom/long-read/inclusion/prokaryote_inclusion_sequel.fq \
	/fast/jaebeom/gtdb-inclusion-db/databases/metabuli \
	/fast/jaebeom/long-read/results/metabuli \
	inclusion_sequel_P_1114 \
	> /fast/jaebeom/long-read/results/metabuli/incluison_sequel_P_1110.log

~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
	--min-score 0.07 --min-sp-score 0.3 \
	/fast/jaebeom/long-read/inclusion/prokaryote_inclusion_sequel_ccs.fq \
	/fast/jaebeom/gtdb-inclusion-db/databases/metabuli \
	/fast/jaebeom/long-read/results/metabuli \
	inclusion_sequel_ccs_P_1114 \
	> /fast/jaebeom/long-read/results/metabuli/incluison_sequel_ccs_P_1110.log