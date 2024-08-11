class home;

  int light;
  bit fan;
  string switch;
  
task open_electricity();
    switch = "on";
    $display("/t open electricity %s",switch);
endtask
endclass

module tb;
 initial begin
    home h1;
    h1 =new();
    h1.light = 1;
    h1.fan = 1;
    h1.open_electricity;
    $display("\t light is %0d & fan is %0d",h1.light,h1.fan);
  end
  endmodule

 open electricity on
 light is 1 & fan is 1
  
