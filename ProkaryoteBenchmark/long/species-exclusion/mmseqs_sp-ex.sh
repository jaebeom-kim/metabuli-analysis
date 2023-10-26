#!/bin/bash

# mmseqs easy-taxonomy --threads 64 \
# 	/fast/jaebeom/long-read/exclusion/prokaryote_exclusion_ont.fq \
# 	/mnt/scratch/jaebeom/gtdb_202_exclusion/databases/mmseqs/seqTaxDB \
# 	/fast/jaebeom/long-read/exclusion/results/mmseqs2/ont \
# 	/mnt/scratch/jaebeom --orf-filter 0

# mmseqs easy-taxonomy --threads 64 \
# 	/fast/jaebeom/long-read/exclusion/prokaryote_exclusion_sequel.fq \
# 	/mnt/scratch/jaebeom/gtdb_202_exclusion/databases/mmseqs/seqTaxDB \
# 	/fast/jaebeom/long-read/exclusion/results/mmseqs2/sequel \
# 	/mnt/scratch/jaebeom --orf-filter 0

mmseqs easy-taxonomy --threads 32 \
	/fast/jaebeom/long-read/exclusion/prokaryote_sp_exclusion_sequel_ccs.fastq \
	/mnt/scratch/jaebeom/gtdb_202_exclusion/databases/mmseqs/seqTaxDB \
	/fast/jaebeom/long-read/exclusion/results/mmseqs2/sequel_ccs \
	/mnt/scratch/jaebeom --orf-filter 0
