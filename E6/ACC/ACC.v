`include "Template.v"
`include "Reg8.v"

module ACC(accout,cout,accin,cin,clk,clear);
output[7:0] accout;
output cout;
input[7:0] accin;
input cin,clk,clear;
wire[7:0] sum;
Template accadd8(cout,sum,accout,accin,cin);
Reg8 accreg8(accout,sum,clk,clear);
endmodule

