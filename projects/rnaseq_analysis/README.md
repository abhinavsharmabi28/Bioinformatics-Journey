# RNA-seq Pipeline — Zebrafish Liver (Alcohol Exposure vs Withdrawal)

Working through a real RNA-seq dataset end to end for my bioinformatics portfolio.

## Dataset
Public zebrafish study, liver tissue, comparing control vs alcohol withdrawal in
both male and female fish. 8 samples total (2 reps per group). Full metadata in
`sra_run_info.csv`, accessions in `srr_accessions.txt`.

## Done so far
- Downloaded all 8 samples (SRA-tools: prefetch + fasterq-dump)
- FastQC on all 16 fastq files (paired-end)
- MultiQC to aggregate everything into one report

## QC results
- Duplication is high (72-83%) across all samples — normal for RNA-seq, not a red flag.
  Highly expressed genes just get sequenced a lot.
- GC content sits around 45-51%, reasonable for zebrafish liver.
- Read depth varies sample to sample (30-49M reads), also normal for real datasets.
- Nothing looked like an outlier worth tossing.

## Stuff that broke along the way (and how I fixed it)
- ENA's FTP structure needs an extra subfolder for long SRR accessions — it's based
  on the last 2 digits, zero-padded. Cost me a bunch of 404s before I figured it out.
- Old SRA-tools (2.9.6) failed TLS cert checks against NCBI. Upgraded to 3.1.1, fixed.
- Killed a stuck prefetch with `kill -9` once — left stale `.lock` files behind that
  blocked resuming. Had to manually delete them before it would continue.

## Not included here
Raw fastq files aren't in this repo (too big). Rerun `download_srr.sh` or use the
accessions in `srr_accessions.txt` with prefetch/fasterq-dump if you want the data.

## Next up
Trimming → alignment (HISAT2/STAR) → featureCounts → DESeq2 for the actual
differential expression analysis.
