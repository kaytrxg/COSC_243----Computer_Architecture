//4 bit Adder Subtractor with Ripple Carry Behavioral Model 
module FAS(a, b, cin, sout, cout); 
input a, b, cin; 
output sout, cout; 
  
assign sout = a^b^cin; 
assign cout = a&b | cin & (a^b); 
endmodule 
  
module AddSub4bit(A, B, X, S, C, nFlag, zFlag, vFlag); 
input [3:0] A; 
input [3:0] B; 
input X; 
output [3:0] S; 
output C; 
  
output vFlag;  
output zFlag;  
output nFlag;  
  
    wire [2:0] ripple; 
wire [3:0] Y; 
wire [3:0] Z; #XOW 
  
   assign Y[0] = X; 
   assign Y[1] = X; 
   assign Y[2] = X; 
   assign Y[3] = X; 
assign Z = Y ^ B; 
  
FAS 
add0(.a(A[0]), .b(Z[0]), .cin(X), .cout(ripple[0]), .sout(S[0]) ), 
     add1(.a(A[1]), .b(Z[1]), .cin(ripple[0]), .cout(ripple[1]), .sout(S[1]) ), 
     add2(.a(A[2]), .b(Z[2]), .cin(ripple[1]), .cout(ripple[2]), .sout(S[2]) ), 
     add3(.a(A[3]), .b(Z[3]), .cin(ripple[2]), .cout(C), .sout(S[3]) ); 
   
 
   
 
  
assign nFlag = S[3]; 
assign zFlag = ~(S[3] | S[2] | S[1] | S[0]); 
assign vFlag = ripple[2] ^ C;  
 
endmodule 