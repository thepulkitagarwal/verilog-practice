module binaryAdderTestBench;
  
  reg[3:0] A,  B;
  reg Cin;
  
  wire[3:0] S;
  wire Cout;
  
  binaryAdderUsingFullAdder b1(A, B, Cin, S, Cout);
  
  integer i, j;
  
  initial
  begin
    for(i = 0; i < 16; i = i + 1)
    begin
      A = i;
      for(j = 0; j < 16; j = j + 1)
      begin
        B = j;
        #00 Cin = 1'b0;
        #50 Cin = 1'b1;
        #50 ;
      end
    end
  end
endmodule
  
  

