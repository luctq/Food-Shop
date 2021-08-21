# WebProject
+Ngôn ngữ Java, HTML, CSS, framework Spring MVC, Boottrap.
+Môi trường: Xampp, Apache server
+Database: MySQL


TRƯỜNG ĐẠI HỌC CÔNG NGHỆ - ĐẠI HỌC QUỐC GIA HÀ NỘI
KHOA CÔNG NGHỆ THÔNG TIN ĐỊNH HƯỚNG THỊ TRƯỜNG NHẬT BẢN
BỘ MÔN CÔNG NGHỆ PHẦN MỀM



TÀI LIỆU ĐẶC TẢ YÊU CẦU PHẦN MỀM


Dự án : Hệ thống mua bán đồ ăn

Thành viên nhóm :
Trần Quốc Lực
Lê Hải Long
Tạ Thị Như Quỳnh
Lê Hải Long
 





Bảng ghi nhận thay đổi 
Ngày thay đổi
Phiên bản
Mô tả
Tác giả/Nhóm tác giả

1.0
<Mô tả chi tiết Mục, bảng, sơ đồ nào thay đổi; nội dung thay đổi là gì>









































Mục lục
I – Giới thiệu chung	4
1. Mục tiêu	4
2. Phạm vi	4
3. Các thuật ngữ, từ viết tắt	5
4. Tài liệu tham khảo	5
II – Mô tả hệ thống	5
1. Mục tiêu của hệ thống	5
2. Yêu cầu chung về hệ thống	6
3. Đối tượng người dùng	6
4. Ràng buộc	7
III – Các yêu cầu chung	7
1. Yêu cầu về môi trường (F001)	7
2. Yêu cầu về giao diện (F005)	7
IV – Sơ đồ hệ thống	8
1. Sơ đồ chức năng	8
2. Biểu đồ use-case mô tả các chức năng chính của hệ thống	9
V – Danh sách chức năng	9
1. Giới thiệu nhà hàng	10
2. Giới thiệu món ăn	10
3. Tìm kiếm món ăn	11
4. Đăng ký tài khoản của khách hàng	11
5.  Giỏ hàng	12
6. Quản lý tài khoản khách hàng	12
7. Đăng nhập, đăng xuất với tài khoản của khách hàng	13
8. Đánh giá món ăn	13
9. Đăng ký tài khoản của nhân viên nhà hàng	14
10. Đăng nhập, đăng xuất với tài khoản của nhân viên nhà hàng	14
11. Quản lý tài khoản của nhân viên nhà hàng	15
12. Duyệt, hủy đơn đặt món	15
13. Thống kê đơn đặt món theo thời gian, cập nhật doanh thu	16
14. Cập nhật món ăn	16
V - Các yêu cầu phi chức năng	17
1. Giao diện người dùng	17
2. Tính bảo mật	17
3. Ràng buộc	17

I – Giới thiệu chung
1. Mục tiêu
Tài liệu này cung cấp chi tiết, toàn diện các đặc tả yêu cầu cho hệ thống hỗ trợ mua bán đồ ăn trực tuyến dưới cái nhìn tổng quan, dễ hiểu. Nó minh họa mục đích cụ thể và thông tin chi tiết hệ thống. Trong đó bao gồm các ràng buộc về hệ thống, giao diện người dùng. Đồng thời, nó là tài liệu tham khảo cho việc thiết kế, lập trình, kiểm thử trong quy trình phát triển hệ thống. 
2. Phạm vi
Tài liệu này được xây dựng nhằm phục vụ cho hoạt động mua bán của nhà hàng trên nền tảng trực tuyến. Thực khách không phải cất công đến tận nhà hàng nhưng vẫn có cơ hội thưởng thức nhiều món ăn ngon, bổ dưỡng do chính nhà hàng phục vụ. Đồng thời, nhà hàng được dễ dàng quảng bá đến với nhiều người hơn, thu hút thêm một lượng khách từ ngoài khu vực hoạt động thường xuyên vốn có.
Hệ thống được cài đặt tại quầy lễ tân của nhà hàng. Thực khách có thể đến nhà hàng rồi đặt món hoặc đặt món từ xa trên hệ thống. Nhân viên tại quầy lễ tân có thể thanh toán hóa đơn một cách nhanh chóng, dễ dàng, chính xác. Đồng thời, bộ phận quản lí cũng có thể thống kê, kiểm soát doanh thu nhờ vào hệ thống này.
3. Các thuật ngữ, từ viết tắt
STT
Thuật ngữ, từ viêt tắt
Giải thich
Ghi chú
1
CSDL
Cơ sở dữ liệu

