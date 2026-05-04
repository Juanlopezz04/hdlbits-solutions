// K-map 4-variable with don't cares.
// Don't cares (d) treated as 1 to enlarge groups.
// Minimal SOP: out = a | (c & ~b)

module top_module(
    input  a, b, c, d,
    output out
);

    assign out = a | (c & ~b);

endmodule