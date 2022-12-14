USE [GamingGear]
GO
/****** Object:  Table [dbo].[BinhLuanTinTuc]    Script Date: 30/10/2022 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuanTinTuc](
	[idBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[idTaiKhoan] [int] NOT NULL,
	[idTinTuc] [int] NOT NULL,
	[noiDungBL] [ntext] NOT NULL,
	[trangThai] [char](1) NULL,
 CONSTRAINT [PK_BinhLuanTinTuc] PRIMARY KEY CLUSTERED 
(
	[idBinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDDH]    Script Date: 30/10/2022 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDDH](
	[idSanPham] [int] NOT NULL,
	[idDDH] [int] NOT NULL,
	[gia] [money] NOT NULL,
	[trangThai] [char](1) NULL,
	[maGiamGia] [varchar](20) NULL,
	[soLuong] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietDDH] PRIMARY KEY CLUSTERED 
(
	[idSanPham] ASC,
	[idDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuongTrinhGiamGia]    Script Date: 30/10/2022 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuongTrinhGiamGia](
	[idGiamGia] [int] IDENTITY(1,1) NOT NULL,
	[tenGiamGia] [nvarchar](100) NOT NULL,
	[ngayBatDau] [datetime] NOT NULL,
	[ngayKetThuc] [datetime] NOT NULL,
	[giaGiam] [money] NOT NULL,
	[maGiamGia] [nchar](10) NULL,
	[trangThai] [char](1) NULL,
 CONSTRAINT [PK_ChuongTrinhGiamGia] PRIMARY KEY CLUSTERED 
(
	[idGiamGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 30/10/2022 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[idDanhGia] [int] IDENTITY(1,1) NOT NULL,
	[idNguoiDanhGia] [int] NOT NULL,
	[idSanPham] [int] NOT NULL,
	[noiDung] [ntext] NOT NULL,
	[soSao] [int] NOT NULL,
	[trangThai] [char](1) NULL,
 CONSTRAINT [PK_DanhGia_1] PRIMARY KEY CLUSTERED 
(
	[idDanhGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucSP]    Script Date: 30/10/2022 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucSP](
	[idDanhMucSP] [int] IDENTITY(1,1) NOT NULL,
	[tenDanhMuc] [nvarchar](50) NOT NULL,
	[icon] [varchar](50) NULL,
	[hinhAnh] [nvarchar](200) NULL,
	[moTa] [nvarchar](200) NULL,
 CONSTRAINT [PK_DanhMucSP] PRIMARY KEY CLUSTERED 
(
	[idDanhMucSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucTinTuc]    Script Date: 30/10/2022 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucTinTuc](
	[idDanhMucTT] [int] IDENTITY(1,1) NOT NULL,
	[tenDanhMuc] [nvarchar](50) NOT NULL,
	[icon] [varchar](50) NULL,
	[hinhAnh1] [nvarchar](200) NULL,
	[hinhAnh2] [nvarchar](200) NULL,
	[moTa] [nvarchar](200) NULL,
 CONSTRAINT [PK_DanhMucTinTuc] PRIMARY KEY CLUSTERED 
(
	[idDanhMucTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaChiDDH]    Script Date: 30/10/2022 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaChiDDH](
	[idDCDDH] [int] IDENTITY(1,1) NOT NULL,
	[soDienThoai] [char](10) NULL,
	[tenKhachHang] [nvarchar](50) NULL,
	[email] [varchar](50) NULL,
	[noiDung] [ntext] NULL,
	[thanhPho] [int] NULL,
	[quanHuyen] [int] NULL,
	[phuongXa] [int] NULL,
 CONSTRAINT [PK_DiaChiDDH] PRIMARY KEY CLUSTERED 
(
	[idDCDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 30/10/2022 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[idDDH] [int] IDENTITY(1,1) NOT NULL,
	[idDCDDH] [int] NOT NULL,
	[idThanhToan] [int] NOT NULL,
	[idVanChuyen] [int] NOT NULL,
	[ngayDat] [datetime] NOT NULL,
	[idTaiKhoan] [int] NOT NULL,
	[trangThaiThanhToan] [char](1) NULL,
	[trangThai] [char](1) NULL,
	[ghiChu] [ntext] NULL,
	[tongTien] [money] NOT NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[idDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhAnhSP]    Script Date: 30/10/2022 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnhSP](
	[idHinhAnhSP] [int] IDENTITY(1,1) NOT NULL,
	[idSanPham] [int] NOT NULL,
	[hinhAnh1] [varchar](100) NULL,
	[hinhAnh2] [varchar](100) NULL,
	[hinhAnh3] [varchar](100) NULL,
	[hinhAnh4] [varchar](100) NULL,
	[hinhAnh5] [varchar](100) NULL,
	[trangThai] [char](1) NULL,
 CONSTRAINT [PK_HinhAnhSP] PRIMARY KEY CLUSTERED 
(
	[idHinhAnhSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LienHe]    Script Date: 30/10/2022 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LienHe](
	[idLienHe] [int] IDENTITY(1,1) NOT NULL,
	[tenNguoiLH] [nvarchar](50) NOT NULL,
	[soDienThoai] [char](10) NULL,
	[email] [varchar](50) NOT NULL,
	[noiDung] [ntext] NOT NULL,
	[hinhAnh] [varchar](50) NULL,
	[phanHoiLH] [ntext] NULL,
	[trangThai] [char](1) NULL,
	[idTaiKhoan] [int] NULL,
 CONSTRAINT [PK_LienHe] PRIMARY KEY CLUSTERED 
(
	[idLienHe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phuong_Xa]    Script Date: 30/10/2022 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phuong_Xa](
	[idPhuongXa] [int] NOT NULL,
	[idQuanHuyen] [int] NOT NULL,
	[tenPhuongXa] [nvarchar](100) NOT NULL,
	[kieuPhuongXa] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Phuong_Xa] PRIMARY KEY CLUSTERED 
(
	[idPhuongXa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhuongThucThanhToan]    Script Date: 30/10/2022 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhuongThucThanhToan](
	[idThanhToan] [int] IDENTITY(1,1) NOT NULL,
	[tenThanhToan] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_PhuongThucThanhToan] PRIMARY KEY CLUSTERED 
(
	[idThanhToan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhuongThucVanChuyen]    Script Date: 30/10/2022 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhuongThucVanChuyen](
	[idVanChuyen] [int] IDENTITY(1,1) NOT NULL,
	[tenVanChuyen] [nvarchar](50) NOT NULL,
	[giaVanChuyen] [money] NOT NULL,
 CONSTRAINT [PK_PhuongThucVanChuyen] PRIMARY KEY CLUSTERED 
(
	[idVanChuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quan_Huyen]    Script Date: 30/10/2022 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quan_Huyen](
	[idQuanHuyen] [int] NOT NULL,
	[idTinhThanh] [int] NOT NULL,
	[tenQuanHuyen] [nvarchar](100) NOT NULL,
	[kieuQuanHuyen] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Quan_Huyen] PRIMARY KEY CLUSTERED 
(
	[idQuanHuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 30/10/2022 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[idQuyen] [int] IDENTITY(1,1) NOT NULL,
	[tenQuyen] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[idQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuyenThaoTac]    Script Date: 30/10/2022 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyenThaoTac](
	[idQuyen] [int] NOT NULL,
	[idThaoTac] [int] NOT NULL,
 CONSTRAINT [PK_QuyenThaoTac] PRIMARY KEY CLUSTERED 
(
	[idQuyen] ASC,
	[idThaoTac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 30/10/2022 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[idSanPham] [int] IDENTITY(1,1) NOT NULL,
	[idTheLoaiSP] [int] NOT NULL,
	[idThuongHieu] [int] NOT NULL,
	[idGiamGia] [int] NOT NULL,
	[tenSanPham] [nvarchar](200) NOT NULL,
	[gia] [money] NOT NULL,
	[luotXem] [int] NULL,
	[luotMua] [int] NULL,
	[soLuong] [int] NULL,
	[trangThai] [char](1) NULL,
	[hinhAnh] [varchar](100) NOT NULL,
	[moTa] [ntext] NULL,
	[moTaChiTiet] [ntext] NULL,
 CONSTRAINT [PK_SanPham_1] PRIMARY KEY CLUSTERED 
(
	[idSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 30/10/2022 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[taiKhoan] [varchar](50) NOT NULL,
	[matKhau] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[requestCode] [varchar](100) NOT NULL,
	[ten] [nvarchar](50) NOT NULL,
	[soDienThoai] [char](10) NOT NULL,
	[anhDaiDien] [varchar](200) NULL,
	[ngaySinh] [datetime] NULL,
	[gioiTinh] [char](1) NULL,
	[trangThai] [char](1) NULL,
	[quyen] [int] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThaoTac]    Script Date: 30/10/2022 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThaoTac](
	[idThaoTac] [int] IDENTITY(1,1) NOT NULL,
	[tenThaoTac] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ThaoTac] PRIMARY KEY CLUSTERED 
(
	[idThaoTac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoaiSP]    Script Date: 30/10/2022 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoaiSP](
	[idTheLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[idDanhMucSP] [int] NOT NULL,
	[tenTheLoai] [nvarchar](50) NOT NULL,
	[hinhAnh] [nvarchar](200) NULL,
	[moTa] [nvarchar](200) NULL,
 CONSTRAINT [PK_TheLoaiSP] PRIMARY KEY CLUSTERED 
(
	[idTheLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoaiTinTuc]    Script Date: 30/10/2022 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoaiTinTuc](
	[idTheLoaiTT] [int] IDENTITY(1,1) NOT NULL,
	[idDanhMucTT] [int] NOT NULL,
	[tenTheLoai] [nvarchar](50) NOT NULL,
	[hinhAnh1] [nvarchar](200) NULL,
	[hinhAnh2] [nvarchar](200) NULL,
	[moTa] [nvarchar](100) NULL,
 CONSTRAINT [PK_TheLoaiTinTuc] PRIMARY KEY CLUSTERED 
(
	[idTheLoaiTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuongHieu]    Script Date: 30/10/2022 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongHieu](
	[idThuongHieu] [int] IDENTITY(1,1) NOT NULL,
	[tenThuongHieu] [nvarchar](50) NOT NULL,
	[logoThuongHieu] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ThuongHieu] PRIMARY KEY CLUSTERED 
(
	[idThuongHieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tinh_ThanhPho]    Script Date: 30/10/2022 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tinh_ThanhPho](
	[idTinhThanh] [int] IDENTITY(1,1) NOT NULL,
	[tenTinhThanh] [nvarchar](100) NOT NULL,
	[kieuTinhThanh] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tinh_ThanhPho] PRIMARY KEY CLUSTERED 
(
	[idTinhThanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 30/10/2022 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[idTinTuc] [int] IDENTITY(1,1) NOT NULL,
	[idTaiKhoan] [int] NOT NULL,
	[theLoaiTin] [int] NULL,
	[tieuDeTin] [nvarchar](200) NOT NULL,
	[tieuDeMoTa] [nvarchar](200) NOT NULL,
	[noiDung] [nchar](10) NOT NULL,
	[luotXem] [int] NULL,
	[hinhAnh1] [varchar](200) NOT NULL,
	[hinhAnh2] [varchar](200) NOT NULL,
	[trangThai] [char](1) NULL,
 CONSTRAINT [PK_TinTuc_1] PRIMARY KEY CLUSTERED 
(
	[idTinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BinhLuanTinTuc]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuanTinTuc_TaiKhoan] FOREIGN KEY([idTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([id])
GO
ALTER TABLE [dbo].[BinhLuanTinTuc] CHECK CONSTRAINT [FK_BinhLuanTinTuc_TaiKhoan]
GO
ALTER TABLE [dbo].[BinhLuanTinTuc]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuanTinTuc_TinTuc] FOREIGN KEY([idTinTuc])
REFERENCES [dbo].[TinTuc] ([idTinTuc])
GO
ALTER TABLE [dbo].[BinhLuanTinTuc] CHECK CONSTRAINT [FK_BinhLuanTinTuc_TinTuc]
GO
ALTER TABLE [dbo].[ChiTietDDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDDH_DonDatHang] FOREIGN KEY([idDDH])
REFERENCES [dbo].[DonDatHang] ([idDDH])
GO
ALTER TABLE [dbo].[ChiTietDDH] CHECK CONSTRAINT [FK_ChiTietDDH_DonDatHang]
GO
ALTER TABLE [dbo].[ChiTietDDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDDH_SanPham] FOREIGN KEY([idSanPham])
REFERENCES [dbo].[SanPham] ([idSanPham])
GO
ALTER TABLE [dbo].[ChiTietDDH] CHECK CONSTRAINT [FK_ChiTietDDH_SanPham]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_TaiKhoan] FOREIGN KEY([idNguoiDanhGia])
REFERENCES [dbo].[TaiKhoan] ([id])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_TaiKhoan]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_DiaChiDDH] FOREIGN KEY([idDCDDH])
REFERENCES [dbo].[DiaChiDDH] ([idDCDDH])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_DiaChiDDH]
GO
ALTER TABLE [dbo].[HinhAnhSP]  WITH CHECK ADD  CONSTRAINT [FK_HinhAnhSP_SanPham] FOREIGN KEY([idSanPham])
REFERENCES [dbo].[SanPham] ([idSanPham])
GO
ALTER TABLE [dbo].[HinhAnhSP] CHECK CONSTRAINT [FK_HinhAnhSP_SanPham]
GO
ALTER TABLE [dbo].[LienHe]  WITH CHECK ADD  CONSTRAINT [FK_LienHe_TaiKhoan] FOREIGN KEY([idTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([id])
GO
ALTER TABLE [dbo].[LienHe] CHECK CONSTRAINT [FK_LienHe_TaiKhoan]
GO
ALTER TABLE [dbo].[Phuong_Xa]  WITH CHECK ADD  CONSTRAINT [FK_Phuong_Xa_Quan_Huyen] FOREIGN KEY([idQuanHuyen])
REFERENCES [dbo].[Quan_Huyen] ([idQuanHuyen])
GO
ALTER TABLE [dbo].[Phuong_Xa] CHECK CONSTRAINT [FK_Phuong_Xa_Quan_Huyen]
GO
ALTER TABLE [dbo].[Quan_Huyen]  WITH CHECK ADD  CONSTRAINT [FK_Quan_Huyen_Tinh_ThanhPho] FOREIGN KEY([idTinhThanh])
REFERENCES [dbo].[Tinh_ThanhPho] ([idTinhThanh])
GO
ALTER TABLE [dbo].[Quan_Huyen] CHECK CONSTRAINT [FK_Quan_Huyen_Tinh_ThanhPho]
GO
ALTER TABLE [dbo].[QuyenThaoTac]  WITH CHECK ADD  CONSTRAINT [FK_QuyenThaoTac_Quyen] FOREIGN KEY([idQuyen])
REFERENCES [dbo].[Quyen] ([idQuyen])
GO
ALTER TABLE [dbo].[QuyenThaoTac] CHECK CONSTRAINT [FK_QuyenThaoTac_Quyen]
GO
ALTER TABLE [dbo].[QuyenThaoTac]  WITH CHECK ADD  CONSTRAINT [FK_QuyenThaoTac_ThaoTac] FOREIGN KEY([idThaoTac])
REFERENCES [dbo].[ThaoTac] ([idThaoTac])
GO
ALTER TABLE [dbo].[QuyenThaoTac] CHECK CONSTRAINT [FK_QuyenThaoTac_ThaoTac]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_ChuongTrinhGiamGia] FOREIGN KEY([idGiamGia])
REFERENCES [dbo].[ChuongTrinhGiamGia] ([idGiamGia])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_ChuongTrinhGiamGia]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_TheLoaiSP] FOREIGN KEY([idTheLoaiSP])
REFERENCES [dbo].[TheLoaiSP] ([idTheLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_TheLoaiSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_ThuongHieu] FOREIGN KEY([idThuongHieu])
REFERENCES [dbo].[ThuongHieu] ([idThuongHieu])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_ThuongHieu]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_Quyen] FOREIGN KEY([quyen])
REFERENCES [dbo].[Quyen] ([idQuyen])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_Quyen]
GO
ALTER TABLE [dbo].[TheLoaiSP]  WITH CHECK ADD  CONSTRAINT [FK_TheLoaiSP_DanhMucSP] FOREIGN KEY([idDanhMucSP])
REFERENCES [dbo].[DanhMucSP] ([idDanhMucSP])
GO
ALTER TABLE [dbo].[TheLoaiSP] CHECK CONSTRAINT [FK_TheLoaiSP_DanhMucSP]
GO
ALTER TABLE [dbo].[TheLoaiTinTuc]  WITH CHECK ADD  CONSTRAINT [FK_TheLoaiTinTuc_DanhMucTinTuc] FOREIGN KEY([idDanhMucTT])
REFERENCES [dbo].[DanhMucTinTuc] ([idDanhMucTT])
GO
ALTER TABLE [dbo].[TheLoaiTinTuc] CHECK CONSTRAINT [FK_TheLoaiTinTuc_DanhMucTinTuc]
GO
ALTER TABLE [dbo].[TheLoaiTinTuc]  WITH CHECK ADD  CONSTRAINT [FK_TheLoaiTinTuc_DanhMucTinTuc1] FOREIGN KEY([idDanhMucTT])
REFERENCES [dbo].[DanhMucTinTuc] ([idDanhMucTT])
GO
ALTER TABLE [dbo].[TheLoaiTinTuc] CHECK CONSTRAINT [FK_TheLoaiTinTuc_DanhMucTinTuc1]
GO
ALTER TABLE [dbo].[TinTuc]  WITH CHECK ADD  CONSTRAINT [FK_TinTuc_TaiKhoan] FOREIGN KEY([idTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([id])
GO
ALTER TABLE [dbo].[TinTuc] CHECK CONSTRAINT [FK_TinTuc_TaiKhoan]
GO
ALTER TABLE [dbo].[TinTuc]  WITH CHECK ADD  CONSTRAINT [FK_TinTuc_TheLoaiTinTuc] FOREIGN KEY([theLoaiTin])
REFERENCES [dbo].[TheLoaiTinTuc] ([idTheLoaiTT])
GO
ALTER TABLE [dbo].[TinTuc] CHECK CONSTRAINT [FK_TinTuc_TheLoaiTinTuc]
GO
ALTER TABLE [dbo].[TinTuc]  WITH CHECK ADD  CONSTRAINT [FK_TinTuc_TheLoaiTinTuc1] FOREIGN KEY([theLoaiTin])
REFERENCES [dbo].[TheLoaiTinTuc] ([idTheLoaiTT])
GO
ALTER TABLE [dbo].[TinTuc] CHECK CONSTRAINT [FK_TinTuc_TheLoaiTinTuc1]
GO
