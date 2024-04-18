/* Approximated Multiplicator Module 
ApproxMul1 -  see Paper, read adder from left to right
*/

module ApproxMul1 (
    input [1:0] a,
    input [1:0] b,    //input a,b and carry in
    output [2:0] out         //output carry out and sum
 
);

assign out[0] = a[0]&b[0];
assign out[1] = (a[0]&b[1])|(a[1]&b[0]);
assign out[2] = b[1]&a[1];

endmodule