
module register_10 (input [7:0]p,input clk,reset, output [7:0] w );
genvar i;
generate for (i=0; i<8;i=i+1) begin: row
 MSFF Ui((~reset)&p[i],clk,w[i]);
 end
 endgenerate
 endmodule
 
