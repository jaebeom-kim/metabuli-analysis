#!/bin/bash
THREADS=$1
RAM=$2
NUM=$3

{ /usr/bin/time time -v  ~/Metabuli-temp/build-new/src/metabuli classify --threads ${THREADS} \
	--max-ram ${RAM} \
	/mnt/scratch/jaebeom/gtdb_202_inclusion/query/reads.fna_1 \
	/mnt/scratch/jaebeom/gtdb_202_inclusion/query/reads.fna_2 \
	/mnt/scratch/jaebeom/gtdb_202_inclusion/databases/metabuli20_0511 \
       	/mnt/scratch/jaebeom/gtdb_202_inclusion/results/metabuli20 \
	${THREADS}_${RAM}_perf \
	 > /mnt/scratch/jaebeom/gtdb_202_inclusion/results/metabuli20/${THREADS}_${RAM}_${NUM}_0522.log ;
} 2> /mnt/scratch/jaebeom/gtdb_202_inclusion/results/metabuli20/${THREADS}_${RAM}_${NUM}_0522.time
