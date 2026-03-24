/*
 * Enunciado: Build a 4-bit priority encoder. A priority encoder is a combinational 
 * circuit that, when given an input bit vector, outputs the position of the first 
 * 1 bit in the vector. For this problem, if none of the input bits are high 
 * (i.e., input is zero), output zero.
 */

module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
    
    always @(*) begin
        if (in[0] == 1'b1)
            pos = 2'd0;
        else if (in[1] == 1'b1)
            pos = 2'd1;
        else if (in[2] == 1'b1)
            pos = 2'd2;
        else if (in[3] == 1'b1)
            pos = 2'd3;
        else 
            pos = 1'b0;
    end

endmodule
