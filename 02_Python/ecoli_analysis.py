from Bio import SeqIO

# Parse the ecoli genome
record = next(SeqIO.parse("/home/octoberespresso/Bioinformatics-Journey/ecoli.fasta", "fasta"))

print("ID:", record.id)
print("Length:", len(record.seq), "base pairs")
print("First 100 bases:", record.seq[:100])
print("GC content:", round((record.seq.count("G") + record.seq.count("C")) / len(record.seq) * 100, 2), "%")
