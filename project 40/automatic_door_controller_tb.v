`timescale 1ns/1ps

module automatic_door_controller_tb;

reg clk;
reg reset;
reg sensor;
wire door_open;

automatic_door_controller uut (
    .clk(clk),
    .reset(reset),
    .sensor(sensor),
    .door_open(door_open)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;
    sensor = 0;

    #10 reset = 0;

    #10 sensor = 1;
    #20 sensor = 0;
    #20 sensor = 1;
    #20 sensor = 0;

    #10 $finish;
end

endmodule