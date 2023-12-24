module regPISO (
    input logic clk, en, rst, shift_load,
    input logic [3:0] din,
    output logic dout
);
    logic [3:0] q_next, q_reg;
    always_ff @(posedge clk, posedge rst)
        begin
            if (rst == 1'b1)
                q_next = (q_reg [2:0], din);
            else
                q_next = din;
        end
    assign dout = q_reg[3];
endmodule