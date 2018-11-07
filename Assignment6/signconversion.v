module signconversion (input [15:0]a,output [15:0] aconvert);
assign aconvert=(~a)+1;
endmodule
