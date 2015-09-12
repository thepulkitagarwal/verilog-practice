module encoderGates4x1(D, A, B, V);
  input[3:0] D;
  wire[3:0] D;
  
  output A, B, V;
  wire A, B, V;
  
  or (A, D[2], D[3]);
  
  wire B_2, B_2_1;
  not (B_2_1, D[2]);
  and (B_2, B_2_1, D[1]);
  or (B, D[3], B_2);
  
  or (V, D[0], D[1], D[2], D[3]);
  
endmodule

