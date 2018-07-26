/*****************************************/
/* Cấu Trúc Ngữ pháp */ 
always
begin
	// Lập trình tại đây
end

// Tính Chất:
1. Sẽ được chạy khi bắt đầu mô phỏng
2. Sẽ chạy lại begin sau khi chạy đến end 
3. Thường dùng cho thiết kế mạch, có lúc cũng dùng trong test bench 


/*****************************************/
/*****************************************/
//Example01：
reg q;

always @(posedge clk)
	q = d;

// Vấn đề cần lưu ý
/*
Khi chạy trên bản mạch, tất cả các always block sau khi biên dịch đều chạy đồng bộ
Nhưng khi chạy mô phỏng, always @(posedge clk) block sẽ chạy theo một trình tự không nhất định.
ví dụ dưới đây cho thấy, kết quả mô phỏng không nhất định, cần tránh cách viết này.
*/
// Cách viết sai 
reg d1, d2, d3, d4;
always @(posedge clk) d2 = d1;
always @(posedge clk) d3 = d2;
always @(posedge clk) d4 = d3;

// Cách viết chính xác
reg d1, d2, d3, d4;
always @(posedge clk) begin
	d2 = d1;
	d3 = d2;
	d4 = d3;
end