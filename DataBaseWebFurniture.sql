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
Emali NVARCHAR(100) NOT NULL,
HoTen NVARCHAR(100)  NOT NULL,
GIoiTinh BIT NOT NULL,
NgaySinh DATE NOT NULL,
DienThoai NVARCHAR(20) NOT NULL,
DiaChi NVARCHAR(100) NOT NULL,
MaNhomQuyen INT NOT NULL FOREIGN KEY REFERENCES dbo.NhomQuyen(MaNhomQuyen))

