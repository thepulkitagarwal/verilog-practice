module decoderDataflow(
  output [3:0] O,
  input A, B, enable
  );
  
  assign O[0] = ~(~A & ~B & ~enable);
  assign O[1] = ~(~A &  B & ~enable);
  assign O[2] = ~( A & ~B & ~enable);
  assign O[3] = ~( A &  B & ~enable);
  
endmodule


module decoderBehavioural(
  output reg [3:0] O,
  input A, B, enable
  );
  
  always @ (A or B)
  begin    
    O =4'b1111;
    case({A, B})
      2'b00: O[0] =  0;
      2'b01: O[1] =  0;
      2'b10: O[2] =  0;
      2'b11: O[3] =  0;
    endcase
  end
  
endmodule


module decoderGateLevel(
  output [3:0] O,
  input A, B, enable
  );
  
  wire notA, notB, notEnable;
  
  not
    n1 (notA, A),
    n2 (notB, B),
    n3 (notEnable,enable);
  nand
    n4 (O[0], notA, notB, notEnable),
    n5 (O[1], notA,    B, notEnable),
    n6 (O[2],    A, notB, notEnable),
    n7 (O[3],    A,    B, notEnable); 
  
endmodule


module decoderTB;
  wire [3:0] O;
  reg A, B, enable;
  
  decoderGateLevel d1(O, A, B, enable);
  
  integer i;
  
  initial begin
    enable = 1'b0;
    for(i = 0; i < 4; i = i + 1) begin
      {A, B} = i;
      #50 ;
    end
  end
endmodule