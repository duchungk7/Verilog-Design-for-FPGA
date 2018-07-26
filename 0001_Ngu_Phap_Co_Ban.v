Ngữ Pháp Cơ Bản

module <name> // tên module 
	parameter ... // tạo tham số
	port ... // tạo chân pin
	wire ... // tạo dây nối
	reg  ... // tạo vùng nhớ tạm

	initial begin // initial cài đặt ban đầu 
	end

	assign ... // mô phỏng tầng xử lý dữ liệu



	always begin // mô phỏng chức năng vùng logic
		// xử lý dữ liệu & chỉ định chức năng ...
		// sử dụng task hoặc function 
	end

	function  // khởi tạo hàm
	task       // tạo công việc

endmodule