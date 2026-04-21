// Build a 100-bit ripple-carry adder instantiating 100 full adders in a chain.
// cout[i] is the carry-out of each individual full adder stage.

module full_adder(
    input  a, b, cin,
    output sum, cout
);
    assign sum  = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);
endmodule

module top_module(
    input  [99:0] a, b,
    input         cin,
    output [99:0] cout,
    output [99:0] sum
);
    wire [100:0] c;
    assign c[0] = cin;

    genvar i;
    generate
        for (i = 0; i < 100; i = i + 1) begin : cadena
            full_adder fa (
                .a   (a[i]),
                .b   (b[i]),
                .cin (c[i]),
                .sum (sum[i]),
                .cout(c[i+1])
            );
        end
    endgenerate

    assign cout = c[100:1];

endmodule