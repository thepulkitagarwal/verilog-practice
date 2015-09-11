module demuxtestbench;
  
  reg I;
  reg[1:0] select;
  wire[3:0] O;
  
  demux3 d(
    .I(I),
    .select(select),
    .O(O)
    );
  
  integer i;
  
  initial
  begin
    for(i = 0; i < 4; i = i + 1)
    begin
      select = i
      #00 I = 0;
      #50 I = 1;
      #50 ;
    end 
  end
  
endmodule
