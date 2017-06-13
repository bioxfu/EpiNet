source ~/Python/pandas/bin/activate

find */*signal.tsv|sed 's/.tsv//'|parallel --gnu 'python tsv_to_npy.py {}'
