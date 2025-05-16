testbench.sv
// Code your testbench here
// or browse Examples
module testbench;
  reg[3:0] A, B;
  reg[2:0] OP;
  wire [3:0] Result;
  ALU dut (
    .A(A),
    .B(B),
    .OP(OP),
    .Result(Result)
  );
  initial begin 
    A = 4; B = 2; OP = 3'b000;
    #10;
    $display("ADD:A=%d, B=%d,OP=%b => Result =%d",A, B, OP ,Result);
    A=7; B=3; OP=3'b001;
    #10;
    $display("SUB:A=%d, B=%d,OP=%b => Result =%d",A, B, OP ,Result);
    A=5; B=6; OP=3'b010;
    #10;
    $display("AND:A=%d, B=%d,OP=%b => Result =%d",A, B, OP ,Result);
    A=5; B=6; OP=3'b011;
    #10;
    $display("OR:A=%d, B=%d,OP=%b => Result =%d",A, B, OP ,Result);
     A= 8; B= 9; OP=3'b100;
    #10
    $display("XOR:A=%d, B=%d,OP=%b => Result =%d",A, B, OP ,Result);
    
    $finish;
 end    
 endmodule
