#!/bin/bash

~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
	--min-score 0.008 \
	/fast/jaebeom/long-read/exclusion/prokaryote_exclusion_ont.fq \
	/mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metabuli \
	/fast/jaebeom/long-read/exclusion/results/metabuli \
	metabuli_P_ont \
	 > /fast/jaebeom/long-read/exclusion/results/metabuli/ont_P.log

~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
	--min-score 0.0055 \
	/fast/jaebeom/long-read/exclusion/prokaryote_exclusion_sequel.fq \
	/mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metabuli \
	/fast/jaebeom/long-read/exclusion/results/metabuli \
	metabuli_P_sequel \
	 > /fast/jaebeom/long-read/exclusion/results/metabuli/sequel_P.log
