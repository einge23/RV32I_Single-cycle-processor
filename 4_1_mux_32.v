module 4_1_mux_32 (
    input[31:0]in1, in2, in3, in4,
    input[1:0] sel,
    output reg [31:0]out
);

    wire[31:0] out0, out1;

    2_1_mux_32 mux0(.in1(in1), .in2(in2), sel(sel[0]), .out(out0));
    2_1_mux_32 mux1(.in1(in3), .in2(in4), sel(sel[0]), .out(out1));
    2_1_mux_32 mux2(.in1(out0), .in2(out1), sel(sel[1]), .out(out));


endmodule