module fullAdderUsingHalfAdderGates(a, b, p, sf, cf);
  input a, b, p;
  output sf, cf;
  
  wire a, b, p;
  wire sf, cf;
  
  wire s, c;
  halfAdderGates h(a, b, s, c);
  
  xor (sf, s, p);
  
  wire cf_2;
  and (cf_2, p, s);
  or (cf, c, cf_2);
endmodule
