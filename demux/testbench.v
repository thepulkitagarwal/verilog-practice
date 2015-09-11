module demuxtestbench;
  
  reg I;
  reg[1:0] select;
  wire[3:0] O;
  
  demux3 d(
    .I(I),
    .select(select),
    .O(O)
    );
  
  initial
  begin
    for(select = 0; select < 4; select = select +1)
    begin
      #00 I = 0;
      #50 I = 1;
      #50 ;
    end 
  end
  
endmodule
