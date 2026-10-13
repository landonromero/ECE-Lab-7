
/*
module full_adder(
    input A,B,Cin,
    output Y, Cout
);

assign Y = A ^ B ^ Cin;
assign Cout = (B&Cin) | (A&Cin) | (A&B);
*/
module ones_compliment (
    input wire [3:0] A,
    input wire [3:0] B,
    output wire [3:0] Y
);

wire [3:0] sum;
wire [3:0] carry;
wire [3:0] around;

//First stage
full_adder fa0(A[0], B[0], 1'b0, sum[0], carry[0]);
full_adder fa1(A[1], B[1], carry[0], sum[1], carry[1]);
full_adder fa2(A[2], B[2], carry[1], sum[2], carry[2]);
full_adder fa3(A[3], B[3], carry[2], sum[3], carry[3]);

//Second Stage
full_adder fa4(sum[0], 1'b0, carry[3], Y[0], around[0]);
full_adder fa5(sum[1], 1'b0, around[0], Y[1], around[1]);
full_adder fa6(sum[2], 1'b0, around[1], Y[2], around[2]);
full_adder fa7(sum[3], 1'b0, around[2], Y[3], around[3]);

endmodule