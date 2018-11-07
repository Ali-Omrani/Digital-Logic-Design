module SRClatch_testbench ();
  logic s,r,c;
  wire q;
 
   SRClatch ut1(s,r,c,q);
  initial
  begin
    #20 c = 0;
    #500 s = 1; r = 1;
    #500 s = 1; r = 0;
    #500 s = 0; r = 1;
    #500 s = 1; r = 1;
    #500 s = 1; r = 0;
    #500 s = 1; r = 1;
    #500 s = 0; r = 0;
    #500 s = 1; r = 0;
    #500 s = 1; r = 1;
    #500 c=1;
    #500 s = 1; r = 0;
    #500 s = 0; r = 1;
    #500 s = 1; r = 1;
    #500 s = 1; r = 0;

    #500 $stop;
  end
endmodule

  
