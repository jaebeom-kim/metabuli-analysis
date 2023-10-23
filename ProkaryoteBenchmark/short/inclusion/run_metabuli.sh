#!/bin/bash

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 \
 	/fast/jaebeom/inreads.fna_1 \
	/fast/jaebeom/inreads.fna_2 \
	/fast/jaebeom/gtdb-inclusion-db/databases/metabuli \
	/fast/jaebeom/gtdb-inclusion-db/databases/metabuli \
	metabuli

 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 \
 	--min-score 0.15 --min-sp-score 0.5 \
	/fast/jaebeom/inreads.fna_1 \
	/fast/jaebeom/inreads.fna_2 \
	/fast/jaebeom/gtdb-inclusion-db/databases/metabuli \
	/fast/jaebeom/gtdb-inclusion-db/databases/metabuli \
	metabuli_P