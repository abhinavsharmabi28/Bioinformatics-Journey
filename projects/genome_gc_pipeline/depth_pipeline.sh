#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
REF=../../data/ecoli.fasta

# install tools if missing
command -v samtools >/dev/null && command -v minimap2 >/dev/null || \
  conda install -y -c bioconda -c conda-forge samtools minimap2

# 1. simulate ~10x coverage of 150 bp reads
python - <<'PY'
import random
from Bio import SeqIO
random.seed(1)
seq = str(next(SeqIO.parse("../../data/ecoli.fasta", "fasta")).seq)
n = len(seq) * 10 // 150
comp = str.maketrans("ACGT", "TGCA")
with open("reads.fq", "w") as f:
    for i in range(n):
        s = random.randint(0, len(seq) - 150)
        r = seq[s:s+150]
        if random.random() < 0.5:
            r = r.translate(comp)[::-1]
        f.write(f"@read{i}\n{r}\n+\n{'I'*150}\n")
PY

# 2. align, sort, index
minimap2 -ax sr "$REF" reads.fq | samtools sort -o reads.sorted.bam
samtools index reads.sorted.bam
samtools flagstat reads.sorted.bam

# 3. depth at every position
samtools depth -a reads.sorted.bam > depth.txt
echo "done: $(wc -l < depth.txt) positions"
