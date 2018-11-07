module rDlatch (input D,C,R,output Q);
  logic D1;
  assign D1=D&(~R);
  Dlatch ut9 (D1,C,Q);
endmodule
