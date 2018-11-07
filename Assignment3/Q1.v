module BS #(parameter size = 16)(input [size-1:0]D,N,output [size-1:0] w);
	genvar i;
	generate for (i=0;i<size;i=i+1)
		assign #(20*size) w= N[i] ? (D>>i) : 16'bz;
	
	endgenerate
endmodule





module TBBS ();
  wire [15:0]ww;
  reg [15:0] dd,nn;

  BS tb(dd,nn,ww);
  initial
  begin
    dd=16'b1111111111011111;
    nn=16'b0000000000000001;
#1000    nn=16'b 0000000001000000;
    #1000 nn=16'b 0000001000000000;
    #1000 $stop;
  end
endmodule