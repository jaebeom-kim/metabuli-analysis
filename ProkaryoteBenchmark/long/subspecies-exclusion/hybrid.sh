#!/bin/bash

# Subspecies exclusion _ ONT _ Ensemble

# DNA: KrakenUniq
# AA: Kraken2X

### ==================== ONT ====================== ###
# KrakenUniq for all
~/krakenuniq/krakenuniq --db /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/krakenuniq \
	--report /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq_ont_report.tsv \
	--threads 32 \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss-exclusion_ont.fq \
	--unclassified-out /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq_ont_unclassified.fq \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq_ont_classifications.tsv

# Kraken2x for unclassified 
~/kraken2/kraken2 --db /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/kraken2x \
	--report /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/kraken2x_ont_report.tsv \
	--threads 32 \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq_ont_unclassified.fq \
	--minimum-hit-groups 3 \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/kraken2x_ont_classifications.tsv \

awk -F 	'\t' '{if($1 == "C") print $0}' /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq_ont_classifications.tsv \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq+kraken2x_ont_classifications.tsv

cat /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/kraken2x_ont_classifications.tsv \
	>> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq+kraken2x_ont_classifications.tsv

### ==================== Pacbio sequel ====================== ###
# KrakenUniq for all
~/krakenuniq/krakenuniq --db /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/krakenuniq \
	--report /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq_sequel_report.tsv \
	--threads 32 \
	/fast/jaebeom/long-read/ss-exclusion/prokaryote_ss-exclusion_sequel.fq \
	--unclassified-out /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq_sequel_unclassified.fq \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq_sequel_classifications.tsv

# Kraken2x for unclassified 
~/kraken2/kraken2 --db /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/kraken2x \
	--report /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/kraken2x_sequel_report.tsv \
	--threads 32 \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq_sequel_unclassified.fq \
	--minimum-hit-groups 3 \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/kraken2x_sequel_classifications.tsv \

awk -F 	'\t' '{if($1 == "C") print $0}' /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq_sequel_classifications.tsv \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq+kraken2x_sequel_classifications.tsv

cat /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/kraken2x_sequel_classifications.tsv \
	>> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq+kraken2x_sequel_classifications.tsv

### ==================== Pacbio sequel CCS ====================== ###
# KrakenUniq for all
~/krakenuniq/krakenuniq --db /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/krakenuniq \
	--report /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq_sequel_ccs_report.tsv \
	--threads 32 \
	/fast/jaebeom/long-read/ss-exclusion/prokaryote_ss-exclusion_sequel_ccs.fq \
	--unclassified-out /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq_sequel_ccs_unclassified.fq \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq_sequel_ccs_classifications.tsv

# Kraken2x for unclassified 
~/kraken2/kraken2 --db /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/kraken2x \
	--report /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/kraken2x_sequel_ccs_report.tsv \
	--threads 32 \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq_sequel_ccs_unclassified.fq \
	--minimum-hit-groups 3 \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/kraken2x_sequel_ccs_classifications.tsv \

awk -F 	'\t' '{if($1 == "C") print $0}' /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq_sequel_ccs_classifications.tsv \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq+kraken2x_sequel_ccs_classifications.tsv

cat /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/kraken2x_sequel_ccs_classifications.tsv \
	>> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq+kraken2x_sequel_ccs_classifications.tsv

