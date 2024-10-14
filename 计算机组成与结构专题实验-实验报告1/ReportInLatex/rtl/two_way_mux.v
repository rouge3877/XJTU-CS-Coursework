module two_way_mux (
    input d0, d1, s,
    output y
);
    assign y = (s ? d1 : d0);
endmodule
