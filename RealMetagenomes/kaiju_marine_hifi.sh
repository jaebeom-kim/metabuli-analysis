#!/bin/bash

~/kaiju_latest/kaiju \
	-t ~/metabuli-analysis/RealMetagenomes/database_creation/taxonomy/nodes.dmp \
	-f /fast/jaebeom/realdata_benchmarks/databases/kaiju/realdataDB.fmi \
	-i /fast/jaebeom/realdata_benchmarks/marine_hifi/ERR4920902.fastq \
	-z 32 \
	-o /fast/jaebeom/realdata_benchmarks/results/kaiju_human_hifi.tsv 
