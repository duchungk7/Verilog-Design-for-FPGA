/*****************************************/
/* Cấu Trúc Ngữ pháp */ 
module <module name> (<port list>);
	<declares>
	<module items>
endmodule

Trong đó: <module items> có thể bao gồm：
1. initial
2. always
3. assign
4. module

/*****************************************/
/*****************************************/
//Example01：
module A(out1, out2, in1, in2);
    output out1;
    output [3:0] out2;
    input in1;
    input [2:0] in2;
endmodule



/*Cách viết đơn giản hơn：*/

module A(output out1, output [3:0] out2, input in1, input [2:0] in2);
endmodule

/* Các cách gọi module */ 
A x(x1, y1, a1, b1); //  kết nối dựa vào các vị trí tương ứng 

A (x1, y1, a1, b1); // lược bỏ tên

A y(.out1(x1), .out2(y1), .in1(a1), .in2(b1)); // tiến hành kết nối dựa vào tên 