2
SĐT
Số điện thoại

3
Use case
Ngữ cảnh sử dụng
Use case mô tả sự tương tác đặc trưng giữa người dùng bên ngoài (actor) và hệ thống.
4
Admin 
Quản lý

5
Confirm
Xác nhận

6
Null
Không xác định


4. Tài liệu tham khảo
    • Giáo trình Nhập môn Công nghệ phần mềm (biên tập bởi Phạm Thị Quỳnh)
    • Tài liệu đặc tả yêu cầu phần mềm bán hàng theo chuẩn IEEE | Gin Letham - Academia.edu
II – Mô tả hệ thống
1. Mục tiêu của hệ thống
    • Giới thiệu về các món ăn của nhà hàng.
    • Cho phép khách hàng truy cập từ xa, đặt món, đánh giá mức độ phục vụ của nhà hàng.
    • Nhân viên thu ngân duyệt đơn đặt hàng của khách, sắp xếp rồi giao cho khách.
    • Tổng hợp, thống kê, theo dõi tình hình đặt hàng.
2. Yêu cầu chung về hệ thống
Hệ thống gồm 2 phần chính : quản lý việc đặt món và quản lý thông tin lưu trong CSDL :	
a) Quản lý đặt món
- Chọn món vào giỏ hàng và nhập thông tin vào mẫu đơn đặt món.
- Thanh toán đơn đặt món theo giá và số lượng các món được đặt.
b) Quản lý thông tin lưu trong CSDL
-  Tạo, sửa, xóa các thông tin về món ăn mà nhà hàng phục vụ
-  Tạo, sửa, xóa các thông tin về đơn đặt hàng đã thanh toán, chưa thanh toán, đã hủy.
- Tạo, sửa, xóa các thông tin về tài khoản người dùng, người quản trị
3. Đối tượng người dùng
 Các đối tượng tham gia vào hệ thống :
    • Khách hàng : người đặt món từ xa hoặc ngay tại nhà hàng, tìm, chọn món và điền vào đơn đặt món. 
Đặc biệt : khách có thể không trực tiếp dùng tương tác trên hệ thống, mà thay vào đó liên hệ với nhân viên lễ tân trực tiếp tại nhà hàng, hoặc qua đường dây nóng từ xa. Sau đó, nhân viên lễ tân thay khách nhập thông tin vào mẫu đơn đặt món.
    • Nhân viên lễ tân : người nhận và duyệt các đơn đặt món, có thể hủy đơn, thanh toán cho khách.
    • Quản lý nhà hàng : người thay đổi các thông tin trong thực đơn : thêm món, xóa món, sửa đổi về món, quản lý thông tin tài khoản người dùng, người quản trị, kiểm soát doanh thu.
4. Ràng buộc
Hệ thống được cài đặt trong máy chủ của quầy thu ngân, kết nối với CSDL của nhà hàng.
Ngôn ngữ viết hệ thống : Java, xml, html, javascript
Yêu cầu quá trình thiết kế : báo cáo nghiên cứu khả thi, kế hoạch dự án, đặc tả yêu cầu phần mềm, tài liệu thiết kế, tài liệu kiểm tra và kết quả thử nghiệm.
Các công cụ hỗ trợ phát triển :
    • Eclipse
    • MySQL
    • phpMyAdmin
    • xampp
Thiết kế kiến trúc và hạn chế : 
III – Các yêu cầu chung	
1. Yêu cầu về môi trường (F001)
Mã nghiệp vụ
Yêu cầu
F001.01
Có máy chủ chứa CSDL kết nối Internet
F001.02
Mạng LAN trong nhà hàng có thể kết nối tới CSDL 

