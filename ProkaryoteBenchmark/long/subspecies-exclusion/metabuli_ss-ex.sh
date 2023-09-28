#!/bin/bash

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
 	/fast/jaebeom/gtdb-ss-exclusion/query/prokaryote_ss-exclusion_ont.fq \
	/fast/jaebeom/gtdb-ss-exclusion/metabuli-db \
	/fast/jaebeom/gtdb-ss-exclusion/results \
	ss-excluison_ont \
	> /fast/jaebeom/gtdb-ss-exclusion/results/ss-excluison_ont.log

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
 	/fast/jaebeom/gtdb-ss-exclusion/query/prokaryote_ss-exclusion_sequel.fq \
	/fast/jaebeom/gtdb-ss-exclusion/metabuli-db \
	/fast/jaebeom/gtdb-ss-exclusion/results \
	ss-excluison_sequel \
	> /fast/jaebeom/gtdb-ss-exclusion/results/ss-excluison_sequel.log

# ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
# 	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss-exclusion_ont.fq \
# 	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metabuli \
# 	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metabuli \
# 	ss-exclusion_ont \
# 	 > /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metabuli/ont.log

# ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
# 	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss-exclusion_sequel.fq \
# 	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metabuli \
# 	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metabuli \
# 	ss-exclusion_sequel \
# 	 > /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metabuli/sequel.log
