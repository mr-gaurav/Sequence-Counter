// Code your testbench here
// or browse Examples
module test();
  reg clk;
  wire [2:0] count;
  
  counter dut(.*);
  
  always begin
    clk=1'b0;
    #5;
    clk=1'b1;
    #5;
  end
  
  initial begin
    $dumpfile ("test.vcd");
    $dumpvars(0);
    $monitor ("count = %0d",count);
    #200 $finish;
  end
endmodule