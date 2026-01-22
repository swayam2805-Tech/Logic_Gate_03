module nand_gate (
    output Y,
    input A,
    input B
);

    // Instantiate a built-in NAND gate primitive
    // Syntax: nand (output, input1, input2, ...);
    nand (Y, A, B);

endmodule
