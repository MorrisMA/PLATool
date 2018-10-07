'''
    Program to split a ROM into multiple "words" per line, and create a new file
    to be converted into a PLA using ROM2PLA.py
'''
from math import *

inpFilename = input('Enter filename of input ROM (ASCII binary): ')
splitCount  = input('Enter number of multiples to split each row: ')
outputOrder = input('Enter output order (1 - big-endian, 0 - little-endian): ')
outFilename = input('Enter filename of output ROM (ASCII binary): ')

splitCount  = int(splitCount)
outputOrder = int(outputOrder)

with open(inpFilename, 'rt') as finp:
    lines = finp.readlines()
    
N = len(lines) 
n = int(log2(N))
m = len(lines[0]) - 1

print(N, n, m)

for i in range(N):
    lines[i] = lines[i][:-1]

numOutputs = int(m / splitCount)

with open(outFilename, 'wt') as fout:
    if outputOrder:
        for i in range(N):
            for j in range(splitCount):
                k = j * numOutputs
                l = k + numOutputs
                print(lines[i][k:l], file=fout)
    else:
        for i in range(N):
            for j in range(splitCount):
                k = (splitCount - j - 1) * numOutputs
                l = k + numOutputs
                print(lines[i][k:l], file=fout)
