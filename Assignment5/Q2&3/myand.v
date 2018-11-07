module myand (input [15:0]a,b,output [15:0]w);
genvar i;
generate for (i=0;i<16;i=i+1) begin: my_loop
	assign w[i]= a[i]&b[i];
end
endgenerate
endmodule
