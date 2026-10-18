from Bio import SeqIO

from pathlib import Path
FASTA = Path(__file__).resolve().parent.parent / "BLAST" / "ecoli.fasta"
# Parse the ecoli genome
record = next(SeqIO.parse(FASTA, "fasta"))

print("ID:", record.id)
print("Length:", len(record.seq), "base pairs")
print("First 100 bases:", record.seq[:100])
print("GC content:", round((record.seq.count("G") + record.seq.count("C")) / len(record.seq) * 100, 2), "%")
