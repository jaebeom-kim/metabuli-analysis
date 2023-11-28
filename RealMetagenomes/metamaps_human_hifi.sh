#!/bin/bash

# sequel
# { /usr/bin/time time -v ~/bin/MetaMaps/metamaps mapAgainstIndex \
#     --all -t 64 \
#     -i /fast/jaebeom/realdata_benchmarks/databases/metamaps/inclusion+human.idx \
#     -q /fast/jaebeom/realdata_benchmarks/human_hifi/SRR15489017.fastq\
#     -o /fast/jaebeom/realdata_benchmarks/results/metamaps_hifi \
#     > /fast/jaebeom/realdata_benchmarks/results/metamaps_hifi.log1 ;
# } 2> /fast/jaebeom/realdata_benchmarks/results/metamaps_hifi.time1

# { /usr/bin/time time -v  ~/bin/MetaMaps/metamaps classify \
#     -t 32 \
#     --mappings /fast/jaebeom/realdata_benchmarks/results/metamaps_hifi \
#     --DB /fast/jaebeom/realdata_benchmarks/databases/metamaps/
# } 2> /fast/jaebeom/long-read/results/metamaps/inclusion/classify_sequel_ccs.time

~/dev/Metabuli/build-release/src/metabuli mapping2taxon \
    /fast/jaebeom/realdata_benchmarks/results/metamaps_hifi \
    /fast/jaebeom/realdata_benchmarks/databases/metamaps/taxonomy 
