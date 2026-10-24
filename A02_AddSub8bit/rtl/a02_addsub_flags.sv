module a02_addsub_flags (
    input  logic [7:0] a,
    input  logic [7:0] b,
    input  logic       op,
    output logic [7:0] y,
    output logic       c,
    output logic       z,
    output logic       n,
    output logic       v
);
    logic [7:0] b_eff;
    logic [8:0] tmp;

    assign b_eff = b ^ {8{op}};
    assign tmp   = {1'b0,a} + {1'b0,b_eff} + op;

    assign y = tmp[7:0];
    assign c = tmp[8];
    assign z = (y == 8'h00);
    assign n = y[7];
    assign v = (~(a[7] ^ b_eff[7])) & (y[7] ^ a[7]);
endmodule
