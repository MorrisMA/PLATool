'''
    Program to demonstrate the generation of a Programmable Logic Array (PLA)
    implementation of a microprogram ROM.

    First read in a file. The number of rows in the file is equal to the number
    of product terms to be generated. The number of columns is equal to the
    number of sum terms that are required as outputs of the PLA.

    Second, after defining the product terms (ANDs), for each product term,
    iterate across each row. For each logic 1 in the row, append the product
    term to the corresponding sum terms (ORs), or output equations.
'''
from math import *

inpFilename = input('Enter ROM file to convert to PLA: ')
moduleName  = input('Enter Verilog module name: ')

with open(inpFilename, 'rt') as finp:
    lines = finp.readlines()

N = len(lines) 
n = int(log2(N))
m = len(lines[0]) - 1

print(N, n, m)

for i in range(N):
    lines[i] = lines[i][:-1]

with open(moduleName+'.v', 'wt') as fout:
    print('`timescale 1ns / 1ps', file=fout)
    print(file=fout)
    print('module %s(' %(moduleName), file=fout)
    print(' '*3, 'input  Rst,', file=fout)
    print(' '*3, 'input  Clk,', file=fout)
    print(' '*3, 'input  CE,', file=fout)
    print(' '*3, 'input  [%d:0] A,' % (n - 1), file=fout)
    print(' '*3, 'output reg [%d:0] Q' % (m - 1), file=fout)
    print(');', file=fout)
    print(file=fout)
    print('wire    [%d:0] P;' % (N - 1), file=fout)
    print(file=fout)
    for i in range(N):
        pterm = bin(i)[2:]
        width = len(pterm)
        if width < n:
            pterm = '0'*(n-width)+pterm
        print('assign P[%2d] = ' % (i), end='', file=fout)
        for j in range(n):
            idx = n - j - 1
            if pterm[idx] == '1':
                print(' A[%d]' % j, end='', file=fout)
            else:
                print('~A[%d]' % j, end='', file=fout)
            if j < (n - 1):
                print(' & ', end='', file=fout)
        print(';', file=fout)
    print(file=fout)
    print('always @(posedge Clk)', file=fout)
    print('begin', file=fout)
    print(' '*3, 'if(Rst)', file=fout)
    print(' '*7, 'Q <= #1 0;', file=fout)
    print(' '*3, 'else if(CE) begin', file=fout)

    Q = dict()
    for i in range(m):
        Q[i] = list()

    for i in range(N):
        for j in range(m):
            idx = m - j - 1
            if lines[i][idx] == '1':
                Q[j].append(i)

    for j in range(m):
        K = len(Q[j])
        if K == 0:
            print(' '*7, 'Q[%2d] <= #1 0;' %(j), file=fout)
        else:
            lineLen = 19
            print(' '*7, 'Q[%2d] <= #1 ' % (j), end='', file=fout)
            for k in range(K):
                print('P[%2d]' % (Q[j][k]), end='', file=fout)
                lineLen += 5
                if k < K - 1:
                    print(' | ', end='', file=fout)
                    lineLen += 3
                if lineLen > 72 and k < K - 1:
                    print('\n', ' '*19, end='', file=fout)
                    lineLen = 19
            print(';', file=fout)
        
    print(' '*3, 'end', file=fout)
    print('end', file=fout)
    print(file=fout)
    print('endmodule', file=fout)
