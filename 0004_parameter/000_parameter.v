/*****************************************/
/* Cấu Trúc Ngữ pháp */ 
/* Tính Chất */

/*****************************************/
/*****************************************/
//Example01：
parameter lsb = 7 ;
parameter size = 8 ,
parameter number = 3.92,


//Example 2
module my_module (Clk, D, Q) ;
	parameter width = 2,
	delay = 10 ;
	input [width - 1 : 0] D ;
	input Clk ;
	output [width : 0] Q ;
	assign #delay Q = D;
endmodule

//Example 3
module top;
	reg Clk ;
	reg [7:0] D ;
	wire [7:0] Q ;
	my_module inst_1(Clk, D, Q) ;
endmodule
 
module override ;
	defparam top.inst_1.width = 7 ;
endmodule

//Example 4

module top;
	reg Clk ;
	reg [7:0] D ;
	wire [7:0] Q ;
	my_module #(7, 25) inst_1(Clk, D, Q) ;
endmodule

//Example 5

parameter foo = 4;
parameter data = foo / 10 ;

khi thay đổi giá trị 'foo', thì giá trị 'data' cũng tự động thay đổi 
