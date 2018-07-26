/*****************************************/
/* Cấu Trúc Ngữ pháp */ 

initial
begin
	// lập trình tại đây
end

//Tính Chất:
1. Vị trí chạy đầu tiên, khi bắt đầu kích hoạt module 
2. Chạy đến end sẽ kết thúc
3. Chỉ định chạy trong 1 thời điểm nào đó, có thể dùng cho delay
4. Thường dùng trong test bench 

/*****************************************/
/*****************************************/
//Example01：
module ram_with_init(output reg [7:0] q, input [7:0] d, input [4:0] write_address, read_address, input we, clk);
	reg [7:0] mem [0:31];
	integer i;

	// initial các giá trị trong mem[] 
	initial begin
		for (i = 0; i < 32; i = i + 1)
		mem[i] = i[7:0];
	end

	always @ (posedge clk) begin
		if (we)
			mem[write_address] <= d;
			q <= mem[read_address];
	end

endmodule