module ram (
    input [31:0] address, data_in,
    input wr_en, clk,
    output [31:0] data_out
);
    // Declare memory array
    reg [31:0] memory [0:2**32-1];

    always @(posedge clk) begin
        if (wr_en) begin
            // Write to memory
            memory[address] <= data_in;
        end
        // Read from memory
        data_out <= memory[address];
    end
endmodule