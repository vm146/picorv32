/* Adder Module 
ApproxAdd1 -  see Paper, read adder from left to right
*/


module ApproxAdd1 (
    input a,b,c_in,    //input a,b and carry in
    output c_out,sum   //output carry out and sum
 
);

assign c_out = (a&b)|((a|b)&c_in);
assign sum = ~(c_out);
    
endmodule