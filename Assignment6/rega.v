module areg(input [15:0]p,input clk,ldap,ld1,output reg [15:0]w);
  always @(posedge clk)
  begin:my_loop
    if (ldap)w<=p;
	 else if (ld1)w<=16'b0000000100000000;

  end
  endmodule