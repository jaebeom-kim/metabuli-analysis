#!/bin/bash

#  ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 \
# 	 /fast/jaebeom/realdata_benchmarks/marine/SRR23604821_1.fastq \
# 	 /fast/jaebeom/realdata_benchmarks/marine/SRR23604821_2.fastq \
# 	 /fast/jaebeom/realdata_benchmarks/databases/metabuli \
# 	 /fast/jaebeom/realdata_benchmarks/results \
# 	 metabuli_marine_short 

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 \
 	--min-score 0.15 --min-sp-score 0.5 \
	 /fast/jaebeom/realdata_benchmarks/marine/SRR23604821_1.fastq \
	 /fast/jaebeom/realdata_benchmarks/marine/SRR23604821_2.fastq \
	 /fast/jaebeom/realdata_benchmarks/databases/metabuli \
	 /fast/jaebeom/realdata_benchmarks/results \
	 metabuli_P_marine_short
