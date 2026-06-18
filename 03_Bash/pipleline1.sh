#!/usr/bin/bash
#this script is to run the pipeline for the project, ie:
#Genome analysis pipeline - runs sliding window GC content analysis on a FASTA file
GENOME="/home/octoberespresso/Bioinformatics-Journey/BLAST/ecoli.fasta"
SCRIPT="/home/octoberespresso/Bioinformatics-Journey/02_Python/sliding_window_gc.py"

if [ -f $GENOME ]; then
    printf "Genome file found"
    python3 $SCRIPT
    else
    printf "Genome file not found"
    fi
