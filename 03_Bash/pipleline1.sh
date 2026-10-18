#!/usr/bin/env bash
#this script is to run the pipeline for the project, ie:
#Genome analysis pipeline - runs sliding window GC content analysis on a FASTA file
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
GENOME="$SCRIPT_DIR/../BLAST/ecoli.fasta"
SCRIPT="$SCRIPT_DIR/../02_Python/sliding_window_gc.py"

if [ -f $GENOME ]; then
    printf "Genome file found"
    python3 $SCRIPT
    else
    printf "Genome file not found"
    fi
