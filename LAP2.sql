-- câu 1
create database quanlydean2
on primary 
(
  size = 20MB
  ,filegrowth = 1MB
  ,maxsize = 500MB
  ,filename = 'D:\nguyenthithuthao\quanlydean2_data.mdf'
  ,name = quanlydean2_data
)
log on 
(
  size = 2MB
  ,filegrowth = 10%
  ,maxsize = 48MB
  ,filename = 'D:\nguyenthithuthao\quanlydean2_log.ldf'
  ,name = quanlydean2_log
)
--câu 2
use quanlydean2
go
create table phongban
(
maphg varchar(2) primary key,
tenphg nvarchar(20) null
)
create table nhanvien
(
manv varchar(9) primary key,
honv nvarchar(15) null,
tenlot nvarchar(30) null,
tennv nvarchar(30)  null,
ngsinh smalldatetime null,
diachi nvarchar(150) null,
phai nvarchar(3)  null,
luong numeric(18,0) null,
phong varchar(2) null,
FOREIGN KEY (phong)REFERENCES phongban(maphg)
)
create table dean
(
mada varchar(2) primary key,
tenda nvarchar(50) null,
ddiemda varchar(20) null
)

create table phancong
(
manv varchar(9),
mada varchar(2),
thoigian numeric(18,0)  null,
primary key (manv,mada),
FOREIGN KEY (manv)REFERENCES nhanvien (manv),
FOREIGN KEY (mada)REFERENCES dean (mada)
)

create table thannhan
(
manv varchar(9),
tentn varchar(20),
ngaysinh smalldatetime null,
phai varchar(3) null,
quanhe varchar(15)  null,
primary key (manv,tentn),
FOREIGN KEY (manv)REFERENCES nhanvien(manv)
)



-- câu 4--
alter table phongban
alter column tenphg nvarchar(30)

alter table dean
alter column ddiemda nvarchar(20)

alter table thannhan
alter column tentn nvarchar(20)
alter table thannhan
alter column phai nvarchar(3)
alter table thannhan
alter column quanhe nvarchar(15)

alter table nhanvien
add sodienthoai varchar(15)

alter table nhanvien
drop column sodienthoai





--câu 5--
insert into nhanvien
values ('123','Đinh','Bá','Tiến','1982-02-27','Mộ Đức','Nam',null,'4')
insert into nhanvien
values('234','Nguyễn','Thanh','Tùng','1956-08-12','Sơn Tịnh','Nam',null,'5')
insert into nhanvien
values('345','Bùi','Thúy','Vũ',null,'Tư Nghĩa','Nữ',null,'4')
insert into nhanvien
values('456','Lê','Thị','Nhàn','1962-07-12','Mộ Đức','Nữ',null,'4')
insert into nhanvien
values('567','Nguyễn','Mạnh','Hùng','1985-03-25','Sơn Tịnh','Nam',null,'5')
insert into nhanvien
values('678','Trần','Hồng','Quan',null,'Bình Sơn','Nam',null,'5')
insert into nhanvien
values('789','Trần','Thanh','Tâm','1972-06-17','TP Quảng Ngãi','Nam',null,'5')
insert into nhanvien
values('890','Cao','Thanh','Huyền',null,'Tư Nghã','Nữ',null,'1')
insert into nhanvien
values('901','Vương','Ngọc','Quyền','1987-12-12','Mộ Đức','Nam',null,'1')




insert into phongban
values('1','Quản lý')
insert into phongban
values('4','Điều hành')
insert into phongban
values('5','Nghiên cứu')

insert dean
values('1','Nâng cao chất lượng muối','Sa Huỳnh')
insert dean
values('10','Xây dựng nhà máy chế biến thủy sản','Dung Quất')
insert dean
values('2','Phát triển hạ tầng mạng','TP Quảng Ngãi')
insert dean
values('20','Truyền tải cáp quang','TP Quảng Ngãi')
insert dean
values('3','Tin học hóa trường học','Ba tơ')
insert dean
values('30','Đào tạo nhân lực','Tịnh Phong')

insert phancong
values('123','1','33')
insert phancong
values('123','2','8')
insert phancong
values('345','10','10')
insert phancong
values('345','20','10')
insert phancong
values('345','3','10')
insert phancong
values('456','1','20')
insert phancong
values('456','2','20')
insert phancong
values('678','3','40')
insert phancong
values('789','10','35')
insert phancong
values('789','20','30')
insert phancong
values('789','30','5')

insert thannhan
values('123','Châu','2005-10-30','Nữ','Con gái')
insert thannhan
values('123','Duy','2001-10-25','Nam','Con trai')
insert thannhan
values('123','Phương','1985-10-30','Nữ','Vợ chồng')
insert thannhan
values('234','Thanh','1980-04-05','Nữ','Con gái')
insert thannhan
values('345','Dương','1956-10-30','Nam','Vợ chồng')
insert thannhan
values('345','Khang','25/10/1982','Nam','Con trai')
insert thannhan
values('456','Hùng','1987-01-01','Nam','Con trai')
insert thannhan
values('901','Thương','1989-04-05','Nữ','Vợ chồng')