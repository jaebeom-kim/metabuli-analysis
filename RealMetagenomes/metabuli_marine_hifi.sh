#!/bin/bash

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
	 /fast/jaebeom/realdata_benchmarks/marine_hifi/ERR4920902.fastq \
	 /fast/jaebeom/realdata_benchmarks/databases/metabuli \
	 /fast/jaebeom/realdata_benchmarks/results \
	 metabuli_marine_hifi_1201
