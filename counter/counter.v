module counter(in,out,clk,reset,load);
parameter N = 22;
input[7:0] in;
output[7:0] out;
input clk;
input reset;
input load;
reg[7:0] out;
always @(posedge clk)
begin
if(reset || out >= N-1)
	out <= 8'h0;
else if(load)
	out <= in;
else
	out <= out+1;
end
endmodule
