module ffd (
    input logic clock, reset, d,
    output logic q
);
    always_ff @(posedge clock, posedge reset) 
        begin
            if (reset == 1'b1)
                q = 1'b0;
            else
                q = d;
        end
endmodule