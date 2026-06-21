import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

gc_df = pd.read_csv("02_Python/gc_content.csv")
depth_df = pd.read_csv("04_samtools/depth.txt", sep="\t", names=["chrom","position", "depth"])
depth_df["window"] = depth_df["position"] // 1000
windowed_depth = depth_df.groupby("window")["depth"].mean()
gc_df["avg_depth"] = windowed_depth.values

fig, ax1 = plt.subplots()

ax1.plot(gc_df["position"], gc_df["gc_content"], color="blue")
ax1.set_ylabel("GC Content (%)", color="blue")

ax2 = ax1.twinx()
ax2.plot(gc_df["position"], gc_df["avg_depth"], color="red")
ax2.set_ylabel("Average Depth", color="red")

plt.title("GC Content and Depth Across E. coli Genome")
plt.savefig("02_Python/capstone_gc_depth.png")

print(windowed_depth.head())
print(depth_df.head())
print(gc_df.head())
