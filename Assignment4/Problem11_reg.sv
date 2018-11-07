module Q11reg_tb ();
  wire [7:0]w;
  logic [7:0]p;
  logic c=1;
  logic r=0;
  register_10 ut11 (p,c,r,w);
  initial
  begin
	r=0;
    p=8'b11100101;
    c=0;
    #100 c=1;
    #100 c=0;
    p=8'b00101111;
    #100 p=8'b10000101;
    #100 c=1;
	#100 c=0;
	#100 r=1;
  #100 c=1;
	#100 c=0;
  #100 c=1;
	#100 c=0;
  #100 c=1;
	#100 c=0;

    #100 $stop;
  end
endmodule
