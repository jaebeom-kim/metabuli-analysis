#!/bin/bash

 ~/Metabuli-temp/build-new/src/metabuli classify --threads 32 \
	 /fast/jaebeom/marine/SRR23604821_1.fastq \
	 /fast/jaebeom/marine/SRR23604821_2.fastq \
	 ./ /mnt/scratch/jaebeom/real-marine/results/metabuli \
	 metabuli \
	 > /mnt/scratch/jaebeom/real-marine/results/metabuli.log
