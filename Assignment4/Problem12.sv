module reg_always (input [7:0]p,input clk,output logic [7:0]w);
  always @(posedge clk)
  begin
    w<=p;
  end
endmodule

module Q12reg_tb ();
  wire [7:0]w;
  logic [7:0]p;
  logic c=0;
  reg_always ut11 (p,c,w);
  initial
  begin
    p=8'b11100101;
    #100 c=1;
    #100 c=0;
    p=8'b00101111;
    #100 p=8'b10000101;
    #100 c=1;
	#100 c=0;
    #100 $stop;
  end
endmodule
