#!/bin/bash

mmseqs easy-taxonomy --threads 32 \
	/fast/jaebeom/long-read/inclusion/ont.fastq \
	./sequenceDB \
	/fast/jaebeom/long-read/results/mmseqs2/ont \
	./tmp --orf-filter 0
