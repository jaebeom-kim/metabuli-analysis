#!/bin/bash

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
	 /fast/jaebeom/realdata_benchmarks/human_hifi/SRR15489017.fastq \
	 /fast/jaebeom/realdata_benchmarks/databases/metabuli \
	 /fast/jaebeom/realdata_benchmarks/results \
	 metabuli_human_hifi_1201 
