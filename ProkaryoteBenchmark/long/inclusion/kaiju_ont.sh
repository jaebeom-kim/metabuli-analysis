#!/bin/bash

~/kaiju_latest/kaiju -t ../metabuli20_0511/taxonomy/nodes.dmp \
	-f ./kaiju.fmi \
	-i /fast/jaebeom/long-read/ont.fastq \
	-z 32 \
	-o /fast/jaebeom/long-read/results/kaiju/ont_result.tsv
