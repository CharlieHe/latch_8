module BCD(addop1,addop2,cin,out,cout);
input[3:0] addop1,addop2;
input cin;
output[3:0] out;
output cout;
reg[3:0] out;
reg cout;
always@(addop1 or addop2)
begin
cout <= 0;
out = addop1 + addop2 + cin;
if(out>=10)
begin
	out <= out-10;
	cout <= 1;
end
end
endmodule