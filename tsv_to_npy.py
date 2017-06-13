import numpy as np
import pandas as pd
import sys

data = []
chunker = pd.read_csv(sys.argv[1]+'.tsv', sep='\t', chunksize=100, header=0)
for piece in chunker:
    data.append(piece.drop(['gene', 'bin'], axis=1).transpose().as_matrix())

data = np.array(data)

print(data.shape)

np.save(sys.argv[1]+'.npy', data)

