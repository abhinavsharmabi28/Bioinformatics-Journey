from Bio import SeqIO
import matplotlib.pyplot as plt
import pandas as pd
x = next(SeqIO.parse("/home/octoberespresso/Bioinformatics-Journey/BLAST/ecoli.fasta","fasta"))
counts = {"A":x.seq.count("A") , "T":x.seq.count("T") , "G":x.seq.count("G") , "C":x.seq.count("C")}
df=pd.DataFrame.from_dict(counts, orient="index")
df.plot.bar(legend=True)
plt.title("E-coli base composition")
plt.ylabel("Base count")
plt.savefig("base_composition.png")
