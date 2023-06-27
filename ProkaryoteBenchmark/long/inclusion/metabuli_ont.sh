#!/bin/bash

metabuli classify --threads 32 --seq-mode 3 \
	/fast/jaebeom/long-read/ont.fastq \
	./ \
	/fast/jaebeom/long-read/results/metabuli \
	ont \
	 > /fast/jaebeom/long-read/results/metabuli/ont.log
