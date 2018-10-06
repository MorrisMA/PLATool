`timescale 1ns / 1ps

module PLA(
    input  Rst,
    input  Clk,
    input  CE,
    input  [5:0] A,
    output reg [47:0] Q
);

wire    [63:0] P;

assign P[ 0] = ~A[0] & ~A[1] & ~A[2] & ~A[3] & ~A[4] & ~A[5];
assign P[ 1] =  A[0] & ~A[1] & ~A[2] & ~A[3] & ~A[4] & ~A[5];
assign P[ 2] = ~A[0] &  A[1] & ~A[2] & ~A[3] & ~A[4] & ~A[5];
assign P[ 3] =  A[0] &  A[1] & ~A[2] & ~A[3] & ~A[4] & ~A[5];
assign P[ 4] = ~A[0] & ~A[1] &  A[2] & ~A[3] & ~A[4] & ~A[5];
assign P[ 5] =  A[0] & ~A[1] &  A[2] & ~A[3] & ~A[4] & ~A[5];
assign P[ 6] = ~A[0] &  A[1] &  A[2] & ~A[3] & ~A[4] & ~A[5];
assign P[ 7] =  A[0] &  A[1] &  A[2] & ~A[3] & ~A[4] & ~A[5];
assign P[ 8] = ~A[0] & ~A[1] & ~A[2] &  A[3] & ~A[4] & ~A[5];
assign P[ 9] =  A[0] & ~A[1] & ~A[2] &  A[3] & ~A[4] & ~A[5];
assign P[10] = ~A[0] &  A[1] & ~A[2] &  A[3] & ~A[4] & ~A[5];
assign P[11] =  A[0] &  A[1] & ~A[2] &  A[3] & ~A[4] & ~A[5];
assign P[12] = ~A[0] & ~A[1] &  A[2] &  A[3] & ~A[4] & ~A[5];
assign P[13] =  A[0] & ~A[1] &  A[2] &  A[3] & ~A[4] & ~A[5];
assign P[14] = ~A[0] &  A[1] &  A[2] &  A[3] & ~A[4] & ~A[5];
assign P[15] =  A[0] &  A[1] &  A[2] &  A[3] & ~A[4] & ~A[5];
assign P[16] = ~A[0] & ~A[1] & ~A[2] & ~A[3] &  A[4] & ~A[5];
assign P[17] =  A[0] & ~A[1] & ~A[2] & ~A[3] &  A[4] & ~A[5];
assign P[18] = ~A[0] &  A[1] & ~A[2] & ~A[3] &  A[4] & ~A[5];
assign P[19] =  A[0] &  A[1] & ~A[2] & ~A[3] &  A[4] & ~A[5];
assign P[20] = ~A[0] & ~A[1] &  A[2] & ~A[3] &  A[4] & ~A[5];
assign P[21] =  A[0] & ~A[1] &  A[2] & ~A[3] &  A[4] & ~A[5];
assign P[22] = ~A[0] &  A[1] &  A[2] & ~A[3] &  A[4] & ~A[5];
assign P[23] =  A[0] &  A[1] &  A[2] & ~A[3] &  A[4] & ~A[5];
assign P[24] = ~A[0] & ~A[1] & ~A[2] &  A[3] &  A[4] & ~A[5];
assign P[25] =  A[0] & ~A[1] & ~A[2] &  A[3] &  A[4] & ~A[5];
assign P[26] = ~A[0] &  A[1] & ~A[2] &  A[3] &  A[4] & ~A[5];
assign P[27] =  A[0] &  A[1] & ~A[2] &  A[3] &  A[4] & ~A[5];
assign P[28] = ~A[0] & ~A[1] &  A[2] &  A[3] &  A[4] & ~A[5];
assign P[29] =  A[0] & ~A[1] &  A[2] &  A[3] &  A[4] & ~A[5];
assign P[30] = ~A[0] &  A[1] &  A[2] &  A[3] &  A[4] & ~A[5];
assign P[31] =  A[0] &  A[1] &  A[2] &  A[3] &  A[4] & ~A[5];
assign P[32] = ~A[0] & ~A[1] & ~A[2] & ~A[3] & ~A[4] &  A[5];
assign P[33] =  A[0] & ~A[1] & ~A[2] & ~A[3] & ~A[4] &  A[5];
assign P[34] = ~A[0] &  A[1] & ~A[2] & ~A[3] & ~A[4] &  A[5];
assign P[35] =  A[0] &  A[1] & ~A[2] & ~A[3] & ~A[4] &  A[5];
assign P[36] = ~A[0] & ~A[1] &  A[2] & ~A[3] & ~A[4] &  A[5];
assign P[37] =  A[0] & ~A[1] &  A[2] & ~A[3] & ~A[4] &  A[5];
assign P[38] = ~A[0] &  A[1] &  A[2] & ~A[3] & ~A[4] &  A[5];
assign P[39] =  A[0] &  A[1] &  A[2] & ~A[3] & ~A[4] &  A[5];
assign P[40] = ~A[0] & ~A[1] & ~A[2] &  A[3] & ~A[4] &  A[5];
assign P[41] =  A[0] & ~A[1] & ~A[2] &  A[3] & ~A[4] &  A[5];
assign P[42] = ~A[0] &  A[1] & ~A[2] &  A[3] & ~A[4] &  A[5];
assign P[43] =  A[0] &  A[1] & ~A[2] &  A[3] & ~A[4] &  A[5];
assign P[44] = ~A[0] & ~A[1] &  A[2] &  A[3] & ~A[4] &  A[5];
assign P[45] =  A[0] & ~A[1] &  A[2] &  A[3] & ~A[4] &  A[5];
assign P[46] = ~A[0] &  A[1] &  A[2] &  A[3] & ~A[4] &  A[5];
assign P[47] =  A[0] &  A[1] &  A[2] &  A[3] & ~A[4] &  A[5];
assign P[48] = ~A[0] & ~A[1] & ~A[2] & ~A[3] &  A[4] &  A[5];
assign P[49] =  A[0] & ~A[1] & ~A[2] & ~A[3] &  A[4] &  A[5];
assign P[50] = ~A[0] &  A[1] & ~A[2] & ~A[3] &  A[4] &  A[5];
assign P[51] =  A[0] &  A[1] & ~A[2] & ~A[3] &  A[4] &  A[5];
assign P[52] = ~A[0] & ~A[1] &  A[2] & ~A[3] &  A[4] &  A[5];
assign P[53] =  A[0] & ~A[1] &  A[2] & ~A[3] &  A[4] &  A[5];
assign P[54] = ~A[0] &  A[1] &  A[2] & ~A[3] &  A[4] &  A[5];
assign P[55] =  A[0] &  A[1] &  A[2] & ~A[3] &  A[4] &  A[5];
assign P[56] = ~A[0] & ~A[1] & ~A[2] &  A[3] &  A[4] &  A[5];
assign P[57] =  A[0] & ~A[1] & ~A[2] &  A[3] &  A[4] &  A[5];
assign P[58] = ~A[0] &  A[1] & ~A[2] &  A[3] &  A[4] &  A[5];
assign P[59] =  A[0] &  A[1] & ~A[2] &  A[3] &  A[4] &  A[5];
assign P[60] = ~A[0] & ~A[1] &  A[2] &  A[3] &  A[4] &  A[5];
assign P[61] =  A[0] & ~A[1] &  A[2] &  A[3] &  A[4] &  A[5];
assign P[62] = ~A[0] &  A[1] &  A[2] &  A[3] &  A[4] &  A[5];
assign P[63] =  A[0] &  A[1] &  A[2] &  A[3] &  A[4] &  A[5];

always @(posedge Clk)
begin
    if(Rst)
        Q <= #1 0;
    else if(CE) begin
        Q[ 0] <= #1 P[ 1] | P[ 2] | P[ 7] | P[ 8];
        Q[ 1] <= #1 P[42];
        Q[ 2] <= #1 P[43];
        Q[ 3] <= #1 P[44];
        Q[ 4] <= #1 P[35] | P[36] | P[37] | P[49] | P[51] | P[53] | P[55] | 
                    P[57] | P[59] | P[61] | P[63];
        Q[ 5] <= #1 P[35] | P[36] | P[37] | P[50] | P[51] | P[54] | P[55] | 
                    P[58] | P[59] | P[62] | P[63];
        Q[ 6] <= #1 P[52] | P[53] | P[54] | P[55] | P[60] | P[61] | P[62] | 
                    P[63];
        Q[ 7] <= #1 P[56] | P[57] | P[58] | P[59] | P[60] | P[61] | P[62] | 
                    P[63];
        Q[ 8] <= #1 P[35] | P[36] | P[37] | P[49] | P[50] | P[51] | P[52] | 
                    P[53] | P[54] | P[55] | P[56] | P[57] | P[58] | P[59] | 
                    P[60] | P[61] | P[62] | P[63];
        Q[ 9] <= #1 P[10];
        Q[10] <= #1 P[11];
        Q[11] <= #1 P[48];
        Q[12] <= #1 P[50];
        Q[13] <= #1 P[ 5] | P[ 6] | P[14] | P[47];
        Q[14] <= #1 P[12] | P[13];
        Q[15] <= #1 P[45] | P[46];
        Q[16] <= #1 P[38] | P[39];
        Q[17] <= #1 P[41];
        Q[18] <= #1 P[11];
        Q[19] <= #1 P[ 6] | P[14];
        Q[20] <= #1 P[ 5] | P[47];
        Q[21] <= #1 P[ 3] | P[ 4] | P[ 9] | P[11] | P[13] | P[15] | P[35] | 
                    P[42] | P[43] | P[44] | P[45] | P[48] | P[49] | P[50] | 
                    P[51] | P[52] | P[53] | P[54] | P[55] | P[56] | P[57] | 
                    P[58] | P[59] | P[60] | P[61] | P[62] | P[63];
        Q[22] <= #1 P[ 1] | P[ 7] | P[36] | P[37] | P[40] | P[46];
        Q[23] <= #1 P[ 2] | P[ 8] | P[10] | P[12];
        Q[24] <= #1 P[36] | P[37];
        Q[25] <= #1 P[ 5] | P[ 6] | P[11] | P[14] | P[38] | P[39] | P[41] | 
                    P[47];
        Q[26] <= #1 P[ 7] | P[ 8] | P[10] | P[12] | P[36] | P[37] | P[40] | 
                    P[46];
        Q[27] <= #1 P[ 1] | P[ 2] | P[ 3] | P[ 4] | P[ 9] | P[13] | P[15] | 
                    P[32] | P[33] | P[35] | P[42] | P[43] | P[44] | P[45] | 
                    P[48] | P[49] | P[50] | P[51] | P[52] | P[53] | P[54] | 
                    P[55] | P[56] | P[57] | P[58] | P[59] | P[60] | P[61] | 
                    P[62] | P[63];
        Q[28] <= #1 P[ 2] | P[ 4] | P[ 8] | P[10] | P[11] | P[12] | P[13] | 
                    P[15] | P[32] | P[33] | P[35] | P[42] | P[43] | P[44] | 
                    P[45] | P[48] | P[49] | P[50] | P[51] | P[52] | P[53] | 
                    P[54] | P[55] | P[56] | P[57] | P[58] | P[59] | P[60] | 
                    P[61] | P[62] | P[63];
        Q[29] <= #1 P[ 5] | P[ 6] | P[14] | P[47];
        Q[30] <= #1 P[ 3] | P[ 9] | P[13] | P[15] | P[36] | P[37] | P[38] | 
                    P[39] | P[40] | P[41] | P[42] | P[43] | P[44] | P[46];
        Q[31] <= #1 P[ 1] | P[ 2] | P[ 7] | P[ 8] | P[10] | P[11] | P[34];
        Q[32] <= #1 P[37] | P[39];
        Q[33] <= #1 P[ 5] | P[ 6] | P[12] | P[14] | P[36] | P[38] | P[40] | 
                    P[41] | P[46] | P[47];
        Q[34] <= #1 P[ 4] | P[15] | P[32] | P[33] | P[35] | P[42] | P[43] | 
                    P[44] | P[45] | P[48] | P[49] | P[50] | P[51] | P[52] | 
                    P[53] | P[54] | P[55] | P[56] | P[57] | P[58] | P[59] | 
                    P[60] | P[61] | P[62] | P[63];
        Q[35] <= #1 P[ 3] | P[ 4] | P[ 9] | P[13] | P[15] | P[32] | P[33] | 
                    P[35] | P[42] | P[43] | P[44] | P[45] | P[48] | P[49] | 
                    P[50] | P[51] | P[52] | P[53] | P[54] | P[55] | P[56] | 
                    P[57] | P[58] | P[59] | P[60] | P[61] | P[62] | P[63];
        Q[36] <= #1 P[ 6] | P[ 7] | P[ 9] | P[13] | P[15] | P[35] | P[41] | 
                    P[49] | P[51] | P[53] | P[55] | P[57] | P[59] | P[61] | 
                    P[63];
        Q[37] <= #1 P[ 1] | P[ 2] | P[ 5] | P[ 6] | P[ 7] | P[14] | P[15] | 
                    P[35] | P[40] | P[41] | P[47] | P[50] | P[51] | P[54] | 
                    P[55] | P[58] | P[59] | P[62] | P[63];
        Q[38] <= #1 P[ 3] | P[ 4] | P[ 5] | P[ 6] | P[ 7] | P[10] | P[11] | 
                    P[12] | P[13] | P[14] | P[15] | P[32] | P[33] | P[36] | 
                    P[37] | P[38] | P[39] | P[42] | P[43] | P[44] | P[45] | 
                    P[46] | P[47] | P[52] | P[53] | P[54] | P[55] | P[60] | 
                    P[61] | P[62] | P[63];
        Q[39] <= #1 P[ 8] | P[ 9] | P[12] | P[13] | P[14] | P[15] | P[40] | 
                    P[41] | P[46] | P[47] | P[56] | P[57] | P[58] | P[59] | 
                    P[60] | P[61] | P[62] | P[63];
        Q[40] <= #1 P[48] | P[49] | P[50] | P[51] | P[52] | P[53] | P[54] | 
                    P[55] | P[56] | P[57] | P[58] | P[59] | P[60] | P[61] | 
                    P[62] | P[63];
        Q[41] <= #1 P[35] | P[48] | P[49] | P[50] | P[51] | P[52] | P[53] | 
                    P[54] | P[55] | P[56] | P[57] | P[58] | P[59] | P[60] | 
                    P[61] | P[62] | P[63];
        Q[42] <= #1 0;
        Q[43] <= #1 0;
        Q[44] <= #1 P[ 3] | P[ 4] | P[ 9] | P[10] | P[11] | P[13] | P[15] | 
                    P[32] | P[33] | P[35] | P[36] | P[37] | P[38] | P[39] | 
                    P[42] | P[43] | P[44] | P[45] | P[48] | P[49] | P[50] | 
                    P[51] | P[52] | P[53] | P[54] | P[55] | P[56] | P[57] | 
                    P[58] | P[59] | P[60] | P[61] | P[62] | P[63];
        Q[45] <= #1 P[ 1] | P[ 2] | P[ 6] | P[ 7] | P[ 8] | P[10] | P[11] | 
                    P[12] | P[14] | P[35] | P[36] | P[37] | P[38] | P[39] | 
                    P[48] | P[49] | P[50] | P[51] | P[52] | P[53] | P[54] | 
                    P[55] | P[56] | P[57] | P[58] | P[59] | P[60] | P[61] | 
                    P[62] | P[63];
        Q[46] <= #1 P[ 2] | P[ 7] | P[ 8] | P[10] | P[11] | P[12] | P[14] | 
                    P[36] | P[37] | P[38] | P[39];
        Q[47] <= #1 0;
    end
end

endmodule