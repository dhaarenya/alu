`timescale 1ns/1ps

module alu_4bit_tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0] sel;

wire [3:0] Y;
wire Carry;

alu_4bit uut(
    .A(A),
    .B(B),
    .sel(sel),
    .Y(Y),
    .Carry(Carry)
);

initial
begin

A = 4'b0101;    //5
B = 4'b0011;    //3

sel = 3'b000; #10;   // Add
sel = 3'b001; #10;   // Sub
sel = 3'b010; #10;   // AND
sel = 3'b011; #10;   // OR
sel = 3'b100; #10;   // XOR
sel = 3'b101; #10;   // NOT
sel = 3'b110; #10;   // INC
sel = 3'b111; #10;   // DEC

$finish;

end

endmodule