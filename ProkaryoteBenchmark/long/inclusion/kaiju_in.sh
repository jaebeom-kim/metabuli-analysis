#!/bin/bash

# # ont
# ~/kaiju_latest/kaiju -t ../../database_creation/taxonomy/nodes.dmp \
# 	-f /fast/jaebeom/gtdb-inclusion-db/databases/kaiju/kaiju.fmi \
# 	-i /fast/jaebeom/long-read/inclusion/prokaryote_inclusion_ont.fq \
# 	-z 32 \
# 	-o /fast/jaebeom/long-read/results/kaiju/ont_result.tsv

# # sequel
# ~/kaiju_latest/kaiju -t ../../database_creation/taxonomy/nodes.dmp \
# 	-f /fast/jaebeom/gtdb-inclusion-db/databases/kaiju/kaiju.fmi \
# 	-i /fast/jaebeom/long-read/inclusion/prokaryote_inclusion_sequel.fq \
# 	-z 32 \
# 	-o /fast/jaebeom/long-read/results/kaiju/sequel_result.tsv

# sequel ccs
~/kaiju_latest/kaiju -t ../../database_creation/taxonomy/nodes.dmp \
	-f /fast/jaebeom/gtdb-inclusion-db/databases/kaiju/kaiju.fmi \
	-i /fast/jaebeom/long-read/inclusion/prokaryote_inclusion_sequel_ccs.fq \
	-z 32 \
	-o /fast/jaebeom/long-read/results/kaiju/sequel_ccs_result.tsv
