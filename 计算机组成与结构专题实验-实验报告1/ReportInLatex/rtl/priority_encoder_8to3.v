module priority_encoder_8to3 (
    input [7:0] d,     
    output reg [2:0] y,
    output reg valid   
);
    always @(*) begin
        valid = 1'b0; // 默认输出为无效状态
        y = 3'b000;
        if (d[7]) begin // 检查优先级，从最高位到最低位
            y = 3'b111;
            valid = 1'b1;
        end
        else if (d[6]) begin
            y = 3'b110;
            valid = 1'b1;
        end
        else if (d[5]) begin
            y = 3'b101;
            valid = 1'b1;
        end
        else if (d[4]) begin
            y = 3'b100;
            valid = 1'b1;
        end
        else if (d[3]) begin
            y = 3'b011;
            valid = 1'b1;
        end
        else if (d[2]) begin
            y = 3'b010;
            valid = 1'b1;
        end
        else if (d[1]) begin
            y = 3'b001;
            valid = 1'b1;
        end
        else if (d[0]) begin
            y = 3'b000;
            valid = 1'b1;
        end
    end
endmodule
