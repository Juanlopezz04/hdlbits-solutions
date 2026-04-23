// Circuit B: XNOR — z=1 when x equals y

module top_module (
    input  x,
    input  y,
    output z
);
    assign z = ~(x ^ y);

endmodule