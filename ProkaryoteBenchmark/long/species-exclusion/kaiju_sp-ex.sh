#!/bin/bash

# ont
~/kaiju_latest/kaiju \
	-t /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/kraken2/taxonomy/nodes.dmp \
	-f ./proteins.fmi \
	-i /fast/jaebeom/long-read/exclusion/prokaryote_exclusion_ont.fq \
	-z 32 \
	-o /fast/jaebeom/long-read/exclusion/results/kaiju/ont_result.tsv

# sequel
~/kaiju_latest/kaiju \ 
	-t /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/kraken2/taxonomy/nodes.dmp \
	-f /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/kaiju/proteins.fmi \
	-i /fast/jaebeom/long-read/exclusion/prokaryote_exclusion_sequel.fq \
	-z 32 \
	-o /fast/jaebeom/long-read/exclusion/results/kaiju/sequel_result.tsv

# sequel ccs
~/kaiju_latest/kaiju \
	-t /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/kraken2/taxonomy/nodes.dmp \
	-f /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/kaiju/proteins.fmi \
	-i /fast/jaebeom/long-read/exclusion/prokaryote_sp_exclusion_sequel_ccs.fastq \
	-z 32 \
	-o /fast/jaebeom/long-read/exclusion/results/kaiju/sequel_ccs_result.tsv