module tb_ALU;

reg [3:0] A, B;
reg [2:0] sel;
wire [3:0] result;

ALU uut ( .A(A), .B(B), .sel(sel), .result(result) );

initial begin
    $display("Time\tA\tB\tSel\tResult");

    A = 4'b0011; B = 4'b0001; sel = 3'b000; #10;
    $display("%0t\t%b\t%b\t%b\t%b", $time, A, B, sel, result);

    A = 4'b0110; B = 4'b0011; sel = 3'b001; #10;
    $display("%0t\t%b\t%b\t%b\t%b", $time, A, B, sel, result);

    A = 4'b1010; B = 4'b1100; sel = 3'b010; #10;
    $display("%0t\t%b\t%b\t%b\t%b", $time, A, B, sel, result);

    A = 4'b1010; B = 4'b0101; sel = 3'b011; #10;
    $display("%0t\t%b\t%b\t%b\t%b", $time, A, B, sel, result);

    A = 4'b1111; B = 4'b0000; sel = 3'b100; #10;
    $display("%0t\t%b\t%b\t%b\t%b", $time, A, B, sel, result);

    $finish;
end

endmodule
