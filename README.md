# Bioinformatics Journey

Hands-on bioinformatics learning, built terminal-first (zsh, vim, git). Each project lives in its own folder.

## Structure

    data/                       shared input files (E. coli K-12 genome, query sequence)
    projects/
      ecoli_blast_analysis/     local BLAST search, awk filtering of results, base composition plot
      genome_gc_pipeline/       sliding-window GC content, bash pipeline script, GC vs depth plot
      rnaseq_analysis/          SRA download, FastQC and MultiQC quality reports
    environment.yml             conda environment

## Projects

**ecoli_blast_analysis**: ran blastn locally against E. coli K-12 (U00096.3), parsed tabular output with awk, and plotted base composition with BioPython and matplotlib. See awk_notes.md.

**genome_gc_pipeline**: sliding-window GC content with pandas and numpy, a bash script to automate the steps, and a capstone plot combining GC content with read depth.

**rnaseq_analysis**: downloads RNA-seq runs from SRA and runs quality control with FastQC and MultiQC.

## Setup

    conda env create -f environment.yml
    conda activate pyanalysis

Run scripts from inside their own project folder.
