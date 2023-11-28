#!/bin/bash

~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
	/fast/jaebeom/long-read/exclusion/prokaryote_exclusion_ont.fq \
	/mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metabuli \
	/fast/jaebeom/long-read/exclusion/results/metabuli \
	metabuli_ont_1114 \
	 > /fast/jaebeom/long-read/exclusion/results/metabuli/ont_1109-2.log

~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
	/fast/jaebeom/long-read/exclusion/prokaryote_exclusion_sequel.fq \
	/mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metabuli \
	/fast/jaebeom/long-read/exclusion/results/metabuli \
	metabuli_sequel_1114 \
	 > /fast/jaebeom/long-read/exclusion/results/metabuli/sequel_1109-2.log

~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
	/fast/jaebeom/long-read/exclusion/prokaryote_sp_exclusion_sequel_ccs.fastq \
	/mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metabuli \
	/fast/jaebeom/long-read/exclusion/results/metabuli \
	metabuli_sequel_ccs_1114 \
	 > /fast/jaebeom/long-read/exclusion/results/metabuli/sequel_ccs_1109-2.log
