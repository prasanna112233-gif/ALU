// Code your design here
module ALU (
  input[3:0]A, //4-bit input A
  input[3:0]B,//4-bit input B 
  input[2:0]OP,//3-bit control input for operation selection
  output reg[3:0] Result //4-bit output
);
  
  //define ALU operations based on the op
  always @(*) begin
    case (OP)
           3'b000: Result=  A + B;
           3'b001: Result= A - B;
           3'b010: Result= A & B;
           3'b011: Result= A | B;
           3'b100: Result= A ^ B;
           default: Result =4'b0000;
    endcase
  end
endmodule
