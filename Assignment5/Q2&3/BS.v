module BS (input [15:0]D,N,output [15:0] w);
	genvar i;
	generate for (i=0;i<16;i=i+1)
	begin:my_loop
		assign w=N[i]?(D>>i):16'bz;
	end
	endgenerate
endmodule