2. Yêu cầu về giao diện (F005)
Mã nghiệp vụ
Yêu cầu
F005.01
Giới thiệu thông tin nhà hàng bao gồm : tên, địa chỉ, SĐT
F005.02
Giới thiệu danh sách món ăn mà nhà hàng đang phục vụ : ảnh đại diện, tên món, giá cả, các đánh giá của thực khách từng đặt món.
F005.03
Mẫu đơn đặt món gồm : tên, địa chỉ email, ngày đặt, địa chỉ giao hàng, ghi chú

IV – Sơ đồ hệ thống
1. Sơ đồ chức năng

2. Biểu đồ use-case mô tả các chức năng chính của hệ thống

V – Danh sách chức năng
STT
Mã chức năng
Tên chức năng
1
FC001
Giới thiệu nhà hàng
2
FC002
Giới thiệu món ăn 
3
FC003
Tìm kiếm món ăn
4
FC004
Đăng ký tài khoản của khách hàng
5
FC005
Giỏ hàng
6
FC006
Quản lý tài khoản khách hàng
7
FC007
Đăng nhập, đăng xuất với tài khoản của khách hàng
8
FC008
Đánh giá món ăn
9
FC009
Đăng ký tài khoản của nhân viên nhà hàng
10
FC010
Đăng nhập, đăng xuất với tài khoản của nhân viên nhà hàng
11
FC011
Quản lý tài khoản của nhân viên nhà hàng
12
FC012
Duyệt, hủy đơn đặt món
13
FC013
Thống kê đơn đặt món theo thời gian, cập nhật doanh thu
14
FC014
Cập nhật món ăn

1. Giới thiệu nhà hàng 
    a) Mô tả
Chức năng này sẽ giới thiệu nhà hàng một cách chi tiết về tên, địa chỉ, SĐT, 
    b) Quy trình thực hiện
Thiết kế hệ thống để đáp ứng những yêu cầu về mặt thông tin nói trên, hiển thị ở cuối trang chủ.
    c) Yêu cầu
Mã nghiệp vụ
Mã yêu cầu 
Nội dung
UR001
FC001
Giới thiệu nhà hàng trên hệ thống với các thông tin cụ thể nói trên

2. Giới thiệu món ăn 
a) Mô tả
Chức năng này sẽ giới thiệu các món ăn trong danh sách, thông tin bao gồm : ảnh minh họa, tên, giá cả, đánh giá của khách từng đặt.
b) Quy trình thực hiện
Thiết kế trang thực đơn đáp ứng những yêu cầu về thông tin nói trên.
c) Yêu cầu
Mã nghiệp vụ
Mã yêu cầu
Nội dung
UR002
FC002
Hiển thị danh sách món ăn, nhấn vào món nào có thể xem được thông tin chi tiết về món đó

3. Tìm kiếm món ăn
a) Mô tả
Chức năng cho phép khách có thể tìm kiếm món ăn mình muốn.
b) Quy trình thực hiện
Nhập tên món ăn vào ô tìm kiếm, các kết quả tương ứng sẽ hiện ra.
c) Yêu cầu
Mã nghiệp vụ
Mã yêu cầu
Nội dung
UR003
FC003
Thiết kế trang phục vụ chức năng tìm kiếm, tại đó có ô để nhập từ khóa tìm kiếm, hiển thực hiện truy vấn trên CSDL và hiển thị kết quả

4. Đăng ký tài khoản của khách hàng
a) Mô tả 
Chức năng cho phép khách hàng tạo tài khoản người dùng trên hệ thống.
b) Quy trình thực hiện
Thiết kế mục đăng ký cho khách hàng với các thông tin cần nhập.
c) Yêu cầu
Mã nghiệp vụ
Mã yêu cầu
Nội dung
UR004
FC004
Khách hàng nhập các thông tin vào cá nhân vào mục đăng ký tài khỏa, bao gồm : tên, địa chỉ email, mật khẩu,… Thông tin được lưu vào CSDL của nhà hàng.

5.  Giỏ hàng
a) Mô tả 
Chức năng này sẽ lưu các món mà khách chọn thành một danh sách.
b) Quy trình thực hiện
Thiết kế trang giỏ hàng có tác dụng như một danh sách ghi lại các món mà khách chọn.
c) Yêu cầu 
Mã nghiệp vụ
Mã yêu cầu
Nội dung
UR005
FC005
Mỗi khi khách hàng nhấn vào ô chọn ở từng món tương ứng, thông tin món đó sẽ lưu trong giỏ hàng, tiện cho việc thiết lập đơn đặt món.

