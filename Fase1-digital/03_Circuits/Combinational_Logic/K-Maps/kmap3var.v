// K-map 3-variable: out=0 only when a=0, b=0, c=0.
// Equivalent forms: out = a|b|c  <==>  out = ~(~a & ~b & ~c)

module top_module(
    input  a,
    input  b,
    input  c,
    output out
);

    assign out = a | b | c;

endmodule