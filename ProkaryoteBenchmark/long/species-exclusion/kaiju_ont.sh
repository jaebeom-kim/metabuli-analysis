#!/bin/bash

~/kaiju_latest/kaiju -t ../metabuli20_0510/taxonomy/nodes.dmp \
	-f ./proteins.fmi \
	-i /fast/jaebeom/long-read/exclusion/ont.fastq \
	-z 32 \
	-o /fast/jaebeom/long-read/exclusion/results/kaiju/ont_result.tsv
