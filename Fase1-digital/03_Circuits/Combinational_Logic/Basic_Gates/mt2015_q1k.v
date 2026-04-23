// Output z=1 if 2-bit inputs A and B are equal, 0 otherwise.

module top_module (
    input  [1:0] A,
    input  [1:0] B,
    output z
);
    assign z = (A == B);

endmodule