#!/bin/bash

# perl ~/bin/MetaMaps/combineAndAnnotateReferences.pl \
#     --inputFileList /home/jaebeom/metabuli-analysis/RealMetagenomes/database_creation/taxid2fasta.txt \
#     --outputFile /fast/jaebeom/realdata_benchmarks/databases/metamaps/output.fna \
#     --taxonomyInDirectory ~/metabuli-analysis/RealMetagenomes/database_creation/taxonomy/ \
#     --taxonomyOutDirectory ~/metabuli-analysis/RealMetagenomes/database_creation/

# perl ~/bin/MetaMaps/buildDB.pl \
#     --DB /fast/jaebeom/realdata_benchmarks/databases/metamaps/ \
#     --FASTAs /fast/jaebeom/realdata_benchmarks/databases/metamaps/output.fna \
#     --taxonomy ~/metabuli-analysis/RealMetagenomes/database_creation/

~/bin/MetaMaps/metamaps index \
    -i /fast/jaebeom/realdata_benchmarks/databases/metamaps/inclusion+human.idx \
    -r /fast/jaebeom/realdata_benchmarks/databases/metamaps/DB.fa \
    -t 32 --mm 128