6. Quản lý tài khoản khách hàng
a) Mô tả
Chức năng này sẽ giúp khách có thể thay đổi thông tin cá nhân trong tài khoản mà mình đã đăng ký, xóa tài khoản.
b) Quy trình thực hiện
Thiết kế trang tài khoản khách hàng ghi lại thông tin cá nhân đi kèm chức năng chỉnh sửa, xóa tài khoản.
c) Yêu cầu
Mã nghiệp vụ
Mã yêu cầu
Nội dung
UR006
FC006
Khách hàng khi có nhu cầu, có thể xem lại thông tin của mình trên hệ thống, thay đổi, xóa tài khoản.

7. Đăng nhập, đăng xuất với tài khoản của khách hàng
a) Mô tả
Chức năng này cho phép khách hàng đăng nhập, đăng xuất tài khoản của mình.
b) Quy trình thực hiện
Thiết kế mục đăng nhập và đăng xuất cho khách hàng.
c) Yêu cầu 
Mã nghiệp vụ
Mã yêu cầu
Nội dung
UR007
FC007
Khách hàng nhấn vào mục đăng nhập. Sau đó, nhập tên tài khoản, mật khẩu vào cửa sổ nhỏ hiện ra. Sau khi đăng nhập, có thể nhấn vào mục đăng xuất nếu muốn

8. Đánh giá món ăn
a) Mô tả
Chức năng này giúp khách hàng bày tỏ cảm nhận sau khi đã thưởng thức món ăn. Nhờ đó mà nhà hàng có thể nắm bắt được, tiếp tục phát huy những điểm được khen, khắc phục hạn chế.
b) Quy trình thực hiện
Thiết kế ô nhập để khách hàng đưa ra nhận xét, bình luận về mức độ phuc vụ của nhà hàng.
Mã nghiệp vụ
Mã yêu cầu
Nội dung
UR008
FC008
Khách hàng có thể nhập nhận xét vào ô trống nếu muôn. Đồng thời, các nhận xét trước đó của các khách hàng khác nhau cũng được hiển thị ra.

9. Đăng ký tài khoản của nhân viên nhà hàng
a) Mô tả 
Chức năng cho phép nhân viên tạo tài khoản người dùng trên hệ thống.
b) Quy trình thực hiện
Thiết kế mục đăng ký cho nhân viên với các thông tin cần nhập.
c) Yêu cầu
Mã nghiệp vụ
Mã yêu cầu
Nội dung
UR009
FC009
Nhân viên nhập các thông tin vào cá nhân vào mục đăng ký tài khỏa, bao gồm : tên, địa chỉ email, mật khẩu,… Thông tin được lưu vào CSDL của nhà hàng.


10. Đăng nhập, đăng xuất với tài khoản của nhân viên nhà hàng
a) Mô tả
Chức năng này cho phép nhân viên đăng nhập, đăng xuất tài khoản của mình.
b) Quy trình thực hiện
Thiết kế mục đăng nhập và đăng xuất cho nhân viên.
c) Yêu cầu 
Mã nghiệp vụ
Mã yêu cầu
Nội dung
UR010
FC010
Nhân viên nhấn vào mục đăng nhập. Sau đó, nhập tên tài khoản, mật khẩu vào cửa sổ nhỏ hiện ra. Sau khi đăng nhập, có thể nhấn vào mục đăng xuất nếu muốn

11. Quản lý tài khoản của nhân viên nhà hàng
a) Mô tả
Chức năng này sẽ giúp nhân viên có thể thay đổi thông tin cá nhân trong tài khoản mà mình đã đăng ký, xóa tài khoản.
b) Quy trình thực hiện
Thiết kế trang tài khoản nhân viên ghi lại thông tin cá nhân đi kèm chức năng chỉnh sửa, xóa tài khoản.
c) Yêu cầu
Mã nghiệp vụ
Mã yêu cầu
Nội dung
UR011
FC011
Nhân viên khi có nhu cầu, có thể xem lại thông tin của mình trên hệ thống, thay đổi, xóa tài khoản.

