#!/usr/bin/env bash

# 1 reference download
docker run --rm \
   -v "$PWD:/work" \
   -w /work \
   docker.io/fgualdr/ngs-curl \
   bash scripts/day1/01_referencegenome.sh

   
chmod -R 777 ./

docker run --rm \
   -v "$PWD:/work" \
   -w /work \
   docker.io/fgualdr/ngs-sra-tools:latest \
   bash scripts/day1/02_download_ena_fastq.sh