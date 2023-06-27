#!/bin/bash

metabuli classify --threads 64 --seq-mode 3 \
	--min-sp-score 0.5 --min-score 0.15 \
	/fast/jaebeom/long-read/inclusion/ont.fastq \
	./ \
	/fast/jaebeom/long-read/results/metabuli \
	ont_P \
	 > /fast/jaebeom/long-read/results/metabuli/ont.log