12. Duyệt, hủy đơn đặt món
a) Mô tả
Chức năng này cho phép nhân viên có thể duyệt đơn đặt món cho khách hàng.
b) Quy trình thực hiện
Thiết kế trang hiển thị danh sách đơn đặt món chưa được duyệt.
c) Yêu cầu
Mã nghiệp vụ
Mã yêu cầu
Nội dung
UR012
FC012
Nhân viên tiến hành duyệt, hủy đơn. Gửi xác nhận cho khách hàng. Tiến hành giao món cho khách. Lưu thông tin đơn đặt vào CSDL

13. Thống kê đơn đặt món theo thời gian, cập nhật doanh thu
a) Mô tả
Chức năng này cung cấp thông tin về các đơn đã giao thành công.
b) Quy trình thực hiện
Thiết kế trang lưu trữ các đơn hàng đã giao thành công kèm tổng giá tiền.
c) Yêu cầu
Mã nghiệp vụ
Mã yêu cầu
Nội dung
UR013
FC013
Quản lý nắm bắt được doanh thu của nhà hàng, dễ dàng lập báo cáo.

14. Cập nhật món ăn
a) Mô tả
Chức năng này cho phép quản lý có thể thay đổi danh sách món ăn của nhà hàng.
b) Quy trình thực hiện
Thiết kế trang hiển thị danh sách món ăn kèm các chức năng thay đổi món trong danh sách.
c) Yêu cầu
Mã nghiệp vụ
Mã yêu cầu
Nội dung
UR014
FC014
Quản lý thêm, sửa, xóa thông tin về các món ăn mà nhà hàng phục vụ
 
V - Các yêu cầu phi chức năng
1. Giao diện người dùng
 Giao diện hiển thị tốt trên các thiết bị khác nhau. Đối với khách khi truy cập sử dụng hệ thống thông qua trình duyệt web, hệ thống sẽ nhận yêu cầu truy cập từ phía máy khách thông qua trình duyệt và gửi trả về cho trình duyệt các menu chức năng tương ứng với phạm vi của từng người dùng. Trong trường hợp này, khách có thể tương tác với hệ thống thông qua cửa sổ màn hình trên trình duyệt với cấu trúc trang như sau :











Giao diện cho nhân viên nhà hàng :








2. Yêu cầu hiệu năng
Độ tin cậy : Khi thanh toán đơn đặt món cho khách, thông tin được tổng hợp lại, tính giá trị của đơn chính xác.
Dễ sử dụng : ngôn ngữ, giao diện dễ hiểu, các biểu tượng mang ý nghĩa nhất quán.
Tính bảo mật : người dùng chỉ có thể sử dụng các chức năng và truy cập các dữ liệu phù hợp với vai trò của người dùng đó.
3. Ràng buộc 
Đây là hệ thống dựa trên Web do vậy người dùng cần có các thiết bị có kết nối với internet như máy vi tính và được cung cấp các dịch vụ như thư điện tử, hình ảnh, văn bản, đa phương tiện, giao thức truyền thông siêu văn bản để có thể gửi và nhận thông tin, dữ liệu giữa máy khách và web server.
 Bên phía máy khách – người dùng cần có phần mềm ứng dụng duyệt Web như Google Chrome, Internet Explore, Mozilla Firefox, Opera với phiên bản mới nhất có hỗ trợ JavaScript.
VII – Cơ sở dữ liệu
1. Giới thiệu
a) Mục tiêu
Phần này mô tả chi tiết về thiết kế CSDL ở mức logic và mức vật lý của hệ thống.
b) Phạm vi
Đây là cơ sở giao tiếp của các nhân viên nhà hàng, là cơ sở để kiểm thử, vận hành bảo trì, nhằm có cái nhìn tổng quát, toàn diện về hệ thống
2. Mô hình thực thể - liên kết
3. Thiết kế cơ sở dữ liệu logic
Danh sách các bảng :
STT
Tên bảng
Bí danh
Mô tả
1
Tài khoản nhân viên
admin
Mỗi nhân viên tham gia vào hệ thống này sẽ có tên đăng nhập và mật khẩu để truy cập.
2
Đơn đặt món
bills
Cho biết thông tin về khách hàng đặt món, giá tiền, ngày đặt,… Mỗi đơn có một mã duy nhất, đơn giản trong vấn đề quản lý
3
Chi tiết đơn đặt món
billdetail
Cho biết mã món ăn, mã đơn, số lượng từng món, giá tiền. Đảm bảo tính chính xác cho nhà hàng và khách hàng
4
Nhóm món ăn
categories
Mỗi món ăn thuộc về 1 thể loại, bảng sẽ cho biết thể loại món ăn
5
Tài khoản khách hàng
users
Mỗi khách hàng tham gia vào hệ thống này sẽ có tên đăng nhập và mật khẩu để truy cập.
6
Đánh giá của khách hàng
evaluate
Lưu trữ mã tài khoản khách hàng, mã món ăn được đánh giá, nội dung đánh giá
7
Món ăn
products
Cho biết thông tin chi tiết của các món ăn, mỗi món có mã duy nhất

