module tb_multi_input_gate;
    reg a, b, c, d, e;  
    wire x;             
    multi_input_gate uut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .x(x)
    );

    integer i;
    initial begin
        // 使用for循环遍历所有输入组合（5 个输入，共 32 种组合）
        for (i = 0; i < 32; i = i + 1) begin
            {a, b, c, d, e} = i;
            #10;                
        end

        $finish;
    end

    // 监控信号变化
    initial begin
        $monitor("At time %t: a = %b, b = %b, c = %b, d = %b, e = %b -> x = %b", 
                  $time, a, b, c, d, e, x);
    end

endmodule
