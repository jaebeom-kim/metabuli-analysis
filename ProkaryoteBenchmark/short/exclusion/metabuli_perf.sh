#!/bin/bash
THREADS=$1
RAM=$2
NUM=$3

{ /usr/bin/time time -v  ~/Metabuli-temp/build-new/src/metabuli classify --threads ${THREADS} \
	--max-ram ${RAM} \
	/mnt/scratch/jaebeom/gtdb_202_exclusion/reads.fna_1 \
	/mnt/scratch/jaebeom/gtdb_202_exclusion/reads.fna_2 \
	/mnt/scratch/jaebeom/gtdb_202_exclusion/metabuli20_0510 \
       	/mnt/scratch/jaebeom/gtdb_202_exclusion/metabuli20_0510 \
	perf \
	> /mnt/scratch/jaebeom/gtdb_202_exclusion/metabuli20_0510/${THREADS}_${RAM}_${NUM}_0523.log ;
 } 2> /mnt/scratch/jaebeom/gtdb_202_exclusion/metabuli20_0510/${THREADS}_${RAM}_${NUM}_0523.time
