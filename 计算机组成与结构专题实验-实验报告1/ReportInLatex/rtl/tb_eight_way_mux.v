module tb_eight_way_mux;
    reg [7:0] d;
    reg [2:0] s;
    wire y;     
    eight_way_mux uut (
        .d(d),
        .s(s),
        .y(y)
    );
    initial begin
        d = 8'b00000000; 
        s = 3'b000;      
        // 遍历所有可能的输入组合
        repeat (512) begin
            #10 {d, s} = {d, s} + 1;
        end
        #10 $finish;
    end
    // 监控信号变化
    initial begin
        $monitor("At time %t: d = %b, s = %b -> y = %b", $time, d, s, y);
    end
endmodule
