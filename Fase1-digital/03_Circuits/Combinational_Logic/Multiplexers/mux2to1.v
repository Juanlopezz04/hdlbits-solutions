// 2-to-1 multiplexer: out = b if sel=1, out = a if sel=0

module top_module (
    input  a, b, sel,
    output out
);
    assign out = sel ? b : a;

endmodule