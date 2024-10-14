module tb_decoder_3to8;
    reg [2:0] a;
    wire [7:0] y;
    decoder_3to8 uut (
        .a(a),
        .y(y)
    );

    integer i;
    initial begin

    // 使用for循环遍历所有输入组合. 每隔 10ns 改变一次输入
    for (i = 0; i < 8; i = i + 1) begin
        a = i;
        #10;
    end

        $finish;
    end

    // 监控信号变化
    initial begin
        $monitor("At time %t: a = %b -> y = %b", $time, a, y);
    end

endmodule
