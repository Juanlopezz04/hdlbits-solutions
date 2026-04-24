// Half Adder: adds two single bits (a, b) and produces sum and carry-out.
// sum  = a XOR b
// cout = a AND b

module top_module(
    input  a, b,
    output cout, sum
);

    assign sum  = a ^ b;
    assign cout = a & b;

endmodule