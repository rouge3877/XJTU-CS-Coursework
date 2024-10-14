module tb_two_way_mux;
    reg d0, d1, s;
    wire y;
    two_way_mux uut (
        .d0(d0),
        .d1(d1),
        .s(s),
        .y(y)
    );

    initial begin
        d0 = 0;
        d1 = 0;
        s = 0;

        #10 {s, d1, d0} = 3'b000;
        #10 {s, d1, d0} = 3'b001;
        #10 {s, d1, d0} = 3'b010;
        #10 {s, d1, d0} = 3'b011;
        #10 {s, d1, d0} = 3'b100;
        #10 {s, d1, d0} = 3'b101;
        #10 {s, d1, d0} = 3'b110;
        #10 {s, d1, d0} = 3'b111;
        
        #10 $finish;
    end
    
    // 监控信号变化
    initial begin
        $monitor("At time %t: d0 = %b, d1 = %b, s = %b -> y = %b", $time, d0, d1, s, y);
    end
endmodule
