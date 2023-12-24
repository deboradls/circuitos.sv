module decod3x8 (
    input logic [2:0] entrada,
    output logic [7:0] saida,
);
    always_comb 
        begin
            case (entrada)
                3'b000 : saida = 8'b0000_0001;
                3'b001 : saida = 8'b0000_0010;
                3'b010 : saida = 8'b0000_0100;
                3'b011 : saida = 8'b0000_1000;
                3'b100 : saida = 8'b0001_0000;
                3'b101 : saida = 8'b0010_0000;
                3'b110 : saida = 8'b0100_0000;
                3'b111 : saida = 8'b1000_0000;
                default : saida = 8'b0000_0000;
            endcase
        end
endmodule