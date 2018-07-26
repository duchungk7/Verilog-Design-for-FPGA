/*****************************************/
/* Cấu Trúc Ngữ pháp */ 

/* Tính Chất: */
f = sel ? a : b; 
// Các giá trị bên phải dấu (=) nếu thay đổi, sẽ update giá trị của bên trái
/*****************************************/
/*****************************************/

/*********** if else *************/
// Example01：
if (s == 1'b0)
	y = 0;
else
	y = 1;
	
// Example02：
if (select == 1) y = a;
else y = b;



/*********** case *************/
// Example01：
case ({a,b})
	2'b00: t = 1;
	2'b01: t = 2;
	2'b10: t = 3;
	2'b11: t = 4;
	default: t = 0;
endcase

// Example02：
case (op)
	2'b00: y = a + b;
	2'b01: y = a - b;
	2'b10: y = a ˆ b;
	default: y = ’hxxxx;
endcase


/*********** casez *************/
// Example01：
casez (f)
	2'b00: y=a+b;
	2'b01: y=a-b;
	2'b10: y=a&b;
	2'b11: y=a^b;
	default: y=0;
endcase