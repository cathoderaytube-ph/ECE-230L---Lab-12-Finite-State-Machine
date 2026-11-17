module top(
    input [0:0]sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);
    
    // Hook up binary and one-hot state machines
    wire pol;
    wire clk, rst;
    wire [4:0]ohstate;
    wire [2:0]bstate;
    wire oh_z, b_z;
    
    assign pol = sw[0];
    assign clk = btnC;
    assign rst = btnU;
    
    onehot lala(
    .w(pol),
    .clk(clk),
    .reset(rst),
    .z(oh_z),
    .state(ohstate[4:0])
    );
    
    binary tinkywinky(
    .w(pol),
    .clk(clk),
    .reset(rst),
    .z(b_z),
    .state(bstate[2:0])
    );

    assign led[0] = oh_z;
    assign led[1] = b_z;

    // One-hot states
    assign led[2] = ohstate[0];  // A
    assign led[3] = ohstate[1];  // B
    assign led[4] = ohstate[2];  // C
    assign led[5] = ohstate[3];  // D
    assign led[6] = ohstate[4];  // E

    // Binary state
    assign led[9:7] = bstate;
endmodule