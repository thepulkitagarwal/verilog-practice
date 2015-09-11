module mux4(select, I, O);  

  input[1:0] select;
  input[3:0] I;
  output O;

  wire O;
  wire[1:0] select;
  wire[3:0] I;
  
  wire[1:0] nselect;
  not (nselect[0], select[0]);
  not (nselect[1], select[1]);  
  
  wire[3:0] op;
  
  and (op[0], I[0], nselect[0], nselect[1]);
  and (op[1], I[1],  select[0], nselect[1]);
  and (op[2], I[2], nselect[0],  select[1]);
  and (op[3], I[3],  select[0],  select[1]);
  
  or (O, op[0], op[1], op[2], op[3]);
endmodule
