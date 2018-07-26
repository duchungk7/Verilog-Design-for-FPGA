/*****************************************/
/* Cấu Trúc Ngữ pháp */ 

/* Tính Chất: */

/*****************************************/
/*****************************************/
//Example01：

/*********** for-loop *************/
// Example01：
for (i=0; i<16; i=i+1)
	m[i] = i;
  
// Example02：
reg [3:0] i, output;
for ( i = 0 ; i <= 15 ; i = i + 1 ) begin
	output = i;
	#10;
end



/*********** for-loop *************/
// Example01：
i=0
while (i<16) begin
	m[i] = i;
	i = i + 1;
end


// Example02：
reg [3:0] i, output;
i = 0;

while (i <= 15) begin
	output = i;
	#10 i = i + 1;
end