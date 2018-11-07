module MUX2 (input [15:0]n0,n1,input s1,s0,output [15:0]w);
assign w= (s1) ? n1:(s0)? n0:0;
endmodule