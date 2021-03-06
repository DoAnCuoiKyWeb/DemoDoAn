use master
go
if DB_ID('MobileShop') is not null
	drop database MobileShop
go
create database MobileShop 
go
use MobileShop
go

-- Table ChiTietDonDatHang
--

CREATE TABLE ChiTietDonDatHang (
  MaChiTietDDH nvarchar(10) NOT NULL,
  MaDonDatHang nvarchar(10) NOT NULL,
  MaSanPham int NOT NULL,
  GiaBan int DEFAULT NULL,
  SoLuong int DEFAULT NULL,
  constraint pk_ChiTietDonHang primary key (MaChiTietDDH)
) 

--
-- Nhap lieu ChiTietDonHang
--

INSERT INTO ChiTietDonDatHang (MaChiTietDDH , MaDonDatHang, MaSanPham, GiaBan, SoLuong) VALUES
(N'1001170030', N'100117003', 10, 10990000, 1),
(N'10100001', N'100001', 1, 27990000, 1),
(N'10100002', N'100002', 4, 22290000, 1),
(N'10100003', N'100003', 9, 12490000, 1),
(N'10100004', N'100004', 10, 10990000, 1),
(N'1101170010', N'110117001', 22, 9990000, 1),
(N'1101170020', N'110117002', 8, 15990000, 1);

-- --------------------------------------------------------

--
-- Table DonDatHang
--

CREATE TABLE DonDatHang (
  MaDonDatHang nvarchar(10) NOT NULL,
  NgayLap datetime DEFAULT NULL,
  TongThanhTien int DEFAULT NULL,
  MaTaiKhoan int NOT NULL,
  MaTinhTrang int NOT NULL,
  constraint pk_DonDatHang primary key (MaDonDatHang)
) 

--
-- Nhap lieu DonDatHang
--

INSERT INTO DonDatHang (MaDonDatHang, NgayLap, TongThanhTien, MaTaiKhoan, MaTinhTrang) VALUES
(N'100001', '2016-12-20 00:00:00', 27990000, 1, 2),
(N'100002', '2016-12-20 00:00:00', 22290000, 1, 3),
(N'100003', '2016-12-29 00:00:00', 12490000, 3, 3),
(N'100004', '2016-12-26 00:00:00', 10990000, 4, 2),
(N'100117003', '2017-01-10 23:38:04', 10990000, 1, 3),
(N'110117001', '2017-01-11 20:38:28', 18980000, 4, 2),
(N'110117002', '2017-01-11 22:29:05', 25980000, 2, 2);

-- --------------------------------------------------------

--
-- Table LoaiSanPham
--

CREATE TABLE LoaiSanPham (
  MaLoaiSanPham int NOT NULL,
  TenLoaiSanPham nvarchar(50) DEFAULT NULL,
  BiXoa tinyint DEFAULT '0',
  constraint pk_LoaiSanPham primary key (MaLoaiSanPham)
) 

--
-- Nhap lieu LoaiSanPham
--

INSERT INTO LoaiSanPham (MaLoaiSanPham, TenLoaiSanPham, BiXoa) VALUES
(1, N'SamSung', 0),
(2, N'iphone',  0),
(3, N'OPPO',    0),
(4, N'SONY',    0),
(5, N'HUAWEI',  0),
(6, N'ASUS',    0),
(7, N'NOKIA',   0);

-- --------------------------------------------------------
--
-- Table TaiKhoan
--

CREATE TABLE TaiKhoan (
  MaTaiKhoan int NOT NULL,
  TenTaiKhoan nvarchar(50)  DEFAULT NULL,
  MatKhau varchar(50)  DEFAULT NULL,
  TenHienThi nvarchar(100)  DEFAULT NULL,
  NgaySinh date DEFAULT NULL,
  BiXoa tinyint DEFAULT '0',
  MaLoaiTaiKhoan int NOT NULL,
  NoiSong nvarchar(100) DEFAULT NULL,
  constraint pk_TaiKhoan primary key (MaTaiKhoan)
) 

