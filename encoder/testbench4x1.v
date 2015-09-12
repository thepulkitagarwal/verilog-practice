module encoderTestBench;
  reg[3:0] D;
  wire A, B, V;
  
  encoderGates4x1 e1(D, A, B, V);
  
  integer i;
  
  initial
  begin
    for(i = 0; i < 16; i = i + 1)
    begin
      D = i; 
      #50 ;
    end
  end
endmodule
