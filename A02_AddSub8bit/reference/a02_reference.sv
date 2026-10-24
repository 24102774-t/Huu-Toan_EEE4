
module a02_reference (
    input  logic [7:0] a,
    input  logic [7:0] b,
    input  logic       op,
    output logic [7:0] y,
    output logic       c,
    output logic       z,
    output logic       n,
    output logic       v
);

    logic signed [8:0] result_ext;
    logic [8:0] unsigned_ext;

    always_comb begin
        if (op == 1'b0) begin
            unsigned_ext = {1'b0, a} + {1'b0, b};
            y = unsigned_ext[7:0];
            c = unsigned_ext[8];
            v = (~(a[7] ^ b[7])) & (y[7] ^ a[7]);
        end else begin
            unsigned_ext = {1'b0, a} - {1'b0, b};
            y = unsigned_ext[7:0];
            c = (a >= b);
            v = (a[7] ^ b[7]) & (y[7] ^ a[7]);
        end

        z = (y == 8'h00);
        n = y[7];
    end

endmodule
