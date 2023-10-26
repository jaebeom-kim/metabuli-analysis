#!/bin/bash

# ~/dev/Metabuli/build-release/src/metabuli classify --threads 64 --seq-mode 3 \
# 	/fast/jaebeom/long-read/exclusion/prokaryote_exclusion_ont.fq \
# 	/mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metabuli \
# 	/fast/jaebeom/long-read/exclusion/results/metabuli \
# 	metabuli_ont \
# 	 > /fast/jaebeom/long-read/exclusion/results/metabuli/ont.log

# ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
# 	/fast/jaebeom/long-read/exclusion/prokaryote_exclusion_sequel.fq \
# 	/mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metabuli \
# 	/fast/jaebeom/long-read/exclusion/results/metabuli \
# 	metabuli_sequel \
# 	 > /fast/jaebeom/long-read/exclusion/results/metabuli/sequel.log

~/dev/Metabuli/build-release/src/metabuli classify --threads 16 --seq-mode 3 \
	/fast/jaebeom/long-read/exclusion/prokaryote_sp_exclusion_sequel_ccs.fastq \
	/mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metabuli \
	/fast/jaebeom/long-read/exclusion/results/metabuli \
	metabuli_sequel_ccs \
	 > /fast/jaebeom/long-read/exclusion/results/metabuli/sequel_ccs.log