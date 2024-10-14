// 结构化描述
module encoder_8to3_structural (
    input [7:0] d,
    output [2:0] y
);
    or (y[2], d[7], d[6], d[5], d[4]);
    or (y[1], d[7], d[6], d[3], d[2]);
    or (y[0], d[7], d[5], d[3], d[1]);
endmodule

// 行为级描述
module encoder_8to3_behavioral (
    input [7:0] d,    
    output reg [2:0] y
);
    always @(*) begin
        y = 3'bXXX; // 默认输出为 XXX
        case (d)
            8'b00000001: y = 3'b000;
            8'b00000010: y = 3'b001;
            8'b00000100: y = 3'b010;
            8'b00001000: y = 3'b011;
            8'b00010000: y = 3'b100;
            8'b00100000: y = 3'b101;
            8'b01000000: y = 3'b110;
            8'b10000000: y = 3'b111;
            default: y = 3'bXXX;    
        endcase
    end
endmodule

// 使用位运算和连续赋值语句描述数据流
module encoder_8to3_dataflow (
    input [7:0] d,
    output [2:0] y
);
    assign y[2] = |d[7:4];
    assign y[1] = |{d[7], d[6], d[3], d[2]};
    assign y[0] = |{d[7], d[5], d[3], d[1]};
endmodule
