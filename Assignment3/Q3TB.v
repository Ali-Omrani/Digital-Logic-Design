module TTBBQ3 ();
  
  wire [15:0] r,d;
  reg [15:3] mm; reg [3:0]nn;
  
  Q3 UT4 (mm,nn,r,d);
  
  initial
  begin
    nn=4'b0011;
    mm=16'b10110101;
	#2000 $stop;
  end
endmodule
 

