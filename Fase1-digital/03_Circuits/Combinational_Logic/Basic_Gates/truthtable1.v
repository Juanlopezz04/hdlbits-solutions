// Implement f(x3,x2,x1) from truth table using Sum of Products (SOP).
// f=1 for rows: 2(010), 3(011), 5(101), 7(111)

module top_module (
    input  x3,
    input  x2,
    input  x1,
    output f
);
    assign f = (~x3 & x2 & ~x1) |
               (~x3 & x2 &  x1) |
               ( x3 & ~x2 & x1) |
               ( x3 &  x2 & x1);

endmodule