#!/bin/bash

#  ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 \
# 	 /fast/jaebeom/realdata_benchmarks/human/SRR24315757_1.fastq \
# 	 /fast/jaebeom/realdata_benchmarks/human/SRR24315757_2.fastq \
# 	 /fast/jaebeom/realdata_benchmarks/databases/metabuli \
# 	 /fast/jaebeom/realdata_benchmarks/results \
# 	 metabuli_human_short 

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 \
	--min-score 0.15 --min-sp-score 0.5 \
	 /fast/jaebeom/realdata_benchmarks/human/SRR24315757_1.fastq \
	 /fast/jaebeom/realdata_benchmarks/human/SRR24315757_2.fastq \
	 /fast/jaebeom/realdata_benchmarks/databases/metabuli \
	 /fast/jaebeom/realdata_benchmarks/results \
	 metabuli_P_human_short 
