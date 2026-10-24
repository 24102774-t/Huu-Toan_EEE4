module a02_tb;
    logic [7:0] a,b,y;
    logic op,c,z,n,v;

    a02_addsub_flags dut(.a(a),.b(b),.op(op),.y(y),.c(c),.z(z),.n(n),.v(v));

    task automatic check(input logic [7:0] aa, input logic [7:0] bb, input logic oo);
        integer t;
        logic [7:0] ey;
        logic ec,ez,en,ev;
        begin
            a=aa; b=bb; op=oo; #1;
            if (!oo) t = aa + bb;
            else     t = aa - bb;
            ey = t & 255;
            ec = (!oo) ? int'(t >= 256) : int'(aa >= bb);
            ez = (ey==0);
            en = ey[7];
            if (!oo)
                ev = (aa[7]==bb[7]) && (ey[7]!=aa[7]);
            else
                ev = (aa[7]!=bb[7]) && (ey[7]!=aa[7]);

            assert(y===ey) else $fatal(1,"Y mismatch A=%0d B=%0d op=%0d",aa,bb,oo);
            assert(c===ec) else $fatal(1,"C mismatch");
            assert(z===ez) else $fatal(1,"Z mismatch");
            assert(n===en) else $fatal(1,"N mismatch");
            assert(v===ev) else $fatal(1,"V mismatch");
        end
    endtask

    initial begin
        $dumpfile("a02_wave.vcd");
        $dumpvars(0, a02_tb);
        // Charter cases
        check(8'd5,8'd5,1'b1);
        check(8'd0,8'd1,1'b1);
        check(8'd127,8'd1,1'b0);
        check(8'h80,8'd1,1'b1);
        check(8'd100,8'd50,1'b1);

        // Additional boundaries
        check(8'd0,8'd0,1'b0);
        check(8'd255,8'd1,1'b0);
        check(8'd128,8'd128,1'b1);
        check(8'd127,8'd128,1'b1);
        check(8'd128,8'd127,1'b1);

        // Exhaustive: 2 operations x 256 x 256
        for (int unsigned aa=0; aa<256; aa++)
            for (int unsigned bb=0; bb<256; bb++) begin
                check(aa[7:0],bb[7:0],1'b0);
                check(aa[7:0],bb[7:0],1'b1);
            end

        $display("A02 exhaustive validation PASS");
        $finish;
    end
endmodule