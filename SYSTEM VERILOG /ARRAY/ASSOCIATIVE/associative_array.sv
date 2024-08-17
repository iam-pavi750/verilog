module associative_array;
  int a[int];
  string b[string];
  
  initial begin
    a = '{22:15,10:11,12:21};
    b = '{ "fruit": "mango"};
    
   
    $display( "a is %p",a);
  
    
    $display( "b is %p",b);
    

    
  end
endmodule


a is '{10:11, 12:21, 22:15}
 b is '{"fruit":"mango"}
