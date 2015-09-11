module halfAdderGates(a, b, s, c);
  input a, b;
  output s, c;
  
  wire a, b;
  wire s, c;
  
  xor(s, a, b);
  and(c, a, b);
endmodule