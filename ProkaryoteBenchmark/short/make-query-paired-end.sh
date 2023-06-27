#!/bin/bash
FASTALIST=$1
awk -F '/' '{print $0, $2 }' "${FASTALIST}" | while read -r fna assacc; do
	~/mason2-2.0.9-Linux-x86_64/bin/mason_simulator -q --illumina-read-length 150 --illumina-prob-mismatch 0.0011 --illumina-prob-mismatch-begin 0.00055 --illumina-prob-mismatch-end 0.0022 --fragment-mean-size 500 --read-name-prefix "${assacc}_" -ir "${fna}" -n 6150 -o "./reads/${assacc}_1.fasta" -or "./reads/${assacc}_2.fasta"
done

