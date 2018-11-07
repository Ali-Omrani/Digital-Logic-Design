module register (input [15:0]p,input clk,ld,output reg [15:0]w);
  always @(posedge clk)
  begin:my_loop
    if (ld)w<=p;
	 else w<=16'b0000000000000000;
	
  end
endmodule
