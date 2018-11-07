module IBD #(parameter n=4)(input [n-1:0]i,output [2**n:0]w);

reg [2**n:0] ww=16'b1111111111111111;
genvar j;
generate
  for(j=0;j<2**n;j=j+1)
  begin
    assign w=(i==j)? ww>>(2**n)-j :16'bz;
end 
endgenerate  
endmodule


module TBIBD ();
  wire [15:0]ww;
  reg [4:0] ii;

  IBD tbIBD(ii,ww);
  initial
  begin
  ii=4'b0000;
 #50 ii=4'b0011;
 #50 ii=4'b0101;
#50 $stop;
  end
endmodule
