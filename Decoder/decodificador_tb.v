`timescale 1ns/1ps
`include "decodificador.v"

module decodificador_tb;

    reg [3:0] A;
    wire [7:0] S;
    decodificador uut(A, S);

    initial begin
        $dumpfile("decodificador_tb.vcd");
        $dumpvars(0, decodificador_tb);

        A = 4'b0000; #20;
        A = 4'b0001; #20;
        A = 4'b0010; #20;
        A = 4'b0011; #20;
        A = 4'b0100; #20;
        A = 4'b0101; #20;
        A = 4'b0110; #20;
        A = 4'b0111; #20;

        $display("Teste Completo");
    end
endmodule