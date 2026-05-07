// Minimum SOP and POS from K-map (ece241 2013 q2)
// Minterms: 1s={2,7,15}, 0s={0,1,4,5,6,9,10,13,14}, don't cares={3,8,11,12}
//
// SOP: group cd=11 (all 4) + group minterm 2,3 (~a&~b&c)
// POS: (c|~d) & (a|d) & (~b|d)

module top_module (
    input  a, b, c, d,
    output out_sop,
    output out_pos
);
    assign out_sop = (c & d) | (~a & ~b & c);
    assign out_pos = (c | ~d) & (a | d) & (~b | d);
endmodule