--
-- Nhap lieu TaiKhoan
--

INSERT INTO TaiKhoan (MaTaiKhoan, TenTaiKhoan, MatKhau, TenHienThi, NgaySinh, BiXoa, MaLoaiTaiKhoan, NoiSong) VALUES
(1, N'trctoan', 'toan123', N'Trần Công Toản', '1996-09-15', 0, 1, N'Hồ Chí Minh'),
(2, N'admin', 'admin123', N'Lý Nam Du', '1994-05-23', 0, 2, N'Hồ Chí Minh'),
(3, N'ChiuLee', 'lee123', N'Lê Văn Chiu', '1994-05-10', 0, 1, N'Hà Nội'),
(4, N'HaChi', 'chi123', N'Chi Hà Thị Mỹ', '1996-03-14', 0, 1, N'Đà Nẵng'),
(5, N'dungthuy', 'dung123', N'Hoàng Thùy Dung', '1998-05-01', 0, 1, N'Hà Nội');

-- --------------------------------------------------------
--
-- Table LoaiTaiKhoan
--

CREATE TABLE LoaiTaiKhoan (
  MaLoaiTaiKhoan int NOT NULL,
  LoaiTaiKhoan nvarchar(50) DEFAULT NULL,
  constraint pk_LoaiTaiKhoan primary key (MaLoaiTaiKhoan)
) 

--
-- Nhap lieu LoaiTaiKhoan
--

INSERT INTO LoaiTaiKhoan (MaLoaiTaiKhoan, LoaiTaiKhoan) VALUES
(2, N'admin'),
(1, N'user');

-- --------------------------------------------------------

--
-- Table NhaSanXuat
--

CREATE TABLE NhaSanXuat (
  MaNhaSanXuat int NOT NULL,
  TenNhaSanXuat nvarchar(50) DEFAULT NULL,
  BiXoa tinyint DEFAULT '0',
  constraint pk_NhaSanXuat primary key (MaNhaSanXuat)
) 

--
-- Nhap lieu NhaSanXuat
--

INSERT INTO NhaSanXuat (MaNhaSanXuat, TenNhaSanXuat, BiXoa) VALUES
(1, N'SAMSUNG', 0),
(2, N'APPLE', 0),
(3, N'OPPO', 0),
(4, N'SONY', 0),
(5, N'HUAWEI', 0),
(6, N'NOKIA', 0),
(7, N'ASUS', 0);

-- --------------------------------------------------------

--
-- Table SanPham
--

CREATE TABLE SanPham (
  MaSanPham int NOT NULL,
  TenSanPham nvarchar(50) DEFAULT NULL,
  MoTa text,
  XuatXu nvarchar(50) DEFAULT NULL,
  MaNhaSanXuat int NOT NULL,
  GiaBan int DEFAULT NULL,
  NgayNhap datetime DEFAULT NULL,
  SoLuongBan int DEFAULT NULL,
  SoLuongTon int DEFAULT NULL,
  MaLoaiSanPham int NOT NULL,
  SoLuongXem int DEFAULT NULL,
  HinhAnh nvarchar(100) DEFAULT NULL,
  BiXoa tinyint DEFAULT '0',
  constraint pk_SanPham primary key (MaSanPham)
)

--
-- Nhap lieu SanPham
--

