#!/bin/bash

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 64 --seq-mode 3 \
 	/fast/jaebeom/long-read/inclusion/prokaryote_inclusion_ont.fq \
	/fast/jaebeom/gtdb-inclusion-db/databases/metabuli \
	/fast/jaebeom/long-read/results/metabuli \
	inclusion_ont \
	> /fast/jaebeom/long-read/results/metabuli/incluison_ont.log

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
	/fast/jaebeom/long-read/inclusion/prokaryote_inclusion_sequel.fq \
	/fast/jaebeom/gtdb-inclusion-db/databases/metabuli \
	/fast/jaebeom/long-read/results/metabuli \
	inclusion_sequel \
	> /fast/jaebeom/long-read/results/metabuli/incluison_sequel.log