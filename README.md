# Bioinformatics Journey

A hands-on bioinformatics learning repo built from scratch on Linux. 
Working through real genomics tools and writing Python pipelines on the E. coli K-12 genome.

## Projects

### 1. BLAST Analysis
**What I did:** Downloaded the E. coli K-12 genome from NCBI, built a local BLAST nucleotide 
database, and ran a blastn search with a custom query sequence. Parsed tabular output with awk.  
**Tools used:** BLAST, awk, bash  
**Output:** `BLAST/results.txt`

### 2. Sliding Window GC Content
**What I did:** Wrote a Python script to compute GC% across the genome in 1000bp windows, 
stored results in a pandas DataFrame, and plotted GC% vs genomic position with matplotlib.  
**Tools used:** Python, BioPython, numpy, pandas, matplotlib  
**Output:** `02_Python/sliding_window_gc.py`, `02_Python/gc_content_plot.png`