INSERT INTO SanPham (MaSanPham, TenSanPham, MoTa, XuatXu, MaNhaSanXuat, GiaBan, NgayNhap, SoLuongBan, SoLuongTon, MaLoaiSanPham, SoLuongXem, HinhAnh, BiXoa) VALUES
(1, N'iPhone 7 Plus 256GB', N'Màn hình: 5.5", Retina HD\r\nHĐH: iOS 10\r\nCPU: Apple A10 Fusion 4 nhân\r\nRAM: 3GB, ROM: 256GB\r\nCamera: 2x12 MP, Selfie: 7 MP\r\nPIN: 2900 mAh, SIM: 1SIM', N'Made in china', 2, 27990000, '2016-12-08 00:00:00', 10, 25, 2, 33, 'iphone_7_plus_256.jpg', 0),
(3, N'iPhone 7 128GB', N'Màn hình: 4.7", Retina HD\r\nHĐH: iOS 10\r\nCPU: Apple A10 Fusion 4 nhân\r\nRAM: 2GB, ROM: 128GB\r\nCamera: 12 MP, Selfie: 7 MP\r\nPIN: 1960 mAh, SIM: 1SIM', N'Made in China', 2, 21690000, '2016-12-13 00:00:00', 7, 15, 2, 33, 'iphone_7_plus_128.jpg', 0),
(4, N'iPhone 7 Plus 64GB', N'Màn hình: 5.6", Retina HD\r\nHĐH: iOS 10\r\nCPU: Apple A10 Fusion 4 nhân\r\nRAM: 3GB, ROM: 32GB\r\nCamera: 2x12 MP, Selfie: 7 MP\r\nPIN: 2900 mAh, SIM: 1SIM', N'Made in China', 2, 23290000, '2016-12-12 00:00:00', 4, 13, 2, 30, 'iphone_7_plus_32.jpg\r\n', 0),
(7, N'iPhone SE 64GB', N'Màn hình: 4", Retina HD\r\nHĐH: iOS 9\r\nCPU: Apple A9 2 nhân \r\nRAM: 2GB, ROM: 64GB\r\nCamera: 12 MP, Selfie: 1.2 MP\r\nPIN: 1642 mAh, SIM: 1 SIM', N'Made in China', 2, 11990000, '2016-12-27 00:00:00', 3, 8, 2, 34, 'iphone_se_64.jpg', 0),
(8, N'SamSung Galaxy S7 Edge', N'Màn hình: 5.5", Quad HD\r\nHĐH: Android 6.0 (Marshmallow)\r\nCPU: Exynos 8890 8 nhân\r\nRAM: 4 GB, ROM: 32 GB\r\nCamera: 12 MP, Selfie: 5 MP\r\nPIN: 3600 mAh, SIM: 2 SIM', N'Made in VietNam', 1, 15990000, '2016-12-29 00:00:00', 5, 15, 1, 68, 'samsung_galaxy_s7_edge.jpg', 0),
(9, N'SamSung Galaxy Note 5', N'Màn hình: 5.7", Quad HD\r\nHĐH: Android 6.0 (Marshmallow)\r\nCPU: Exynos 7420 8 nhân\r\nRAM: 4 GB, ROM: 32 GB\r\nCamera: 16 MP, Selfie: 5 MP\r\nPIN: 3000 mAh, SIM: 1 SIM', N'Made in Vietnam', 1, 12490000, '2016-12-12 00:00:00', 7, 19, 1, 42, 'samsung_galaxy_note_5.jpg', 0),
(10, N'Samsung Galaxy A9 Pro', N'Màn hình: 6", Full HD\r\nHĐH: Android 6.0 (Marshmallow)\r\nCPU:Snapdragon 652 8 nhân\r\nRAM: 4 GB, ROM: 32 GB\r\nCamera: 16 MP, Selfie: 8 MP\r\nPIN: 5000 mAh, SIM: 2 SIM', N'Made in Vietnam', 1, 10990000, '2016-12-27 00:00:00', 7, 15, 1, 41, 'samsung_galaxy_a9_pro.jpg', 0),
(11, N'Samsung Galaxy J7 Prime', N'Màn hình: 5.5", Full HD\r\nHĐH: Android 6.0 (Marshmallow)\r\nCPU: Exynos 7420 8 nhân\r\nRAM: 3 GB, ROM: 32 GB\r\nCamera: 13 MP, Selfie: 8 MP\r\nPIN: 3300 mAh, SIM: 1 SIM', N'Made in Vietnam', 1, 62900000, '2016-12-18 00:00:00', 3, 9, 1, 25, 'samsung_galaxy_j7_prime.jpg', 0),
(12, N'Samsung Galaxy A3 2016', N'Màn hình: 4.7", Full HD\r\nHĐH: Android 5.1 (Lollipop)\r\nCPU: Exynos 7578 4 nhân\r\nRAM: 1.5 GB, ROM: 16 GB\r\nCamera: 13 MP, Selfie: 5 MP\r\nPIN: 2300 mAh, SIM: 2 SIM', N'Made in Vietnam', 1, 5390000, '2016-12-26 00:00:00', 2, 11, 1, 33, 'samsung_galaxy_a3_2016.jpg', 0),
(13, N'Samsung Galaxy J7', N'Màn hình: 5.5", HD\r\nHĐH: Android 5.1 (Lollipop)\r\nCPU: Exynos 7580 8 nhân\r\nRAM: 1.5 GB, ROM: 16 GB\r\nCamera: 13 MP, Selfie: 5 MP\r\nPIN: 3000 mAh, SIM: 2 SIM', N'Made in Vietnam', 1, 4068000, '2016-12-24 00:00:00', 3, 12, 1, 23, 'samsung_galaxy_j7.jpg', 0),
(14, N'OPPO F1 Plus', N'Màn hình: 5.5", Full HD\r\nHĐH: Android 5.1 (Lollipop)\r\nCPU: Helio P10 8 nhân\r\nRAM: 4 GB, ROM: 64 GB\r\nCamera: 13 MP, Selfie: 16 MP\r\nPIN: 2850 mAh, SIM: 2 SIM', N'Made in China ', 3, 9990000, '2016-12-26 00:00:00', 8, 16, 3, 45, 'oppo_f1_plus.jpg', 0),
(15, N'OPPO F1s', N'Màn hình: 5.5", HD\r\nHĐH: Android 5.1 (Lollipop)\r\nCPU: Mediatek MT6750 8 nhân \r\nRAM: 3 GB, ROM: 32 GB\r\nCamera: 13 MP, Selfie: 16 MP\r\nPIN: 3075 mAh, SIM: 2 SIM', N'Made in China', 3, 5990000, '2016-12-25 00:00:00', 4, 19, 3, 40, 'oppo_f1s.jpg', 0),
(16, N'OPPO A39 (Neo 9s)', N'Màn hình: 5.2", HD\r\nHĐH: Android 5.1 (Lollipop)\r\nCPU: MT6750, 8 nhân \r\nRAM: 3 GB, ROM: 32 GB\r\nCamera: 13 MP, Selfie: 5 MP\r\nPIN: 2900 mAh, SIM: 2 SIM', N'Made in China', 3, 4690000, '2016-12-14 00:00:00', 3, 9, 3, 26, 'oppo_a39_neo_9.jpg', 0),
(17, N'OPPO A37 (Neo 9)', N'Màn hình: 5", HD\r\nHĐH: Android 5.1 (Lollipop)\r\nCPU: Snapdragon 410 4 nhân \r\nRAM: 2 GB, ROM: 16 GB\r\nCamera: 8 MP, Selfie: 5 MP\r\nPIN: 2630 mAh, SIM: 2 SIM', N'Made in China', 3, 3690000, '2016-12-19 00:00:00', 2, 9, 3, 25, 'oppo_a37_neo_9.jpg', 0),
(18, N'OPPO Neo 7', N'Màn hình: 5", qHD\r\nHĐH: Android 5.1 (Lollipop)\r\nCPU: MTK 6582 4 nhân \r\nRAM: 1 GB, ROM: 16 GB\r\nCamera: 8 MP, Selfie: 5 MP\r\nPIN: 2420 mAh, SIM: 2 SIM', N'Made in China', 3, 3290000, '2016-12-19 00:00:00', 2, 8, 3, 18, 'oppo_neo_7.jpg', 0),
(19, N'OPPO Neo 7s', N'Màn hình: 5", qHD\r\nHĐH: Android 5.1 (Lollipop)\r\nCPU: Snapdragon 410 4 nhân \r\nRAM: 1 GB, ROM: 16 GB\r\nCamera: 8 MP, Selfie: 5 MP\r\nPIN: 2420 mAh, SIM: 2 SIM', N'Made in China', 3, 3290000, '2016-12-22 00:00:00', 2, 10, 3, 18, 'oppo_neo_7s.jpg', 0),
(20, N'Sony Xperia XZ', N'Màn hình: 5.2", Full HD\r\nHĐH: Android 6.0 (Marshmallow)\r\nCPU: MTK 6582 4 nhân \r\nRAM: 3 GB, ROM: 64 GB\r\nCamera: 23 MP, Selfie: 13 MP\r\nPIN: 2900 mAh, SIM: 2 SIM', N'Made in Vietnam', 4, 14990000, '2016-12-22 00:00:00', 8, 20, 4, 28, 'sony_xperia_xz.jpg', 0),
(21, N'Sony Xperia Z5 Dual', N'Màn hình: 5.2", Full HD\r\nHĐH: Android 6.0 (Marshmallow)\r\nCPU: Snapdragon 810 4 nhân \r\nRAM: 3 GB, ROM: 32 GB\r\nCamera: 23 MP, Selfie: 5 MP\r\nPIN: 2900 mAh, SIM: 2 SIM', N'Made in Vietnam', 4, 10990000, '2016-12-11 00:00:00', 3, 24, 4, 32, 'sony_xperia_z5.jpg', 0),
(22, N'Sony Xperia X', N'Màn hình: 5.2", Full HD\r\nHĐH: Android 6.0 (Marshmallow)\r\nCPU: Snapdragon 650 6 nhân \r\nRAM: 3 GB, ROM: 64 GB\r\nCamera: 23 MP, Selfie: 13 MP\r\nPIN: 2620 mAh, SIM: 2 SIM', N'Made in Vietnam', 4, 9990000, '2016-12-28 00:00:00', 4, 12, 4, 21, 'sony_xperia_x.jpg', 0),
(23, N'Sony Xperia XA Ultra', N'Màn hình: 6", Full HD\r\nHĐH: Android 6.0 (Marshmallow)\r\nCPU: Helio P10 8 nhân \r\nRAM: 3 GB, ROM: 16 GB\r\nCamera: 21.5 MP, Selfie: 16 MP\r\nPIN: 2700 mAh, SIM: 2 SIM', N'Made in Vietnam', 4, 7490000, '2016-12-27 00:00:00', 2, 10, 4, 30, 'sony_xperia_xa_ultra.jpg', 0),
(24, N'Sony Xperia M5(Single SIM)', N'Màn hình: 5", Full HD\r\nHĐH: Android 5.0 (Lollipop)\r\nCPU: Helio x10 8 nhân \r\nRAM: 3 GB, ROM: 16 GB\r\nCamera: 21.5 MP, Selfie: 13 MP\r\nPIN: 2600 mAh, SIM: 1 SIM', N'Made in Vietnam', 4, 6990000, '2016-12-26 00:00:00', 2, 10, 4, 15, 'sony_xperia_m5_single.jpg', 0),
(25, N'Sony Xperia XA', N'Màn hình: 5", HD\r\nHĐH: Android 6.0 (Marshmallow)\r\nCPU: Helio P10 8 nhân \r\nRAM: 2 GB, ROM: 16 GB\r\nCamera: 13 MP, Selfie: 8 MP\r\nPIN: 2300 mAh, SIM: 2 SIM', N'Made in Vietnam', 4, 6990000, '2016-12-29 00:00:00', 3, 14, 4, 56, 'sony_xperia_xa.jpg', 0),
(28, N'ASUS Zenfone 3 ZE552KL', N'Màn hình: 5.5",Full HD\r\nHĐH: Android 6.0 (Marshmallow)\r\nCPU: Snapdragon 625 8 nhân \r\nRAM: 4 GB, ROM: 64 GB\r\nCamera: 16 MP, Selfie: 8 MP\r\nPIN: 3000 mAh, SIM: 2 SIM', N'Made in USA', 7, 8990000, '2016-12-27 00:00:00', 6, 16, 6, 45, 'asus_zenfone_3_ze552kl.jpg', 0),
(29, N'ASUS Zenfone 3 MAX 5.5" ZC553KL', N'Màn hình: 5.5",Full HD\r\nHĐH: Android 6.0 (Marshmallow)\r\nCPU: Qualcomm Snapdragon 430 8 nhân \r\nRAM: 3 GB, ROM: 32 GB\r\nCamera: 16 MP, Selfie: 8 MP\r\nPIN: 4100 mAh, SIM: 2 SIM', N'Made in USA', 7, 5490000, '2016-12-18 00:00:00', 5, 13, 6, 16, 'asus_zenfone_3_max_zc553kl.jpg', 0),
(30, N'ASUS Zenfone 3 MAX', N'Màn hình: 5.2",HD\r\nHĐH: Android 6.0 (Marshmallow)\r\nCPU: 4 nhân \r\nRAM: 3 GB, ROM: 32 GB\r\nCamera: 13 MP, Selfie: 5 MP\r\nPIN: 4100 mAh, SIM: 2 SIM', N'Made in USA', 7, 4490000, '2016-12-15 00:00:00', 4, 18, 6, 25, 'asus_zenfone_3_max.jpg', 0),
(31, N'ASUS Zenfone Selfie', N'Màn hình: 5.5",Full HD\r\nHĐH: Android 5\r\nCPU: 8 nhân \r\nRAM: 3 GB\r\nCamera: 13.0 MP\r\nPIN: 3000 mAh, SIM: 2 SIM', N'Made in USA', 7, 3490000, '2016-12-13 00:00:00', 3, 12, 6, 15, 'asus_zenfone_selfie.jpg', 0),
(32, N'HUAWEI GR5 MINI', N'Màn hình: 5.2", Full HD\r\nHĐH: Android 6.0\r\nCPU: HiSilicon Kirin 655 8 nhân \r\nRAM: 2GB, ROM: 16GB\r\nCamera: 13 MP, Selfie: 8 MP\r\nPIN: 3000 mAh, SIM: 2 SIM', N'Made in China', 5, 3990000, '2016-12-14 00:00:00', 5, 14, 5, 32, 'huawei_gr5_mini.jpg', 0),
(33, N'HUAWEI Y6 II', N'Màn hình: 5.2", Full HD\r\nHĐH: Android 6.0\r\nCPU: HiSilicon Kirin 655 8 nhân \r\nRAM: 2GB, ROM: 16GB\r\nCamera: 13 MP, Selfie: 8 MP\r\nPIN: 3000 mAh, SIM: 2 SIM', N'Made in China', 5, 2990000, '2016-12-01 00:00:00', 4, 23, 5, 12, 'huawei_y6_ii.jpg', 0),
(34, N'HUAWEI Y5 II', N'Màn hình: 5", Full HD\r\nHĐH: Android 5.1 (Lollipop)\r\nCPU: MTK 6582 8 nhân \r\nRAM: 1GB, ROM: 8GB\r\nCamera: 8 MP, Selfie: 2 MP\r\nPIN: 2200 mAh, SIM: 2 SIM', N'Made in China', 5, 2190000, '2016-12-11 00:00:00', 2, 12, 5, 25, 'huawei_y5_ii.jpg', 0),
(35, N'HUAWEI Y541', N'Màn hình: 5", Full HD\r\nHĐH: Android 4.4(Kitkat)\r\nCPU: MTK 6582 8 nhân \r\nRAM: 1GB, ROM: 8GB\r\nCamera: 8 MP, Selfie: 2 MP\r\nPIN: 1700 mAh, SIM: 2 SIM', N'Made in China', 5, 1272000, '2016-12-08 00:00:00', 5, 14, 5, 14, 'huawei_y541_10.jpg', 0),
(36, N'NOKIA LUMIA 730', N'Màn hình: 5.2", Full HD\r\nHĐH: Windows Phone 8.1\r\nCPU: MTK 6582 8 nhân \r\nRAM: 1GB, ROM: 8GB\r\nCamera: 8 MP, Selfie: 2 MP\r\nPIN: 1700 mAh, SIM: 2 SIM', N'Made in Vietnam', 6, 2290000, '2016-12-12 00:00:00', 4, 21, 7, 23, 'nokia_lumia_730_dual.jpg', 0),
(37, N'NOKIA LUMIA 640', N'Màn hình: 5", Full HD\r\nHĐH: Windows Phone 8.1\r\nCPU: MTK 6582 8 nhân \r\nRAM: 1GB, ROM: 8GB\r\nCamera: 8 MP, Selfie: 2 MP\r\nPIN: 1700 mAh, SIM: 2 SIM', N'Made in Vietnam', 6, 1890000, '2016-12-08 00:00:00', 3, 21, 7, 25, 'microsoft_lumia_640.jpg', 0);

