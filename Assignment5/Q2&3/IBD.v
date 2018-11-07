module IBD (input [3:0]i,output [15:0]w);

reg [15:0] ww=16'b1111111111111111;
genvar j;
generate
  for(j=0;j<16;j=j+1)
  begin: my_loop
    assign w=(i==j)? ww>>16-j :16'bz;
end 
endgenerate  
endmodule
