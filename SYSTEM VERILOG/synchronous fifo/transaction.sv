class transaction;
  
   logic wr_en;       
   logic rd_en;       
  rand logic [7:0] data_in;  // Data input randomize
   bit [7:0] data_out; 
   bit full;        
   bit empty;
  
endclass
