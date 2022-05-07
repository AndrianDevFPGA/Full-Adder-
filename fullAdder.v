/*
  Author : Rakotojaona Nambinina 
  email : Andrianoelisoa.Rakotojaona@gmail.com
  Description : Full adder verilog code using two half adder components
*/

module fullAdder(
       a,
       b,
       c,
       sum,
       carryOut
       );
  // input port
  input a;
  input b;
  input c;
  // output port 
  output sum;
  output carryOut;
  
  // 3 signal
  wire w1 ;// connected  two half adder
  wire w2; //connected half adder and or gate
  wire w3; // connected half  adder and or gate 
  
  // half adder component 1
  halfAdder H1 (
               .a1 (a),
               .b1 (b),
               .sum1 (w1),
               .carry1 (w2)
               );
  // half adder component 2
  
  halfAdder H2 (
               .a1 (c),
               .b1 (w1),
               .sum1 (sum),
               .carry1 (w3)
               );
               
  // or gate component   
  orGate orGate1 (
               .a2 (w3),
               .b2 (w2),
               .or2 (carry)
               );
endmodule

module orGate (
              a2,
              b2,
              or2
              );
   // input port 
   input a2;
   input b2;
   // output port 
   output or2;
   
   assign or2 = a2 | b2;
 
endmodule
   
