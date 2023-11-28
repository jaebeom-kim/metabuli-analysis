#!/bin/bash

~/kaiju_latest/kaiju \
	-t ~/metabuli-analysis/RealMetagenomes/database_creation/taxonomy/nodes.dmp \
	-f /fast/jaebeom/realdata_benchmarks/databases/kaiju/realdataDB.fmi \
	-i /fast/jaebeom/realdata_benchmarks/human_hifi/SRR15489017.fastq \
	-z 32 \
	-o /fast/jaebeom/realdata_benchmarks/kaiju_human_hifi.tsv 
