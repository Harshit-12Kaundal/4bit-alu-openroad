/**
 * @module alu
 * @brief 4-bit Arithmetic Logic Unit (ALU)
 * 
 * @description
 * A synchronous 4-bit ALU that performs arithmetic and logical operations
 * on two 4-bit operands based on a 3-bit operation selector.
 * All operations are clocked, with outputs updated on the rising edge of the clock.
 * 
 * @param clk
 *   Clock input - synchronizes all operations
 * 
 * @param a[3:0]
 *   First 4-bit operand
 * 
 * @param b[3:0]
 *   Second 4-bit operand
 * 
 * @param sel[2:0]
 *   3-bit operation selector that determines which operation to perform:
 *   - 3'b000: Addition (a + b)
 *   - 3'b001: Subtraction (a - b)
 *   - 3'b010: Bitwise AND (a & b)
 *   - 3'b011: Bitwise OR (a | b)
 *   - 3'b100: Bitwise XOR (a ^ b)
 *   - Default: Output 4'b0000
 * 
 * @output y[3:0]
 *   4-bit result output. The result appears one clock cycle after the
 *   operation is selected (due to two-stage pipeline: computation then output).
 * 
 * @note
 *   - This is a synchronous design with a one-cycle latency
 *   - Overflow/underflow conditions are not explicitly handled
 */
module alu (
    input clk,
    input [3:0] a,
    input [3:0] b,
    input [2:0] sel,
    output reg [3:0] y
);

reg [3:0] temp;

always @(posedge clk) begin
    case(sel)
        3'b000: temp <= a + b;
        3'b001: temp <= a - b;
        3'b010: temp <= a & b;
        3'b011: temp <= a | b;
        3'b100: temp <= a ^ b;
        default: temp <= 4'b0000;
    endcase
end

always @(posedge clk) begin
    y <= temp;
end

endmodule