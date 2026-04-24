// Full Adder: adds three bits (a, b, cin) and produces sum and carry-out.
// sum  = a XOR b XOR cin
// cout = carry if at least two inputs are 1

module top_module(
    input  a, b, cin,
    output cout, sum
);

    assign sum  = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);

endmodule