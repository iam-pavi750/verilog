typedef enum {MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY }week_e;
  week_e day; //declare week type day variable
    
  initial begin

    $display("\n//days = {MONDAY,TUESDAY,WEDNESDAY,THURSDAY, FRIDAY, SATURDAY, SUNDAY }");
    day = day.first(); //assign first day in variable day
    $display("\nfirst day name = %0s  and its value is = %0d",day.name,day);

    day = day.last();  //assign last day in variable day
    $display("\nlast day name = %0s  and its value is = %0d",day.name,day);

    day = WEDNESDAY;  // assign wednesday in day
    day = day.next(); // assign the next day after wednesday
    $display("\nnext day name after wednesday  = %0s  and its value is = %0d",day.name,day);

    day = WEDNESDAY;
    day = day.prev();  //assign the previous day befor wednesday
    $display("\nprevious day name befor wednesday  = %0s  and its value is = %0d",day.name,day);

    $display("\ncurrent day name = %0s  and its value is = %0d",day.name(),day);

    
  end
endmodule 


# KERNEL: //days = {MONDAY,TUESDAY,WEDNESDAY,THURSDAY, FRIDAY, SATURDAY, SUNDAY }
# KERNEL: 
# KERNEL: first day name = MONDAY  and its value is = 0
# KERNEL: 
# KERNEL: last day name = SUNDAY  and its value is = 6
# KERNEL: 
# KERNEL: next day name after wednesday  = THURSDAY  and its value is = 3
# KERNEL: 
# KERNEL: previous day name befor wednesday  = TUESDAY  and its value is = 1
# KERNEL: 
# KERNEL: current day name = TUESDAY  and its value is = 1
