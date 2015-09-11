module demux2(select, I, O);
  
  input[1:0] select;
  input I;
  output[3:0] O;
  
  wire[3:0] O;
  wire I;
  wire[1:0] select;
  
  assign O = I << select;
  
endmodule
