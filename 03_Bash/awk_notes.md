# Bash/awk basics, filtering BLAST results

## Context
Ran a local blastn search querying a sequence against the E. coli K-12 genome (NCBI accession U00096.3), using BLAST's tabular output format (-outfmt 6) for easier command-line parsing. This format returns 12 columns per hit with no headers, and a full-genome search produces a large number of hits — most not statistically significant. To make the results usable, I needed to filter hits by e-value and extract only the relevant columns instead of scanning every field.

## Working command
Data file:[results.txt](../BLAST/results.txt)

awk '$11 < 1e-10 {print $1, $3, $11}' results.txt
- $1 = query id, $3 = %identity, $11 = e-value
- Filters hits below e-value threshold, prints only those 3 columns

## Output
$1 — query ID

$3 — percent identity

$11 — e-value
