module alu_4bit(
    input [3:0] A,
    input [3:0] B,
    input [2:0] sel,
    output reg [3:0] Y,
    output reg Carry
);

always @(*)
begin
    Carry = 0;

    case(sel)

        3'b000: begin          // Addition
            {Carry, Y} = A + B;
        end

        3'b001: begin          // Subtraction
            {Carry, Y} = A - B;
        end

        3'b010: begin          // AND
            Y = A & B;
        end

        3'b011: begin          // OR
            Y = A | B;
        end

        3'b100: begin          // XOR
            Y = A ^ B;
        end

        3'b101: begin          // NOT A
            Y = ~A;
        end

        3'b110: begin          // Increment A
            {Carry, Y} = A + 1;
        end

        3'b111: begin          // Decrement A
            {Carry, Y} = A - 1;
        end

        default:
        begin
            Y = 4'b0000;
            Carry = 0;
        end

    endcase
end

endmodule