// Top-level: two instances of A and two of B,
// connected as: z = ~((zA1 | zB1) ^ (zA2 & zB2))

// Circuit A: z = (x^y) & x
module A (input x, input y, output z);
    assign z = (x ^ y) & x;
endmodule

// Circuit B: z = ~(x^y)
module B (input x, input y, output z);
    assign z = ~(x ^ y);
endmodule
module top_module (input x, input y, output z);

    wire zA1, zB1, zA2, zB2;

    A IA1 (.x(x), .y(y), .z(zA1));
    B IB1 (.x(x), .y(y), .z(zB1));
    A IA2 (.x(x), .y(y), .z(zA2));
    B IB2 (.x(x), .y(y), .z(zB2));

    assign z = ((zA1 | zB1) ^ (zA2 & zB2));

endmodule