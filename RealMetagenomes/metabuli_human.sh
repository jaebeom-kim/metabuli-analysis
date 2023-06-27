#!/bin/bash

 ~/Metabuli-temp/build-new/src/metabuli classify --threads 32 \
	 /fast/jaebeom/human/SRR24315757_1.fastq \
	 /fast/jaebeom/human/SRR24315757_2.fastq \
	 ./ /mnt/scratch/jaebeom/real-human/metabuli \
	 metabuli \
	 > /mnt/scratch/jaebeom/real-human/metabuli/metabuli.log
