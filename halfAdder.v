/*
  Author : Rakotojaona Nambinina
  email : Andrianoelisoa.Rakotojaona@gmail.com
  Description : Half adder code , used in the full adder 
*/
module halfAdder (
       a1,
       b1,
       sum1,
       carry1
       );
// input ports       
input a1;
input b1;
// output ports
output sum1;
output carry1;

assign sum1 = a1 ^ b1;
assign carry = a1 & b1;

endmodule
