/**************************************************************************************/
/* Cấu Trúc Ngữ pháp */ 
/* Tính Chất */
// Sự khác biệt giữa assign và always
/* Trong đoạn code bên dưới, seg = tseg chỉ có thể dùng assign, bởi vì trong always, bên phải dấu bằng có biến là loại reg
Nhưng trong assign cũng có thể là loại tham số dùng cho output */
  
module Seg7(input [3:0] num, output [7:0] seg);
   reg [7:0] tseg;
    always @(num) begin
        case (num)
            4'b0000: tseg = 8'b11111100; // 0
            4'b0001: tseg = 8'b01100000; // 1
            4'b0010: tseg = 8'b01011010; // 2
            4'b0011: tseg = 8'b11110010; // 3
            4'b0100: tseg = 8'b01100110; // 4
            4'b0101: tseg = 8'b10110110; // 5
            4'b0110: tseg = 8'b10111110; // 6
            4'b0111: tseg = 8'b11100100; // 7
            4'b1000: tseg = 8'b11111110; // 8
            4'b1001: tseg = 8'b11110110; // 9
            default: tseg = 8'b00000000; //  
        endcase
        // seg = tseg;
    end
    assign seg = tseg;
endmodule

/**************************************************************************************/
// Phương pháp:
// Có 2 loại Assign ：Blocking v.s. Nonblocking
a = b ; // Blocking assignment : quy trình chạy không nhất định

a <= b; // Nonblocking assignment : Những thứ có thể chạy đồng bộ đều chạy 1 lần, 
//sau đó mới đến điểm thời gian sau đó

// Có 2 loại phương pháp chạy：Sequential v.s. Concurrent
//  2 loại điều khiển thời gian：Delayed evaluations v.s. Delayed assignments

// Ví dụ 
reg [8:0] sum;
wire [7:0] a, b;
wire carryin;

assign sum = a + b + carryin; // Khi a, b, carryin thay đổi, dòng lệnh đều chạy lại
/* Chú ý: như dòng lệnh sum = a + b + cin, 
giá trị sum bên trái dấu "=" bắt buộc phải là loại dữ liệu reg, không được dùng wire
(trừ khi là primitives hoặc continuous assignment bên trái mới có thể dùng wire)*/

/**************************************************************************************/
/* Ví dụ so sánh Block và NonBlocking
So sánh 1：
Chương trình bên dưới sử dụng Blocking assignment (=)，
nên các bước chạy không nhất định, cho nên d2, d3, d4 kết quả sau khi chạy sẽ khác nhau, 
cách viết không tốt.*/

reg d1, d2, d3, d4;
always @(posedge clk) d2 = d1;
always @(posedge clk) d3 = d2;
always @(posedge clk) d4 = d3;

/* Chương trình bên dưới sử dụng NonBlocking assignment (<=)，
Các sự việc đều chạy đồng bộ, tất cả đều chạy xong 1 lần mới chạy với điểm thời gian sau đó, 
cho nên d2, d3, d4 sẽ phân biệt nhận được kết quả từ những lần chạy trước đó  */

reg d1, d2, d3, d4;
always @(posedge clk) d2 <= d1;
always @(posedge clk) d3 <= d2;
always @(posedge clk) d4 <= d3;



// So sánh 2：
// Blocking Assignment: Kết quả sau khi chạy là:  a=1, b=1, c=1
a = 1;
b = a;
c = b;

// NonBlocking Assignment: 
// Kết quả sau khi chạy là: a=1; b = kết quả a lần chạy trước; c=kết quả b lần chạy trước;
a <= 1;
b <= a;
c <= b;