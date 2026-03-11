module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
    wire one;
    wire two;
    wire three;
    wire four;
    
    assign one= p2c & p2d;
    assign two= p2a & p2b;
    assign p2y= one | two;
    
    assign three = p1a & p1c & p1b;
    assign four = p1f & p1e & p1d;
    assign p1y = three | four;


endmodule
