#!/bin/bash

 ~/Metabuli-temp/build-new/src/metabuli classify --threads 32 --min-sp-score 0.5 --min-score 0.15 \
	 /mnt/scratch/jaebeom/gtdb_202_exclusion/query/reads.fna_1 \
	 /mnt/scratch/jaebeom/gtdb_202_exclusion/query/reads.fna_2 \
	 /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/metabuli20_0510 \
	 /mnt/scratch/jaebeom/gtdb_202_exclusion/results/metabuli20 \
	 metabuli_P_0510 \
	 > filter.log
