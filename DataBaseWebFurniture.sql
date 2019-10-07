CREATE DATABASE	WEBSITE_FURNITURE
GO
USE WEBSITE_FURNITURE
GO
CREATE TABLE DanhMucSanPham
(
MaDanhMuc INT IDENTITY PRIMARY KEY,
TenDanhMuc NVARCHAR(100)
)

GO
CREATE TABLE NhomQuyen(
MaNhomQuyen INT IDENTITY PRIMARY KEY,
TenNhomQuyen NVARCHAR(20)
)
GO
CREATE TABLE Users(
MaTaiKhoan INT IDENTITY PRIMARY KEY NOT NULL,
TaiKhoan NVARCHAR(100) NOT NULL,
MatKhau NVARCHAR(100) NOT NULL,
Email NVARCHAR(100) NOT NULL,
HoTen NVARCHAR(100)  NOT NULL,
GIoiTinh BIT NOT NULL,
NgaySinh DATE NOT NULL,
DienThoai NVARCHAR(20) NOT NULL,
DiaChi NVARCHAR(100) NOT NULL,
MaNhomQuyen INT NOT NULL FOREIGN KEY REFERENCES dbo.NhomQuyen(MaNhomQuyen))

GO
INSERT INTO dbo.Users
        ( TaiKhoan ,
          MatKhau ,
          Email ,
          HoTen ,
          GIoiTinh ,
          NgaySinh ,
          DienThoai ,
          DiaChi ,
          MaNhomQuyen
        )
VALUES  ( N'admin' , -- TaiKhoan - nvarchar(100)
          N'admin' , -- MatKhau - nvarchar(100)
          N'nghiemlehong98@gmail.com' , -- Email - nvarchar(100)
          N'Lê Hồng Nghiệm' , -- HoTen - nvarchar(100)
          1 , -- GIoiTinh - bit
          '19981026' , -- NgaySinh - date
          N'0386433092' , -- DienThoai - nvarchar(20)
          N'76/15 Đường số 19 khu phố 4 phường Linh Chiểu, quận Thủ Đức, tp Hồ Chí Minh' , -- DiaChi - nvarchar(100)
          1 -- MaNhomQuyen - int
        )

GO
CREATE TABLE Products(
MaSanPham INT IDENTITY PRIMARY KEY NOT NULL,
MaDanhMuc INT NOT NULL FOREIGN KEY REFERENCES dbo.DanhMucSanPham(MaDanhMuc),
TenSanPham NVARCHAR(100) NOT NULL,
GiaGoc FLOAT NOT NULL,
KhuyenMai FLOAT NOT NULL,
MoTaNgan NVARCHAR(500) NOT NULL,
MoTaChiTiet NVARCHAR(1000) NOT NULL
)

GO


