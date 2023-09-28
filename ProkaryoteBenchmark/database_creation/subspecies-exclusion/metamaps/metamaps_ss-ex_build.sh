#!/bin/bash

perl ~/bin/MetaMaps/combineAndAnnotateReferences.pl \
    --inputFileList /home/jaebeom/metabuli-analysis/ProkaryoteBenchmark/database_creation/subspecies-exclusion/metamaps/taxid2fasta.txt \
    --outputFile /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metamaps-output.fna \
    --taxonomyInDirectory ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
    --taxonomyOutDirectory ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/subspecies-exclusion/metamaps 

perl ~/bin/MetaMaps/buildDB.pl \
    --DB /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metamaps \
    --FASTAs /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metamaps-output.fna \
    --taxonomy ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/subspecies-exclusion/metamaps

~/bin/MetaMaps/metamaps index \
    -i /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metamaps/exclusionDB.idx \
    -r /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/metamaps/DB.fa \
    -t 32 --mm 256