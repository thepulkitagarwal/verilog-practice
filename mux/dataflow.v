module mux2(select, I, O );

  input[1:0] select;
  input[3:0] I;
  output O;

  wire O;
  wire[1:0] select;
  wire[3:0] I;

  assign O = I[select];

endmodule