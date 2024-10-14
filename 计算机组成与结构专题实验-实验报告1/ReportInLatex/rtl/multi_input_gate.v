module multi_input_gate(
    input a, b, c, d, e,
    output x
);
    assign x = ~(a & ~b & c & (d | e));
endmodule
