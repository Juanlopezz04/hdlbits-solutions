// K-map 4-variable (SOP):
// Group 1 (~d & ~a): cols ab=00,10 rows cd=00,01
// Group 2 (~c & ~b): cols ab=00,01 rows cd=00,10 (wraparound)
// Group 3 (c & ~a & b): col ab=01, rows cd=11,10
// Group 4 (c & d & a): cols ab=11,10 row cd=11

module top_module(
    input  a, b, c, d,
    output out
);

    assign out = (~d & ~a) | (~c & ~b) | (c & ~a & b) | (c & d & a);

endmodule