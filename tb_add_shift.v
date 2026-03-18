`timescale 1ns / 1ps

module tb_add_shift;
    // Inputs
    reg [31:0] a;
    reg [31:0] b;
    reg [2:0] shift;
    reg clk;
    reg reset;

    // Outputs
    wire [31:0] result;

    // Instantiate the Unit Under Test (UUT)
    add_shift uut (
        .a(a),
        .b(b),
        .shift(shift),
        .result(result)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100MHz clock
    end

    // Test procedure
    initial begin
        // Initialize inputs
        reset = 1;
        a = 0;
        b = 0;
        shift = 0;
        #20;

        reset = 0;  // Deassert the reset

        // Cycle-by-cycle testing
        a = 32'h0000000A; // 10
        b = 32'h00000005; // 5
        shift = 3'b000; // Shift by 0
        #10; // Wait for a clock cycle
        $display("Cycle: 1 | Input A: %h, Input B: %h, Shift: %b, Result: %h", a, b, shift, result);

        a = 32'h0000000A; // 10
        b = 32'h00000005; // 5
        shift = 3'b001; // Shift by 1
        #10;
        $display("Cycle: 2 | Input A: %h, Input B: %h, Shift: %b, Result: %h", a, b, shift, result);

        a = 32'h0000000A; // 10
        b = 32'h00000005; // 5
        shift = 3'b010; // Shift by 2
        #10;
        $display("Cycle: 3 | Input A: %h, Input B: %h, Shift: %b, Result: %h", a, b, shift, result);

        // Add more test cases as needed
        #50; // wait for a few more cycles

        $finish; // End the simulation
    end
endmodule
