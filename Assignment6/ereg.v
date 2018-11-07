module ereg(input [15:0]p,input clk,ldep,ld0,output reg [15:0]w);
  always @(posedge clk)
  begin:my_loop
    if (ldep)w<=p;
	 else if (ld0)w<=16'b0000000000000000;

  end
  endmodule