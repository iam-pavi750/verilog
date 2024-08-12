class home;
  
 string fan = "on";
  string switch = "on";
  
  function void open_electricity();
    
    string fan = "off";
    string switch ="off";
    this.fan=fan;
    this.switch=switch;
    $display(" fan is %s and switch is %s",fan,switch);
  endfunction
  
endclass

module tb;
  
  initial begin
    home h1 ;
    h1 = new();
    h1.open_electricity;
   
    
    $display("fan is %s and switch is %s",h1.fan,h1.switch);
  end
    endmodule


fan is off and switch is off
fan is off and switch is off
