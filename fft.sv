module fft (
    input logic clock, reset, t,
    output logic q
);
    always_ff @(posedge clock, posedge reset) 
        begin
            if (reset == 1'b1)
                q = 1'b0;
            else if (t == 1'b1)
                q = ~q;
        end
endmodule