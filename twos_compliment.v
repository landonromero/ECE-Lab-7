module twos_compliment (
    input wire [7:0] A,
    output wire [7:0] Y
);

wire [7:0] inverted;
wire [7:0] carry;

assign inverted = ~A;

full_adder fa0(inverted[0], 1'b0, 1'b1, Y[0], carry[0]);
full_adder fa1(inverted[1], 1'b0, carry[0], Y[1], carry[1]);
full_adder fa2(inverted[2], 1'b0, carry[1], Y[2], carry[2]);
full_adder fa3(inverted[3], 1'b0, carry[2], Y[3], carry[3]);
full_adder fa4(inverted[4], 1'b0, carry[3], Y[4], carry[4]);
full_adder fa5(inverted[5], 1'b0, carry[4], Y[5], carry[5]);
full_adder fa6(inverted[6], 1'b0, carry[5], Y[6], carry[6]);
full_adder fa7(inverted[7], 1'b0, carry[6], Y[7], carry[7]);

endmodule