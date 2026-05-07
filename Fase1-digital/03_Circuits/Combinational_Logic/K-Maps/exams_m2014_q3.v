// K-map exams/m2014_q3: x[4:1] where x1=x[1], x2=x[2], x3=x[3], x4=x[4]
// Group A (~x[1] & x[3]): x1=0 fixed, x3=1 fixed → grupo de 4
// Group B (x[2] & x[4]):  x2=1 fixed, x4=1 fixed → grupo de 4

module top_module (
    input [4:1] x,
    output f
);
    assign f = (~x[1] & x[3]) | (x[2] & x[4]);
endmodule