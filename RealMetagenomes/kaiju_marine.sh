#!/bin/bash

~/kaiju_latest/kaiju -t ../metabuli20_0511/taxonomy/nodes.dmp \
	-f ./kaiju.fmi \
	-i /fast/jaebeom/marine/SRR23604821_1.fastq \
	-j /fast/jaebeom/marine/SRR23604821_2.fastq \
	-z 32 \
	-o /mnt/scratch/jaebeom/real-marine/results/kaiju/result
