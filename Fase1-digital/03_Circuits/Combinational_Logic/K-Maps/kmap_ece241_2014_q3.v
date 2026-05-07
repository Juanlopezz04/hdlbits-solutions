// K-map exams/ece241_2014_q3: x1=x[1], x2=x[2], x3=x[3], x4=x[4]
// SOP: 3 grupos — (~x2&~x4) | (x2&x3&x4) | (~x1&x3)

module top_module (
    input [4:1] x,
    output f
);
    assign f = (~x[2] & ~x[4]) | (x[2] & x[3] & x[4]) | (~x[1] & x[3]);
endmodule