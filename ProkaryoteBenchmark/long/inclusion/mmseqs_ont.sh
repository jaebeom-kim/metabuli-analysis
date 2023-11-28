#!/bin/bash

# mmseqs easy-taxonomy --threads 32 \
# 	/fast/jaebeom/long-read/inclusion/prokaryote_inclusion_ont.fq \
# 	/fast/jaebeom/gtdb-inclusion-db/databases/mmseqs/sequenceDB \
# 	/fast/jaebeom/long-read/results/mmseqs2/ont \
# 	/fast/jaebeom --orf-filter 0

# mmseqs easy-taxonomy --threads 32 \
# 	/fast/jaebeom/long-read/inclusion/prokaryote_inclusion_sequel.fq \
# 	/fast/jaebeom/gtdb-inclusion-db/databases/mmseqs/sequenceDB \
# 	/fast/jaebeom/long-read/results/mmseqs2/sequel \
# 	/fast/jaebeom --orf-filter 0

mmseqs easy-taxonomy --threads 32 \
	/fast/jaebeom/long-read/inclusion/prokaryote_inclusion_sequel_ccs.fq \
	/fast/jaebeom/gtdb-inclusion-db/databases/mmseqs/sequenceDB \
	/fast/jaebeom/long-read/results/mmseqs2/sequel_ccs \
	/fast/jaebeom --orf-filter 0
