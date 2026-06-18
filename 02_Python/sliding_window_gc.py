from Bio import SeqIO
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
record = SeqIO.read("/home/octoberespresso/Bioinformatics-Journey/BLAST/ecoli.fasta", "fasta")  
sequence = str(record.seq)

window_size = 1000
results = []
for i in range(0, len(sequence), window_size):
    chunk = sequence[i:i + window_size]
    gc_count = chunk.count("G") + chunk.count("C")
    gc_content = gc_count / len(chunk) * 100
    results.append((i, gc_content))

df = pd.DataFrame(results, columns=["position", "gc_content"])
plt.title("GC Content Across E. coli Genome")
plt.xlabel("Position (bp)")
plt.ylabel("GC Content (%)")
plt.plot(df["position"], df["gc_content"])
plt.savefig("gc_content_plot.png")
plt.show()
print(df.head())
print(len(df))