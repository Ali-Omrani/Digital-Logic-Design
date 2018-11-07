module controller (input clk,reset,start ,output reg LdM,LdN,LdQ,LdR,Rsol,LdF,done);
  reg [2:0] p_state,n_state;
  localparam [2:0] s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100;
  always @(p_state,start) begin:transition
    n_state=s0;
    case(p_state)
      s0: if(start) n_state=s1;
        else n_state=s0;
      s1:  if(start) n_state=s1;
          else n_state=s2;
      s2: n_state=s3;
      s3: n_state=s4;
      s4: n_state=s0;
      default n_state=s0;
    endcase
  end
  always @(p_state,start)begin:outputing
   case(p_state)
     s0: {LdM,LdN,LdQ,LdR,Rsol,LdF,done}=7'b0000001;
     s1: {LdM,LdN,LdQ,LdR,Rsol,LdF,done}=7'b0000000;
     s2: {LdM,LdN,LdQ,LdR,Rsol,LdF,done}=7'b1100000;
     s3: {LdM,LdN,LdQ,LdR,Rsol,LdF,done}=7'b0011000;
     s4: {LdM,LdN,LdQ,LdR,Rsol,LdF,done}=7'b0000110;
     default {LdM,LdN,LdQ,LdR,Rsol,LdF,done}=7'b0000001;
   endcase
 end
 always @(posedge clk) begin:sequential
   if (reset) p_state<=s0;
   else p_state<=n_state;
   end
        
  
endmodule
                                                                  
