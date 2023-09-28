#!/bin/bash

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
 	--min-score 0.008 \
 	/fast/jaebeom/gtdb-ss-exclusion/query/prokaryote_ss-exclusion_ont.fq \
	/fast/jaebeom/gtdb-ss-exclusion/metabuli-db \
	/fast/jaebeom/gtdb-ss-exclusion/results \
	ss-excluison_ont_P \
	> /fast/jaebeom/gtdb-ss-exclusion/results/ss-excluison_ont_P.log

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
 	--min-score 0.0055 \
	/fast/jaebeom/gtdb-ss-exclusion/query/prokaryote_ss-exclusion_sequel.fq \
	/fast/jaebeom/gtdb-ss-exclusion/metabuli-db \
	/fast/jaebeom/gtdb-ss-exclusion/results \
	ss-excluison_sequel_P \
	> /fast/jaebeom/gtdb-ss-exclusion/results/ss-excluison_sequel_P.log



# ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
# 	--min-score 0.008 \
# 	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss-exclusion_ont.fq \
# 	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metabuli \
# 	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metabuli \
# 	ss-exclusion_ont_P \
# 	 > /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metabuli/ont_P.log

# ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 --seq-mode 3 \
# 	--min-score 0.0055 \
# 	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss-exclusion_sequel.fq \
# 	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metabuli \
# 	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metabuli \
# 	ss-exclusion_sequel_P \
# 	 > /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/metabuli/sequel_P.log
