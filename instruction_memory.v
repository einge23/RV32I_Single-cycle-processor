module instruction_memory(
        input clk,
        input [31:0]mem_address,
        output[31:0]instruction
);

        instruction = memory_data;

endmodule