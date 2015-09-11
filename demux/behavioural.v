module demux1(select, I, O);
  
  input[1:0] select;
  input I;
  output[3:0] O;
  
  reg[3:0] O;
  wire I;
  wire[1:0] select;
  
  always @ (I or select)
  begin
    O = 4'b0;
    O[select] = I;
  end
  
endmodule