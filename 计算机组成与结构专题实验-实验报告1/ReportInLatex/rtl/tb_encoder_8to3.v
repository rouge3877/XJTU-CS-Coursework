module tb_encoder_8to3;
    reg [7:0] d;   
    wire [2:0] y;  
    encoder_8to3_structural uut (
        .d(d),
        .y(y)
    );
    integer i;
    initial begin
        for (i = 0; i < 256; i = i + 1) begin
            d = i;
            if(256%i == 0) #10;
        end
        $finish;
    end
    initial begin
        $monitor("At time %t: d = %b -> y = %b", $time, d, y);
    end
endmodule
