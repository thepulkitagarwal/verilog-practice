module encoderBehavioural4x1(D, A, B, V);
  input[3:0] D;
  wire[3:0] D;
  
  output A, B, V;
  reg A, B, V;
  
  always @ (D)
  begin
    if (D[3] == 1)
      begin
        {A, B, V} = 3'b111;
      end
    else if (D[2] == 1)
      begin
        {A, B, V} = 3'b101;
      end
    else if (D[1] == 1)
      begin
        {A, B, V} = 3'b011;
      end
    else if (D[0] == 1)
      begin
        {A, B, V} = 3'b001;
      end
    else
      begin
        {A, B, V} = 3'b000;
      end
  end
endmodule