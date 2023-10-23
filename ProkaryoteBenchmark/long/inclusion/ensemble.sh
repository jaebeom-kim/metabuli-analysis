#!/bin/bash

# DNA: metamaps
# AA: kraken2X

# Run metamaps for all reads
~/bin/MetaMaps/metamaps mapAgainstIndex \
    --all -t 32 \
    -i /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metamaps/inclusionDB.idx \
    -q /fast/jaebeom/long-read/inclusion/prokaryote_inclusion_ont.fq \
    -o /fast/jaebeom/long-read/results/metamaps/inclusion/ont_result    
    > /fast/jaebeom/long-read/results/metamaps/inclusion/mapAgainstIndex_ont.log ;

~/dev/Metabuli/build-release/src mapping2taxon \
    /fast/jaebeom/long-read/results/metamaps/inclusion/ont_result
    /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metamaps/taxonomy

# Make a list of classified reads
awk -F '\t' '{print $1}' /fast/jaebeom/long-read/results/metamaps/inclusion/ont_result.reads2taxon \
    > /fast/jaebeom/long-read/results/ensemble/inclusion/metamaps_classified_reads.txt


# Run kraken2X for all reads -> remove results of reads classified by metamaps
~/kraken2/kraken2 --db /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/kraken2x \
	--report /fast/jaebeom/long-read/results/ensemble/inclusion/kraken2x_ont_report.tsv \
	--threads 32 \
    /fast/jaebeom/long-read/inclusion/prokaryote_inclusion_ont.fq \
	--minimum-hit-groups 3 \
	> /fast/jaebeom/long-read/results/ensemble/inclusion/kraken2x_ont_classifications.tsv \

# Remove reads classified by metamaps
grep -v -F -f /fast/jaebeom/long-read/results/ensemble/inclusion/metamaps_classified_reads.txt \
    /fast/jaebeom/long-read/results/ensemble/inclusion/kraken2x_ont_classifications.tsv \
    > /fast/jaebeom/long-read/results/ensemble/inclusion/kraken2x_ont_classifications_filtered.tsv

# Merge the results of metamaps and kraken2X
awk -F '\t' '{print "C\t"$1"\t"$2}' /fast/jaebeom/long-read/results/metamaps/inclusion/ont_result.reads2taxon \
    > /fast/jaebeom/long-read/results/ensemble/inclusion/metamaps+kraken2x_ont_classifications.tsv

cat /fast/jaebeom/long-read/results/ensemble/inclusion/kraken2x_ont_classifications_filtered.tsv \
    >> /fast/jaebeom/long-read/results/ensemble/inclusion/metamaps+kraken2x_ont_classifications.tsv