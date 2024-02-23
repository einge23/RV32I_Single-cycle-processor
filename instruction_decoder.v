//instructions: x7 = 7, x6 = 8
// add x5 x6 x7
//R type instruction
//0000000     00111     00110     000     00101     0110011
//func7       rs2       rs1       func3   rd        opcode   


module instruction_decoder (
       input [31:0] instruction,
       output [4:0] wr_reg_idx, r1_reg_idx, r2_reg_idx,
       output [6:0] opcode);

       wr_reg_idx = instruction[20:24];
       r1_reg_idx = instruction[12:16];
       r2_reg_idx = instruction[7:11];
       opcode = instruction[25:31];
    
endmodule