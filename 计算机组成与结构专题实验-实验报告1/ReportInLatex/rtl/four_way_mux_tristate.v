module four_way_mux_tristate (
    input d0, d1, d2, d3,
    input [1:0] s,       
    output y             
);
    wire y0, y1, y2, y3; 
    // 使用三态缓冲器实现复用器
    assign y0 = (s == 2'b00) ? d0 : 1'bz;
    assign y1 = (s == 2'b01) ? d1 : 1'bz;
    assign y2 = (s == 2'b10) ? d2 : 1'bz;
    assign y3 = (s == 2'b11) ? d3 : 1'bz;

    assign y = (s == 2'b00) ? y0 :
               (s == 2'b01) ? y1 :
               (s == 2'b10) ? y2 :
               (s == 2'b11) ? y3 : 1'bz;

endmodule
