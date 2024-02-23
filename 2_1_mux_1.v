module 2_1_mux_1 (
    input in1, in2, sel,
    output reg out
);
    always @(in1 or in2 or sel) begin
        case(sel)
            1'b0: out = in1;
            1'b1: out = in2;
        endcase
    end
endmodule