module lktable (input [3:0]a,output [15:0]f);
assign f=(a==3'd0)? 16'b0000000100000000:
			(a==3'd1)? 16'b0000000001010101:
			(a==3'd2)? 16'b0000000001100110:
			(a==3'd3)? 16'b0000000001100111:
			(a==3'd4)? 16'b0000000001100111:
			(a==3'd5)? 16'b0000000001100111:
			(a==3'd6)? 16'b0000000001100111:
			(a==3'd7)? 16'b0000000001100111:0;
			endmodule
				