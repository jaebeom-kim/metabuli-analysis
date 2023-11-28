#!/bin/bash

~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
	--min-score 0.008 \
	/fast/jaebeom/long-read/exclusion/prokaryote_exclusion_ont.fq \
	/mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metabuli \
	/fast/jaebeom/long-read/exclusion/results/metabuli \
	metabuli_P_ont_1110 \
	 > /fast/jaebeom/long-read/exclusion/results/metabuli/ont_P_1110.log

~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
	--min-score 0.005 \
	/fast/jaebeom/long-read/exclusion/prokaryote_exclusion_sequel.fq \
	/mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metabuli \
	/fast/jaebeom/long-read/exclusion/results/metabuli \
	metabuli_P_sequel_1110 \
	 > /fast/jaebeom/long-read/exclusion/results/metabuli/sequel_P_1110.log

~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
	--min-score 0.07 --min-sp-score 0.3 \
	/fast/jaebeom/long-read/exclusion/prokaryote_sp_exclusion_sequel_ccs.fastq \
	/mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metabuli \
	/fast/jaebeom/long-read/exclusion/results/metabuli \
	metabuli_P_sequel_ccs_1110 \
	 > /fast/jaebeom/long-read/exclusion/results/metabuli/sequel_ccs_P_1110.log