-- --------------------------------------------------------



--
-- Table TinhTrang
--

CREATE TABLE TinhTrang (
  MaTinhTrang int NOT NULL,
  TenTinhTrang nvarchar(50) DEFAULT NULL,
  constraint pk_TinhTrang primary key (MaTinhTrang)
) 

--
-- Nhap lieu TinhTrang
--

INSERT INTO TinhTrang (MaTinhTrang, TenTinhTrang) VALUES
(1, N'Đặt hàng'),
(2, N'Đang giao hàng'),
(3, N'Thanh toán'),
(4, N'Hủy');

/****** Object:  ForeignKey [FK_TaiKhoan_LoaiTaiKhoan]    Script Date: 03/07/2017 10:08:08 ******/
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_LoaiTaiKhoan] FOREIGN KEY([MaLoaiTaiKhoan])
REFERENCES [dbo].[LoaiTaiKhoan] ([MaLoaiTaiKhoan])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_LoaiTaiKhoan]
GO
/****** Object:  ForeignKey [FK_SanPham_LoaiSanPham]    Script Date: 03/07/2017 10:08:08 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
/****** Object:  ForeignKey [FK_SanPham_NhaSanXuat]    Script Date: 03/07/2017 10:08:08 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNhaSanXuat])
REFERENCES [dbo].[NhaSanXuat] ([MaNhaSanXuat])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
/****** Object:  ForeignKey [FK_DonDatHang_TaiKhoan]    Script Date: 03/07/2017 10:08:08 ******/
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_TaiKhoan] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_TaiKhoan]
GO
/****** Object:  ForeignKey [FK_DonDatHang_TinhTrang]    Script Date: 03/07/2017 10:08:08 ******/
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_TinhTrang] FOREIGN KEY([MaTinhTrang])
REFERENCES [dbo].[TinhTrang] ([MaTinhTrang])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_TinhTrang]
GO
/****** Object:  ForeignKey [FK_ChiTietDonDatHang_DonDatHang]    Script Date: 03/07/2017 10:08:08 ******/
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang] FOREIGN KEY([MaDonDatHang])
REFERENCES [dbo].[DonDatHang] ([MaDonDatHang])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang]
GO
/****** Object:  ForeignKey [FK_ChiTietDonDatHang_SanPham]    Script Date: 03/07/2017 10:08:08 ******/
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_SanPham]
GO




