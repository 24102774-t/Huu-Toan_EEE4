# Đặc tả thiết kế 

## 1. Giới thiệu

A02 là bộ cộng/trừ 8-bit có khả năng lựa chọn phép toán và tạo ra bốn cờ trạng thái. Mạch thuộc nhóm số học tổ hợp, được thiết kế bằng SystemVerilog.

Trong ứng dụng thực tế, khối này có thể dùng để tính độ chênh lệch giữa giá trị đo được và giá trị đặt trong bộ điều nhiệt. Khi thực hiện phép trừ, bit dấu của kết quả có thể được dùng để xác định hiệu đang âm hay dương. Tuy nhiên, cần kiểm tra thêm cờ tràn trước khi sử dụng bit dấu để đưa ra kết luận.

Thiết kế sử dụng chung một bộ cộng cho cả hai phép toán, nhờ đó hạn chế việc phải xây dựng riêng một bộ cộng và một bộ trừ.

## 2. Giao diện vào và ra

Module thiết kế chính có tên `a02_addsub_flags`. Các tín hiệu được mô tả trong bảng sau.

| Tín hiệu | Chiều | Độ rộng | Chức năng |
|---|---|---:|---|
| `a[7:0]` | Input | 8 bit | Toán hạng thứ nhất |
| `b[7:0]` | Input | 8 bit | Toán hạng thứ hai |
| `op` | Input | 1 bit | Lựa chọn phép cộng hoặc trừ |
| `y[7:0]` | Output | 8 bit | Kết quả phép toán |
| `c` | Output | 1 bit | Cờ carry hoặc no-borrow |
| `z` | Output | 1 bit | Cờ báo kết quả bằng 0 |
| `n` | Output | 1 bit | Cờ dấu |
| `v` | Output | 1 bit | Cờ tràn số có dấu |

Tín hiệu `op` quyết định phép toán được thực hiện:

- `op = 0`: thực hiện phép cộng \(A+B\).
- `op = 1`: thực hiện phép trừ \(A-B\).

Mạch không có đầu vào clock hoặc reset vì đây là mạch tổ hợp, không lưu giữ trạng thái giữa các chu kỳ.

### 3.1. Sử dụng chung bộ cộng

Mạch A02 sử dụng phương pháp bù 2 để thực hiện phép trừ bằng bộ cộng. Tín hiệu `op` quyết định cách xử lý toán hạng B.

Quy tắc hoạt động:

- Khi `op = 0`, giữ nguyên B và đặt giá trị cộng thêm bằng 0. Mạch thực hiện phép cộng A + B.
- Khi `op = 1`, đảo tất cả các bit của B và cộng thêm 1. Mạch thực hiện phép trừ A - B theo phương pháp bù 2.

Phần xử lý toán hạng B được mô tả trong RTL bằng đoạn mã:

```systemverilog
assign b_eff = b ^ {8{op}};
```

Kết quả phép toán được tính trên 9 bit:

```systemverilog
assign tmp = {1'b0, a} + {1'b0, b_eff} + op;
assign y   = tmp[7:0];
assign c   = tmp[8];
```

Trong đó:

- `b_eff`: toán hạng B sau khi xử lý theo tín hiệu `op`.
- `tmp`: kết quả trung gian 9 bit.
- `y`: 8 bit thấp của kết quả.
- `c`: bit cao nhất của kết quả trung gian.

Nhờ cách thiết kế này, cả phép cộng và phép trừ đều sử dụng chung một bộ cộng. Điều này giúp hạn chế việc phải xây dựng hai khối tính toán riêng biệt.

Lưu ý: Các đoạn mã trên minh họa nguyên lý hoạt động. Khi đưa vào báo cáo, cần đối chiếu tên tín hiệu với mã RTL thực tế.

### 3.2. Ý nghĩa của bốn cờ trạng thái

**Cờ C – Carry/No-borrow**

Cờ `c` lấy từ bit thứ 9 của kết quả trung gian.

- Với phép cộng, `c = 1` khi tổng vượt quá 255.
- Với phép trừ, `c = 1` khi \(A\ge B\), nghĩa là phép trừ không có mượn.
- Với phép trừ, `c = 0` khi \(A<B\), nghĩa là có mượn.

Do đó, cần xác định phép toán đang thực hiện trước khi diễn giải cờ `c`.

**Cờ Z – Zero**

Cờ `z` bằng 1 khi kết quả 8-bit bằng 0, ngược lại bằng 0.

\[
z=(y=0)
\]

Ví dụ, phép tính \(5-5\) cho kết quả bằng 0 nên cờ `z` được bật.

**Cờ N – Negative**

Cờ `n` lấy giá trị từ bit cao nhất của kết quả:

\[
n=y[7]
\]

Khi diễn giải kết quả theo dạng bù 2, `n = 1` cho biết bit dấu là 1. Tuy nhiên, nếu cờ `v = 1`, kết quả có dấu đã bị tràn nên không thể chỉ dựa vào `n` để xác định dấu của kết quả toán học thực tế.

