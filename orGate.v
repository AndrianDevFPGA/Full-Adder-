
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
