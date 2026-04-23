// Implement a simple wire: connect input directly to output.

module top_module (
    input  in,
    output out
);
    assign out = in;

endmodule