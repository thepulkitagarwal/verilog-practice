module fullAdderTestBench;
  reg a, b, p;
  wire sf, cf;
  
  fullAdderUsingHalfAdderGates f(a, b, p, sf, cf);
  
  reg[2:0] i;
  initial
  begin
    for(i = 0; i < 8; i = i + 1)
    begin
      #00 {a, b,  p} = i;
      #50 ;
    end
  end
  
endmodule
