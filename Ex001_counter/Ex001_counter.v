/*****************************************/
/* counter.v */ 

/*****************************************/
/*****************************************/
//Example01：

// Verilog module 
module counter(input clk, rst, output reg [2:0] q);
    always @(posedge clk) begin
        if (rst)
            q = 3'b000;
        else
            q = q+1;
    end
endmodule



// Verilog test bench
`timescale 1ns/10ps

module counterTest;
reg clk;
reg rst;
wire [2:0] q;

counter DUT (.clk(clk), .rst(rst), .q(q));

initial
begin
	clk = 0;
	rst = 1;
end

initial #100 rst = 0;
always #50 clk=clk+1;

endmodule