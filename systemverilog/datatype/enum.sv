module data_type;
  enum{monday=0,tuesday=2,wednesday=3,thursday=4,friday=5,saturday=6,sunday=7}days;
  initial begin
      days = days.first;
    for (int i=0;i<7;i++)begin
  
      $display(" days name = %s and its values = %d",days.name,days);
             days= days.next;
  end
  end
endmodule


# KERNEL:  days name = monday and its values =           0
# KERNEL:  days name = tuesday and its values =           2
# KERNEL:  days name = wednesday and its values =           3
# KERNEL:  days name = thursday and its values =           4
# KERNEL:  days name = friday and its values =           5
# KERNEL:  days name = saturday and its values =           6
# KERNEL:  days name = sunday and its values =           7
