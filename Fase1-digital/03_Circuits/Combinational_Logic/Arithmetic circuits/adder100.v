// 100-bit adder: uses Verilog native arithmetic.
// {cout, sum} captures the 101-bit result in a single assign.

module top_module(
    input  [99:0] a, b,
    input         cin,
    output        cout,
    output [99:0] sum
);

    assign {cout, sum} = a + b + cin;

endmodule