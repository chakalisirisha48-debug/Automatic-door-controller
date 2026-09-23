module automatic_door_controller(
    input clk,
    input reset,
    input sensor,
    output reg door_open
);

always @(posedge clk or posedge reset) begin
    if (reset)
        door_open <= 1'b0;
    else if (sensor)
        door_open <= 1'b1;
    else
        door_open <= 1'b0;
end

endmodule