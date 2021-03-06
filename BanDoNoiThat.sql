﻿CREATE DATABASE WebsiteBanDoNoiThat
USE WebsiteBanDoNoiThat
GO
--Bảng danh mục
CREATE TABLE DanhMucSanPham(
MaDanhMuc INT IDENTITY PRIMARY KEY,
TenDanhMuc NVARCHAR(100))
--Bảng sản phẩm 
CREATE TABLE SanPham(
MaSanPham INT IDENTITY PRIMARY KEY,
MaDanhMuc INT FOREIGN KEY REFERENCES dbo.DanhMucSanPham(MaDanhMuc),
TenSanPham NVARCHAR(100),
GiaGoc FLOAT,
KhuyenMai FLOAT,
MoTaNgan NVARCHAR(200),
MoTaChiTiet NTEXT
)
--Bảng tin tức
CREATE TABLE TinTuc(
MaTinTuc INT IDENTITY PRIMARY KEY,
TieuDe NVARCHAR(200),
NoiDung NTEXT)

--Bảng Liên hệ
CREATE TABLE LienHe(
MaLienHe INT IDENTITY PRIMARY KEY,
HoTen NVARCHAR(50),
DiaChi NVARCHAR(100),
Email NVARCHAR(100),
DienThoai NVARCHAR(20),
TieuDe NVARCHAR(200),
NoiDung NTEXT)

--Bảng Users
CREATE TABLE Users(
TaiKhoan NVARCHAR(100) NOT NULL PRIMARY KEY,
MatKhau NVARCHAR(100) NOT NULL,
Email NVARCHAR(100),
HoTen NVARCHAR(100),
GioiTinh BIT,
NgaySinh DATETIME,
DienThoai INT,
DiaChi NVARCHAR(200),
QuanHuyen NVARCHAR(100))
--Bảng đơn hàng

CREATE TABLE DonHang(
MaDonHang INT IDENTITY PRIMARY KEY,
NgayDatHang DATETIME,
HoTen NVARCHAR(100),
DiaChi NVARCHAR(200),
Email NVARCHAR(100),
DienThoai INT,
SoLuongSanPham INT,
TongTien FLOAT)

--Đơn hàng chi tiết

CREATE TABLE DonHangChiTiet(
MaDonHangChiTiet INT IDENTITY PRIMARY KEY,
MaDonHang INT FOREIGN KEY REFERENCES dbo.DonHang(MaDonHang),
MaSanPham INT FOREIGN KEY REFERENCES dbo.SanPham(MaSanPham),
GiaBan FLOAT,
SoLuongSanPhan INT,
SoTien FLOAT)

