#!/bin/bash

~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
	--min-score 0.008 \
	/fast/jaebeom/long-read/exclusion/prokaryote_exclusion_ont.fq \
	./ \
	/fast/jaebeom/long-read/exclusion/results/metabuli \
	ont_P \
	 > /fast/jaebeom/long-read/exclusion/results/metabuli/ont_P.log

~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
	--min-score 0.006 \
	/fast/jaebeom/long-read/exclusion/prokaryote_exclusion_sequel.fq \
	./ \
	/fast/jaebeom/long-read/exclusion/results/metabuli \
	sequel_P \
	 > /fast/jaebeom/long-read/exclusion/results/metabuli/sequel_P.log
