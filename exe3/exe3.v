module exe3(op_result, func_sel, op_a, op_b);
output [7:0] op_result;
input [2:0] func_sel;
input [3:0] op_a, op_b;
reg [7:0] op_result;
always @ (func_sel or op_a or op_b)
	begin
case (func_sel)
			3'b000:	op_result <= op_a + op_b;
			3'b001:	op_result <= op_a - op_b;
			3'b010:	op_result <= op_a * op_b;
			3'b011:	op_result <= op_a / op_b;
			3'b100:	op_result <= op_a & op_b;
			3'b101:	op_result <= op_a | op_b;
			3'b110:	op_result <= op_a ^ op_b;
			3'b111:	op_result <= op_a ~^ op_b;
		endcase
	end
endmodule
