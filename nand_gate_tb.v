module nand_gate_tb;

    // Testbench signals
    reg A;
    reg B;
    wire Y;

    // Instantiate the DUT (Device Under Test)
    nand_gate uut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    // Test stimulus
    initial begin
        // Optional: waveform dump for simulation
        $dumpfile("nand_gate_tb.vcd");
        $dumpvars(0, nand_gate_tb);

        // Apply test vectors
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        // End simulation
        $finish;
    end

    // Monitor changes
    initial begin
        $monitor("Time=%0t | A=%b B=%b | Y=%b", $time, A, B, Y);
    end

endmodule
