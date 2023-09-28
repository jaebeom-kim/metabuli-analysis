#!/bin/bash

mmseqs easy-taxonomy --threads 64 \
	/fast/jaebeom/long-read/exclusion/ont.fastq \
	./seqTaxDB \
	/fast/jaebeom/long-read/exclusion/results/mmseqs2/ont \
	./tmp --orf-filter 0
