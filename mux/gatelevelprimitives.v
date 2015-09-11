module mux3(select, I, O);  

  input[1:0] select;
  input[3:0] I;
  output O;

  wire O;
  wire[1:0] select;
  wire[3:0] I;

  wire[3:0] op;
  
  assign op[0] = I[0] & !select[1] & !select[0];
  assign op[1] = I[1] & select[0] & !select[1];
  assign op[2] = I[2] & !select[0] & select[1];
  assign op[3] = I[3] & select[1] & select[0];
  
  assign O = op[0] | op[1] | op[2] | op[3];
      
endmodule
  