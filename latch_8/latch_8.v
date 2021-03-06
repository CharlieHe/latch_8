module  	latch_8(oe,qout,data,clk);
input 		oe;
output[7:0] qout;
input[7:0]  data;
input  		clk;
reg[7:0]  	qout;
always @(clk or data)
begin
	if(oe)
		qout <= 8'hz;
	else
	begin
	if(clk) 
		qout <= data;
	end
end
endmodule