**Cờ V – Overflow**

Cờ `v` dùng để phát hiện tràn số có dấu. Trong thiết kế này, cờ được tính theo công thức:

\[
v=(A[7]=B_{\text{eff}}[7])
\land(y[7]\ne A[7])
\]

Công thức cho biết phép toán bị tràn khi hai toán hạng hiệu dụng có cùng bit dấu nhưng kết quả có bit dấu khác với A.

Ví dụ, với phép cộng \(127+1\), kết quả 8-bit là `8'h80`. Giá trị này tương ứng với −128 nếu diễn giải theo bù 2, trong khi kết quả toán học là 128. Vì vậy, cờ `v` bằng 1.

## 4. Ví dụ hoạt động

Bảng dưới đây minh họa một số trường hợp đại diện để kiểm tra kết quả và các cờ trạng thái.

| Phép toán | `op` | `y` (thập phân) | `c` | `z` | `n` | `v` |
|---|---:|---:|---:|---:|---:|---:|
| \(5-5\) | 1 | 0 | 1 | 1 | 0 | 0 |
| \(0-1\) | 1 | 255 | 0 | 0 | 1 | 0 |
| \(127+1\) | 0 | 128 | 0 | 0 | 1 | 1 |
| \(-128-1\) | 1 | 127 | 1 | 0 | 0 | 1 |
| \(100-50\) | 1 | 50 | 1 | 0 | 0 | 0 |

Các kết quả được biểu diễn trong phạm vi 8 bit. Vì vậy, kết quả có thể quấn vòng khi vượt khỏi phạm vi biểu diễn; mạch không tự động giới hạn kết quả về giá trị lớn nhất hoặc nhỏ nhất.

Bảng này cũng cho thấy cờ `c` và cờ `v` có ý nghĩa khác nhau. Chẳng hạn, phép tính \(127+1\) có `v = 1` nhưng `c = 0`. Do đó, không thể dùng cờ carry thay cho cờ tràn số có dấu.

## 5. Đặc điểm cấu trúc của mạch

A02 là mạch tổ hợp nên đầu ra phụ thuộc vào các tín hiệu đầu vào hiện tại, không phụ thuộc vào lịch sử hoạt động trước đó.

Thiết kế có các đặc điểm sau:

- Không sử dụng flip-flop hoặc thanh ghi.
- Không có clock và reset.
- Sử dụng chung bộ cộng cho hai phép toán.
- Tạo cờ trạng thái trực tiếp từ kết quả và các bit dấu của toán hạng.
- Có thể tổng hợp thành các cell logic thuộc thư viện Sky130.

Trong quá trình tổng hợp, công cụ có thể tối ưu hoặc thay đổi cấu trúc logic bên trong. Vì vậy, cấu trúc cell thực tế không nhất thiết giống hoàn toàn với cách viết trong RTL.

## 6. Kiểm tra và đánh giá thiết kế

Mã nguồn RTL được đặt tại `rtl/a02_addsub_flags.sv`, còn testbench kiểm tra chức năng nằm trong `testbench/a02_tb.sv`. Dữ liệu dạng sóng được lưu tại `sim/a02_wave.vcd`.

Quá trình kiểm tra cần đối chiếu kết quả đầu ra với giá trị mong đợi cho cả phép cộng, phép trừ và các trường hợp biên. Các trường hợp như kết quả bằng 0, có mượn và tràn số có dấu cần được chú ý vì chúng giúp phát hiện lỗi trong cách tính cờ.

Ngoài mô phỏng, các tệp trong thư mục `synth/` được sử dụng để xem kết quả tổng hợp và netlist. Thư mục `openlane/` lưu cấu hình cùng dữ liệu của quá trình thiết kế vật lý.

Khi báo cáo kết quả, số lượng cell, diện tích, độ trễ và kết quả DRC/LVS cần được lấy từ báo cáo thực tế tương ứng. Các thông số này phụ thuộc vào cấu hình công cụ, thư viện và điều kiện chạy, vì vậy không nên xem chúng là giá trị cố định của mọi phiên bản thiết kế.

## 7. Giới hạn của thiết kế

Thiết kế hiện tại chỉ tập trung vào phép cộng, phép trừ 8-bit và bốn cờ trạng thái. Mạch chưa thực hiện các phép toán như nhân, chia hoặc các chức năng của một ALU hoàn chỉnh.

Kết quả mô phỏng chỉ chứng minh chức năng trong phạm vi các trường hợp đã kiểm tra. Kết quả tổng hợp và thiết kế vật lý cung cấp thêm thông tin về cấu trúc phần cứng, diện tích và các lỗi được kiểm tra bởi công cụ. Tuy nhiên, các kết quả này không tự động chứng minh rằng chip đã hoàn tất sign-off, tape-out hoặc được kiểm tra trên silicon.