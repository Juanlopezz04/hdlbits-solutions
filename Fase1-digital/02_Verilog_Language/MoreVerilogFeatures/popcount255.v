/* Count the number of '1' bits in a 255-bit input vector.
 Output is an 8-bit value representing the total count (0 to 255).
 */

module top_module(
    input [254:0] in,
    output reg [7:0] out
);
    integer i;
    always @(*) begin
        out = 8'd0;
        for (i = 0; i < 255; i = i + 1)
            out = out + in[i];
    end
endmodule