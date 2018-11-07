module Q4 (input [3:0] D,N ,output [3:0]W);
	assign #(89,85) W[0]= D[0]&N[0] | D[1]&N[1] | D[2]&N[2] | D[3]&N[3] ;
	assign #(70,68) W[1]= D[1]&N[0] |  D[2]&N[1] |  D[3]&N[2] ;
	assign #(51,51) W[2]= D[2]&N[0] |  D[3]&N[1] ;
	assign #(32,34) W[3]= D[3]&N[0] ;
endmodule