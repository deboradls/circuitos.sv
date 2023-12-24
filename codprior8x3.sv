module codprior3x8 (w,q);
    input logic [7:0] w;
    output logic [2:0] y;

    always @(w) 
        begin
            casex (w)
                8'b0000_0001 : y = 3'b000;
                8'b0000_001x : y = 3'b001;
                8'b0000_01xx : y = 3'b010;
                8'b0000_1xxx : y = 3'b011;
                8'b0001_xxxx : y = 3'b100;
                8'b001x_xxxx : y = 3'b101;
                8'b01xx_xxxx : y = 3'b110;
                8'b1xxx_xxxx : y = 3'b111;
                default : y = 3'b000;
            endcase
        end
endmodule