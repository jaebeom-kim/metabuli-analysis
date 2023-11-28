#!/bin/bash

{ /usr/bin/time time -v ~/bin/MetaMaps/metamaps mapAgainstIndex \
    --all -t 64 \
    -i /fast/jaebeom/realdata_benchmarks/databases/metamaps/inclusion+human.idx \
    -q /fast/jaebeom/realdata_benchmarks/marine_hifi/ERR4920902.fastq \
    -o /fast/jaebeom/realdata_benchmarks/results/metamaps_marine_hifi \
    > /fast/jaebeom/realdata_benchmarks/results/metamaps_marine_hifi.log1 ;
} 2> /fast/jaebeom/realdata_benchmarks/results/metamaps_marine_hifi.time1

# { /usr/bin/time time -v  ~/bin/MetaMaps/metamaps classify \
#     -t 32 \
#     --mappings /fast/jaebeom/realdata_benchmarks/results/metamaps_hifi \
#     --DB /fast/jaebeom/realdata_benchmarks/databases/metamaps/
# } 2> /fast/jaebeom/long-read/results/metamaps/inclusion/classify_sequel_ccs.time
