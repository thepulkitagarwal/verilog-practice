module binaryAdderUsingFullAdder(A, B, Cin, S, Cout);
  input[3:0] A,  B;
  input Cin;
  
  output[3:0] S;
  output Cout;
  
  wire[3:0] A, B, S;
  wire Cin, Cout;
  
  wire[3:0] c;
  
  fullAdderUsingHalfAdderGates f1(A[0], B[0], Cin, S[0], c[0]);
  fullAdderUsingHalfAdderGates f2(A[1], B[1], c[0], S[1], c[1]);
  fullAdderUsingHalfAdderGates f3(A[2], B[2], c[1], S[2], c[2]);
  fullAdderUsingHalfAdderGates f4(A[3], B[3], c[2], S[3], Cout);
endmodule
