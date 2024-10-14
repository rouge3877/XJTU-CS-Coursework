module tb_priority_encoder_8to3;
    reg [7:0] d;  
    wire [2:0] y; 
    wire valid;   
    priority_encoder_8to3 uut (
        .d(d),
        .y(y),
        .valid(valid)
    );

    integer i;
    initial begin
        for (i = 0; i < 256; i = i + 1) begin
            d = i; 
            #10;   
        end

        $finish; 
    end
    initial begin
        $monitor("At time %t: d = %b -> y = %b, valid = %b", $time, d, y, valid);
    end
endmodule
