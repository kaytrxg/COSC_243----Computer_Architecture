// Testbench for 4 bit Full Adder Subtractor with ripple carry 
  
module Test_4bit_FAS;  
  
  reg [3:0] a, b; 
  reg  cin;    
  wire [3:0] sum; 
  wire cout;   
  wire nFlag, vFlag, zFlag;  
  
  // Instantiate the module to be tested 
  AddSub4bit  AddSub ( 
    .A(a), 
    .B(b), 
    .X(cin), 
    .S(sum), 
    .C(cout),  
    .nFlag(nFlag),  
    .vFlag(vFlag),  
    .zFlag(zFlag) 
  ); 
   
  initial begin    // initial block 
    $dumpfile("Test_4bit_FAS.vcd"); 
    $dumpvars(1, Test_4bit_FAS); 
  
    #0  a=4'b0111; b=4'b1000; cin=0; 
    display;  
    #20 a=4'b0011; b=4'b0101; cin=1; 
    display;   
    #20 a=4'b0111; b=4'b1001; cin=0;  
    display; 
    #20 a=4'b0011; b=4'b0011; cin=1; 
    display;  
    #20 a=4'b1100; b=4'b0111; cin=1; 
    display; 
    #20 a=4'b1100; b=4'b0100; cin=0; 
  display; 
    #100 $finish; 
  end 
  task display;  
    #1 $display ("N: %0h, V: %0h, C: %0h, Z: %0h", nFlag, vFlag, cout, zFlag); 
  endtask      
  
endmodule