module prog_counter (
       input clk, reset, enable, jump,
       input [31:0] jump_address,
       output reg [31:0] pc
);

    always @(posedge clk or posedge reset) begin
        if(reset) begin
            pc <= 32'b0;
        end
        else if(enable) begin
            if(jump) begin
                pc <= jump_address;
            end
            else begin  
                pc <= pc + 4;
            end
        end
    end
endmodule