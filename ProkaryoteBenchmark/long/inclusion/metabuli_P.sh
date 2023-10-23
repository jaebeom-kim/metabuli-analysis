#!/bin/bash

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
 	--min-score 0.008 \
 	/fast/jaebeom/long-read/inclusion/prokaryote_inclusion_ont.fq \
	/fast/jaebeom/gtdb-inclusion-db/databases/metabuli \
	/fast/jaebeom/long-read/results/metabuli \
	inclusion_ont_P \
	> /fast/jaebeom/long-read/results/metabuli/incluison_ont_P.log

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
 	--min-score 0.0055 \
	/fast/jaebeom/long-read/inclusion/prokaryote_inclusion_sequel.fq \
	/fast/jaebeom/gtdb-inclusion-db/databases/metabuli \
	/fast/jaebeom/long-read/results/metabuli \
	inclusion_sequel_P \
	> /fast/jaebeom/long-read/results/metabuli/incluison_sequel_P.log