#!/bin/bash

# Reference: https://github.com/bioinformatics-centre/kaiju

kaiju-mkbwt -n 32 -a ARNDCQEGHILKMFPOSUTWYVBZXJ \
    -o /mnt/scratch/jaebeom/gtdb_202_inclusion/db/kaiju/inclusionDB \
    /mnt/scratch/jaebeom/gtdb_202_inclusion/files_for_db/proteins-for-inclusion.faa

kaiju-mkfmi /mnt/scratch/jaebeom/gtdb_202_inclusion/db/kaiju/inclusionDB