module fullAdderGates(A, B, Cin, sum, Cout);
  input A;
  input B;
  input Cin;
  
  output sum;
  output Cout;
  
  wire A;
  wire B;
  wire sum;
  wire Cin;
  wire Cout;
  
  xor (sum, A, B, Cin);
  
  wire c1;
  and (c1, A, B);
  wire c2_1;
  xor (c2_1, A, B);
  wire c2;
  and (c2, Cin, c2_1);
  or (Cout, c1, c2);  
  
endmodule
