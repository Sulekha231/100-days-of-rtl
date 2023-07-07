// Code your testbench here
// or browse Examples
`include "interface.sv"
`include "test.sv"

module top;
  intf i_intf();
  test t1(i_intf);
  
  fulladder inst(.a(i_intf.a), .b(i_intf.b),.c(i_intf.c),.sum(i_intf.sum),.carry(i_intf.carry));
  
endmodule
