module register4 (input [3:0]p,input clk,ld,output reg [3:0]w);
  always @(posedge clk)
  begin:my_loop
    if (ld)w<=p;
	 else w<=4'b0000;
	
  end
endmodule
