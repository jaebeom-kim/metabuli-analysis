#!/bin/bash

~/kraken2/kraken2 --db /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/kraken2 --paired \
         --report /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/kraken2_report.tsv \
         --threads 32 \
         --minimum-hit-groups 3 \
         --gzip-compressed \
         /mnt/scratch/jaebeom/gtdb_202_inclusion/query/prokaryote_inclusion_reads_1.fna.gz \
         /mnt/scratch/jaebeom/gtdb_202_inclusion/query/prokaryote_inclusion_reads_2.fna.gz \
         --unclassified-out /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/kraken2_unclassified#.fna \
         > /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/kraken2_total_classifications.fna

~/kraken2/kraken2 --db /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/kraken2 --paired \
        --report /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/kraken2_classified_report.tsv \
        --threads 32 \
        --minimum-hit-groups 3 \
        /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/kraken2_classified_1.fna \
        /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/kraken2_classified_2.fna \
        > /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/kraken2_classified_classifications.tsv


~/kaiju_latest/kaiju \
        -t /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metabuli20_0511/taxonomy/nodes.dmp \
        -f /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/kaiju_new/proteins.fmi \
        -i /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/kraken2_unclassified_1.fna \
        -j /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/kraken2_unclassified_2.fna \
        -z 32 \
        -o /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/kaiju_classifications.tsv

cat /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/kraken2_classified_classifications.tsv \
    /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/kaiju_classifications.tsv \
    > /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/merged_classifications.tsv