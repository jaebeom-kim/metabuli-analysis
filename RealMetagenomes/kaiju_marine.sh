#!/bin/bash

~/kaiju_latest/kaiju \
	-t ~/metabuli-analysis/RealMetagenomes/database_creation/taxonomy/nodes.dmp \
	-f /fast/jaebeom/realdata_benchmarks/databases/kaiju/realdataDB.fmi \
	-i /fast/jaebeom/realdata_benchmarks/marine/SRR23604821_1.fastq \
	-j /fast/jaebeom/realdata_benchmarks/marine/SRR23604821_2.fastq \
	-z 32 \
	-o /fast/jaebeom/realdata_benchmarks/kaiju_marine_short.tsv 
