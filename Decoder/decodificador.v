module decodificador(A,S);

    input [3:0] A;
    output reg [7:0] S;

    always @ (A) begin
        case(A)
        4'b0000: S = 8'b00000001;
        4'b0001: S = 8'b00000010;
        4'b0010: S = 8'b00000100;
        4'b0011: S = 8'b00001000;
        4'b0100: S = 8'b00010000;
        4'b0101: S = 8'b00100000;
        4'b0110: S = 8'b01000000;
        4'b0111: S = 8'b10000000;

        endcase
    end
endmodule