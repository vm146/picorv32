`timescale 1ns/1ns
`ifndef VCDFILE
`define VCDFILE "approxAdd1.vcd"
`endif 

module tb_ApproxMul1;

    // Testbench Inputs
    reg [1:0] a = 2'b00;
    reg [1:0] b = 2'b00;

    //Testbench Outputs
    wire [2:0] out;

    ApproxMul1 dut(
        .a(a),
        .b(b),
        .out(out)
    );

    // initial $monitor(" a[0] = %b, a[1] = %b,b[0] = %b, b[1] = %b, out[0] = %b, out[1] = %b, out[2] = %b",a[0],a[1],b[0],b[1],out[0],out[1],out[2]);
    initial $monitor("a=%b%b, b=%b%b, out=%b%b%b",a[0],a[1],b[0],b[1],out[0],out[1],out[2]);
    initial begin
        
        #10 a = 2'b00; b = 2'b00;
        #10 a = 2'b00; b = 2'b01;
        #10 a = 2'b00; b = 2'b10;
        #10 a = 2'b00; b = 2'b11;
        #10 a = 2'b01; b = 2'b00;
        #10 a = 2'b01; b = 2'b01;
        #10 a = 2'b01; b = 2'b10;
        #10 a = 2'b01; b = 2'b11;
        #10 a = 2'b10; b = 2'b00;
        #10 a = 2'b10; b = 2'b01;
        #10 a = 2'b10; b = 2'b10;
        #10 a = 2'b10; b = 2'b11;
        #10 a = 2'b11; b = 2'b00;
        #10 a = 2'b11; b = 2'b01;
        #10 a = 2'b11; b = 2'b10;
        #10 a = 2'b11; b = 2'b11;
        


        $finish;
    end




endmodule