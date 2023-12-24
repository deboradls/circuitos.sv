module ffjk (
    input logic clock, reset, preset,
    input logic j, k,
    output logic q
);
    always_ff @(posedge clock, posedge reset)
        begin
            if (reset == 1'b1)
                q = 1'b0;
            else if (preset == 1'b1)
                q = 1'b1;
            else if (j == 1'b0 && k == 1'b1)
                q = 1'b0;
            else if (j == 1'b1 && k == 1'b0)
                q = 1'b1;
            else if (j == 1'b1 && k == 1'b1)
                q = ~q;
        end
endmodule