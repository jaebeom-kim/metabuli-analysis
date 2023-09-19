#!/bin/bash

metabuli classify --threads 32 --seq-mode 3 \
	/fast/jaebeom/long-read/exclusion/prokaryote_exclusion_ont.fq \
	./ \
	/fast/jaebeom/long-read/exclusion/results/metabuli \
	ont \
	 > /fast/jaebeom/long-read/exclusion/results/metabuli/ont.log
