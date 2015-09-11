module demux3(select, I, O);
  
  input[1:0] select;
  input I;
  output[3:0] O;
  
  wire[3:0] O;
  wire I;
  wire[1:0] select;
  
  wire[1:0] nselect;
  not (nselect[0], select[0]);
  not (nselect[1], select[1]); 
  
  and(O[0],  nselect[1], nselect[0], I);
  and(O[1],  nselect[1],  select[0], I);
  and(O[2],   select[1], nselect[0], I);
  and(O[3],   select[1],  select[0], I);
endmodule