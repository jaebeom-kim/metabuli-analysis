#!/bin/bash

# DNA: Kraken2
# AA: mmseqs2

# Run kraken2 for all reads
~/kraken2/kraken2 --db /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/kraken2 --paired \
         --report /mnt/scratch/jaebeom/gtdb_202_exclusion/results/ensemble/kraken2_report.tsv \
         --threads 32 \
         --minimum-hit-groups 3 \
         --gzip-compressed \
         /mnt/scratch/jaebeom/gtdb_202_exclusion/query/prokaryote_exclusion_reads_1.fna.gz \
         /mnt/scratch/jaebeom/gtdb_202_exclusion/query/prokaryote_exclusion_reads_2.fna.gz \
         --unclassified-out /mnt/scratch/jaebeom/gtdb_202_exclusion/results/ensemble/kraken2_unclassified#.fna \
         > /mnt/scratch/jaebeom/gtdb_202_exclusion/results/ensemble/kraken2_total_classifications.tsv


# Merge the unclassified reads
awk 'BEGIN{i=0; j=0}
{
        if(NR==FNR){
                arr[i]=$0;
                i++;
        }else{
                if(FNR%2 == 1){
                        print arr[j];
                        j++;
                }else{
                        print arr[j]"NN"$0;
                        j++;
                }
        }
}' /mnt/scratch/jaebeom/gtdb_202_exclusion/results/ensemble/kraken2_unclassified_1.fna \
        /mnt/scratch/jaebeom/gtdb_202_exclusion/results/ensemble/kraken2_unclassified_2.fna \
        > /mnt/scratch/jaebeom/gtdb_202_exclusion/results/ensemble/kraken2_unclassified_merged.fna

# Run mmseqs2 taxonomy for the merged unclassified reads
mmseqs easy-taxonomy --threads 32 \
	/mnt/scratch/jaebeom/gtdb_202_exclusion/results/ensemble/kraken2_unclassified_merged.fna \
	/mnt/scratch/jaebeom/gtdb_202_exclusion/databases/mmseqs/seqTaxDB \
	/mnt/scratch/jaebeom/gtdb_202_exclusion/results/ensemble/mmseqs2 \
	/mnt/scratch/jaebeom 

# Extract classifications of kraken2
awk -F '\t' '{if($1 == "C") print $2"\t"$3}' /mnt/scratch/jaebeom/gtdb_202_exclusion/results/ensemble/kraken2_total_classifications.tsv \
	> /mnt/scratch/jaebeom/gtdb_202_exclusion/results/ensemble/kraken2+mmseqs2_classifications.tsv


awk -F '\t' '{print $1"\t"$2}' /mnt/scratch/jaebeom/gtdb_202_exclusion/results/ensemble/mmseqs2_lca.tsv \
	>> /mnt/scratch/jaebeom/gtdb_202_exclusion/results/ensemble/kraken2+mmseqs2_classifications.tsv
