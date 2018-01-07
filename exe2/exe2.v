module exe2(fd_out, clk, d, clr);
output fd_out;
reg fd_out;
input [15:0] d;
input clk, clr;
reg [15:0] cnt;
always @(posedge clk)
begin
if (!clr) 
	cnt <= 4'h0000;
else
	begin
		cnt <= cnt - 1;
		if (cnt==0) 
		begin 
			fd_out <= 1; 
			cnt <= d; 
		end
		else 
			fd_out <= 0;
	end
end
endmodule