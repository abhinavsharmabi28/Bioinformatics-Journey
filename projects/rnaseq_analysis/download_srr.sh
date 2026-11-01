#!/bin/bash
BASE="https://ftp.sra.ebi.ac.uk/vol1/fastq/SRR108"
OUT=~/Bioinformatics-Journey/05_RNAseq/raw_data

wget "$BASE/207/SRR10868207/SRR10868207_1.fastq.gz" -O "$OUT/SRR10868207_1.fastq.gz"
wget "$BASE/207/SRR10868207/SRR10868207_2.fastq.gz" -O "$OUT/SRR10868207_2.fastq.gz"
wget "$BASE/208/SRR10868208/SRR10868208_1.fastq.gz" -O "$OUT/SRR10868208_1.fastq.gz"
wget "$BASE/208/SRR10868208/SRR10868208_2.fastq.gz" -O "$OUT/SRR10868208_2.fastq.gz"
wget "$BASE/215/SRR10868215/SRR10868215_1.fastq.gz" -O "$OUT/SRR10868215_1.fastq.gz"
wget "$BASE/215/SRR10868215/SRR10868215_2.fastq.gz" -O "$OUT/SRR10868215_2.fastq.gz"
wget "$BASE/216/SRR10868216/SRR10868216_1.fastq.gz" -O "$OUT/SRR10868216_1.fastq.gz"
wget "$BASE/216/SRR10868216/SRR10868216_2.fastq.gz" -O "$OUT/SRR10868216_2.fastq.gz"
wget "$BASE/217/SRR10868217/SRR10868217_1.fastq.gz" -O "$OUT/SRR10868217_1.fastq.gz"
wget "$BASE/217/SRR10868217/SRR10868217_2.fastq.gz" -O "$OUT/SRR10868217_2.fastq.gz"
wget "$BASE/218/SRR10868218/SRR10868218_1.fastq.gz" -O "$OUT/SRR10868218_1.fastq.gz"
wget "$BASE/218/SRR10868218/SRR10868218_2.fastq.gz" -O "$OUT/SRR10868218_2.fastq.gz"

echo "complete!"
