class home;
   string switch;
   string light = "off";
  
extern function void display();
endclass

  function void home::display();
    string switch = "off";
    $display("switch is %s and light is %s",switch,light);
  endfunction
  
  module tb;
    initial begin
    home h1;
    h1 = new();
    $display("use extern keyword");
    h1.display;
    end
  endmodule

  use extern keyword
switch is off and light is off
