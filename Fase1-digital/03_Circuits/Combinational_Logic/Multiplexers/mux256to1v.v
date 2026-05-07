// 4-bit wide 256-to-1 mux; 256 4-bit inputs packed in a 1024-bit vector

module top_module (
    input  [1023:0] in,
    input  [7:0]    sel,
    output [3:0]    out
);
    assign out = in[sel*4 +: 4];

endmodule