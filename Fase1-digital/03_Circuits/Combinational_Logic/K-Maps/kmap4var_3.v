// K-map 4-variable: checkerboard pattern → no groups possible → XOR function.
// out=1 when odd number of inputs are 1.

module top_module(
    input  a, b, c, d,
    output out
);

    assign out = a ^ b ^ c ^ d;

endmodule