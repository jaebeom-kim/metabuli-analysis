#!/bin/bash

perl ~/bin/MetaMaps/combineAndAnnotateReferences.pl \
    --inputFileList /home/jaebeom/metabuli-analysis/ProkaryoteBenchmark/database_creation/inclusion/metamaps/taxid2fasta.txt \
    --outputFile /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metamaps/output.fna \
    --taxonomyInDirectory /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metabuli20_0511/taxonomy/ \
    --taxonomyOutDirectory /home/jaebeom/metabuli-analysis/ProkaryoteBenchmark/database_creation/inclusion/metamaps 

perl ~/bin/MetaMaps/buildDB.pl \
    --DB /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metamaps \
    --FASTAs /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metamaps/output.fna \
    --taxonomy /home/jaebeom/metabuli-analysis/ProkaryoteBenchmark/database_creation/inclusion/metamaps/ 

~/bin/MetaMaps/metamaps index \
    -i /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metamaps/inclusionDB.idx \
    -r /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metamaps/DB.fa \
    -t 32 --mm 128
