module mux1(select, I, O );

  input[1:0] select;
  input[3:0] I;
  output O;

  reg O;
  wire[1:0] select;
  wire[3:0] I;
  
  always @ (I or select)
  begin
    O = I[select];
  end

endmodule