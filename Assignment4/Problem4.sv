module Dlatch (input D,C,output Q);
  logic Dbar;
 not #6 G0 (Dbar,D);
 SRClatch UT1(Dbar,D,C,Q);
 endmodule


module Dlatch_tb();
  logic d,c;
  wire q;
  Dlatch UT2(d,c,q);
  initial
  begin
    c=0;
    #300 d=1;
    #300 d=0;
    #300 c=1;
    #300 d=1; 
    #300 d=0;
  end
endmodule
