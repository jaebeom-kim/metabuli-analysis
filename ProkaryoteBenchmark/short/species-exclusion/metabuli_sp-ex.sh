#!/bin/bash

~/dev/Metabuli/build-release/src/metabuli classify --threads 32 \
	 /mnt/scratch/jaebeom/gtdb_202_exclusion/query/prokaryote_exclusion_reads_1.fna \
	 /mnt/scratch/jaebeom/gtdb_202_exclusion/query/prokaryote_exclusion_reads_2.fna \
	 /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metabuli \
	 /mnt/scratch/jaebeom/gtdb_202_exclusion/results/metabuli \
	 metabuli_1114 \
	> /mnt/scratch/jaebeom/gtdb_202_exclusion/results/metabuli/metabuli_1114.log 

~/dev/Metabuli/build-master/src/metabuli classify --threads 32 \
	--min-sp-score 0.5 --min-score 0.15 \
	 /mnt/scratch/jaebeom/gtdb_202_exclusion/query/prokaryote_exclusion_reads_1.fna \
	 /mnt/scratch/jaebeom/gtdb_202_exclusion/query/prokaryote_exclusion_reads_2.fna \
	 /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metabuli \
	 /mnt/scratch/jaebeom/gtdb_202_exclusion/results/metabuli \
	 metabuli_P_1114 \
	> /mnt/scratch/jaebeom/gtdb_202_exclusion/results/metabuli/metabuli_P_1114.log 
