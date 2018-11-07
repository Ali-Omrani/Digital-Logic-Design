module register (input [7:0]p,input clk, output [7:0] w );
genvar i;
generate for (i=0; i<8;i=i+1) begin: row
 Dlatch Ui(p[i],clk,w[i]);
 end
 endgenerate
 endmodule
 
