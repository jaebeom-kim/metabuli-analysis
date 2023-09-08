#!/bin/bash

# 9606 tests/shortHuman1.fa
# 9606 tests/shortHuman2.fa
# 10090 tests/shortMouse.fa

perl ~/bin/MetaMaps/combineAndAnnotateReferences.pl \
    --inputFileList /home/jaebeom/metabuli-analysis/ProkaryoteBenchmark/database_creation/inclusion/metamaps/taxid2fasta.txt \
    --outputFile /home/jaebeom/metabuli-analysis/ProkaryoteBenchmark/database_creation/inclusion/metamaps/output.fna \
    --taxonomyInDirectory /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metabuli20_0511/taxonomy/ \
    --taxonomyOutDirectory /home/jaebeom/metabuli-analysis/ProkaryoteBenchmark/database_creation/inclusion/metamaps 

perl ~/bin/MetaMaps/buildDB.pl \
    --DB /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metamaps \
    --FASTAs /home/jaebeom/metabuli-analysis/ProkaryoteBenchmark/database_creation/inclusion/metamaps/output.fna \
    --taxonomy /home/jaebeom/metabuli-analysis/ProkaryoteBenchmark/database_creation/inclusion/metamaps