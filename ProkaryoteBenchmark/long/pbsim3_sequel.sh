#!/bin/bash

FASTALIST=$1

awk -F '/' '{print $0, $7 }' "${FASTALIST}" | while read -r fna assacc; do
	~/pbsim3/src/pbsim --strategy wgs \
		--method errhmm \
		--errhmm ~/pbsim3/data/ERRHMM-SEQUEL.model \
		--depth 3 \
		--genome "${fna}" \
		--prefix "/mnt/scratch/jaebeom/gtdb_202_inclusion/sequel/${assacc}" \
		--id-prefix "${assacc}_"
done
