module tb_four_way_mux_tristate;
    reg d0, d1, d2, d3; 
    reg [1:0] s;       
    wire y;             

    four_way_mux_tristate uut (
        .d0(d0),
        .d1(d1),
        .d2(d2),
        .d3(d3),
        .s(s),
        .y(y)
    );

    integer i;
    initial begin
        // 遍历所有输入组合
        for (i = 0; i < 64; i = i + 1) begin
            {s, d3, d2, d1, d0} = i;  
            #10;                      
        end
        
        $finish;
    end

    // 监控信号变化
    initial begin
        $monitor("At time %t: s = %b, d0 = %b, d1 = %b, d2 = %b, d3 = %b -> y = %b", $time, s, d0, d1, d2, d3, y);
    end

endmodule