4. Thiết kế cơ sở dữ liệu vật lý
a) Bảng “admin”
STT
Tên trường
Kiểu dữ liệu
Độ dài
Cho phép null
Duy nhất
Khóa chính
Giá trị mặc định
Mô tả
1
id
int
11

x
x

Mã tài khoản nhân viên, tự tăng
2
username
varchar
50

x


Tên tài khoản
3
password
varchar
50




Mật khẩu
4
name
varchar
50




Tên hiển thị

b) Bảng “bills”
STT
Tên trường
Kiểu dữ liệu
Độ dài
Cho phép null
Duy nhất
Khóa chính
Giá trị mặc định
Mô tả
1
id
bigint
20

x
x

Mã đơn đặt món
2
user
varchar
255




Tên tài khoản khách hàng
3
phone
varchar
255




SĐT của khách
4
display_name
varchar
255




Tên hiển thị
5
address
varchar
255




Địa chỉ 
6
total
double





Tổng giá tiền
7
quanty
int
11




Số lượng
8
note
text





Ghi chú

c) Bảng “billdetail”
STT
Tên trường
Kiểu dữ liệu
Độ dài
Cho phép null
Duy nhất
Khóa chính
Giá trị mặc định
Mô tả
1
id_product
bigint
20


x

Mã món ăn
2
id_bills
bigint
20


x

Mã đơn đặt món
3
quanty
int
11




Số lượng
4
total
double





Tổng giá tiền

d) Bảng “categories”
STT
Tên trường
Kiểu dữ liệu
Độ dài
Cho phép null
Duy nhất
Khóa chính
Giá trị mặc định
Mô tả
1
id
int
11

x
x

Mã thể loại món
2
name
varchar
255




Tên thể loại
3
description
text

x



Mô tả

e) Bảng “users”
STT
Tên trường
Kiểu dữ liệu
Độ dài
Cho phép null
Duy nhất
Khóa chính
Giá trị mặc định
Mô tả
1
id
bigint
11

x
x

Mã tài khoản khách hàng, tự tăng
2
username
varchar
100




Tên tài khoản
3
password
varchar
255




Mật khẩu
4
display_name
varchar
150




Tên hiển thị
5
address
text

x



Địa chỉ
f) Bảng “evaluate”
STT
Tên trường
Kiểu dữ liệu
Độ dài
Cho phép null
Duy nhất
Khóa chính
Giá trị mặc định
Mô tả
1
id_product
bigint
20

x
x

Mã món ăn
2
id_user
int
11

x
x

Mã tài khoản khách hàng
3
content
text





Nội dung
4
num_star
int
11




Số sao

g) Bảng “products”
STT
Tên trường
Kiểu dữ liệu
Độ dài
Cho phép null
Duy nhất
Khóa chính
Giá trị mặc định
Mô tả
1
id
bigint
20

x
x

Mã món ăn
2
id_category
int
11




Mã thể loại món ăn
3
name
varchar
255




Tên món ăn
4
price
double





Giá tiền
5
sale
int
3




Giảm giá
6
title
varchar
255




Tiêu đề
7
highlight
tinyint
1
x


null
Điểm nối bật
8
new_product
tinyint
1
x


null
Món ăn mới
9
details
longtext





Chi tiết món ăn
10
create_at
date





Ngày tạo
11
update_at
date

x


null
Ngày cập nhật
12
status
tinyint
1
x


null
Trạng thái
13
img
varchar
255




Ảnh minh họa

