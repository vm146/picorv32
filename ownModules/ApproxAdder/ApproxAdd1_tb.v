
`timescale 1ns/1ns
`ifndef VCDFILE
`define VCDFILE "approxAdd1.vcd"
`endif 

module tb_ApproxAdd1;

    //testbench inputs
    reg a = 0;  
    reg b = 0;
    reg c_in = 0;

    //testbench outputs
    wire c_out ;
    wire sum ;

    //Instantiate
    ApproxAdd1 dut(
        .a(a),
        .b(b),
        .c_in(c_in),
        .c_out(c_out),
        .sum(sum)
    );

    initial $monitor("Time: %0t, a = %b, b = %b, c_in = %b, sum = %b, c_out = %b ",$time,a,b,c_in,sum,c_out);

    initial begin
        // test all variations of inputs
        #10 c_in=0; b=0; a=0;
        #10 c_in=0; b=0; a=1;
        #10 c_in=0; b=1; a=0;       
        #10 c_in=0; b=1; a=1;
        #10 c_in=1; b=0; a=0;
        #10 c_in=1; b=0; a=1;
        #10 c_in=1; b=1; a=0;
        #10 c_in=1; b=1; a=1;

        $finish;

    end

      

endmodule

