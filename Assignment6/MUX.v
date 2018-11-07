module MUX (input [15:0]n0,n1,input s,output [15:0]w);
assign w= (s) ? n1: n0;
endmodule