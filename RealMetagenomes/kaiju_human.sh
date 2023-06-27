#!/bin/bash

~/kaiju_latest/kaiju -t ../metabuli20_0511/taxonomy/nodes.dmp \
	-f ./kaiju.fmi \
	-i /fast/jaebeom/human/SRR24315757_1.fastq \
	-j /fast/jaebeom/human/SRR24315757_2.fastq \
	-z 32 \
	-o /mnt/scratch/jaebeom/real-human/kaiju/result
