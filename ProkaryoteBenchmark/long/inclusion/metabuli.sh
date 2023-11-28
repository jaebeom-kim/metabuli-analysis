#!/bin/bash

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
 	/fast/jaebeom/long-read/inclusion/prokaryote_inclusion_ont.fq \
	/fast/jaebeom/gtdb-inclusion-db/databases/metabuli \
	/fast/jaebeom/long-read/results/metabuli \
	inclusion_ont_1114 \
	> /fast/jaebeom/long-read/results/metabuli/incluison_ont_1114.log

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
	/fast/jaebeom/long-read/inclusion/prokaryote_inclusion_sequel.fq \
	/fast/jaebeom/gtdb-inclusion-db/databases/metabuli \
	/fast/jaebeom/long-read/results/metabuli \
	inclusion_sequel_1114 \
	> /fast/jaebeom/long-read/results/metabuli/incluison_sequel_1114.log

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
	/fast/jaebeom/long-read/inclusion/prokaryote_inclusion_sequel_ccs.fq \
	/fast/jaebeom/gtdb-inclusion-db/databases/metabuli \
	/fast/jaebeom/long-read/results/metabuli \
	inclusion_sequel_ccs_1114 \
	> /fast/jaebeom/long-read/results/metabuli/incluison_sequel_ccs_1114.log
