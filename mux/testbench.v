module muxtestbench;
  
  reg[3:0] I;
  reg[1:0] select;
  wire O;
  
  mux4 m(
    .I(I),
    .select(select),
    .O(O)
    );
  
  initial
  begin
    for(I = 0; I<16; I = I +1)
    begin
      #00 select = 2'b00;
      #50 select = 2'b01;
      #50 select = 2'b10;
      #50 select = 2'b11;
      #50 ;
    end
  end
endmodule    
