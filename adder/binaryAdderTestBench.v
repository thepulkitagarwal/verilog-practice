module binaryAdderTestBench;
  
  reg[3:0] A,  B;
  reg Cin;
  
  wire[3:0] S;
  wire Cout;
  
  binaryAdderUsingFullAdder b1(A, B, Cin, S, Cout);
  
  initial
  begin
    for(A = 0; A < 16; A = A + 1)
    begin
      for(B = 0; B < 16; B = B + 1)
      begin
        #00 Cin = 1'b0;
        #50 Cin = 1'b1;
        #50 ;
      end
    end
  end
endmodule
  
  
