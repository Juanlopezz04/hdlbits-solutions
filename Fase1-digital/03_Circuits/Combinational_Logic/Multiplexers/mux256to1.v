// 1-bit wide 256-to-1 mux; 256 inputs packed in a 256-bit vector, sel chooses the bit

module top_module (
    input  [255:0] in,
    input  [7:0]   sel,
    output         out
);
    assign out = in[sel];

endmodule