drop database QL_QUANAO

USE [master]
GO
/****** Object:  Database [QL_QUANAO]    Script Date: 09/11/2023 8:48:14 PM ******/
CREATE DATABASE [QL_QUANAO]
-- CONTAINMENT = NONE
-- ON  PRIMARY 
--( NAME = N'QL_QUANAO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.HOANGVI\MSSQL\DATA\QL_QUANAO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
-- LOG ON 
--( NAME = N'QL_QUANAO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.HOANGVI\MSSQL\DATA\QL_QUANAO_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
-- WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
--GO
ALTER DATABASE [QL_QUANAO] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_QUANAO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_QUANAO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_QUANAO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_QUANAO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_QUANAO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_QUANAO] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_QUANAO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QL_QUANAO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_QUANAO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_QUANAO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_QUANAO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_QUANAO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_QUANAO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_QUANAO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_QUANAO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_QUANAO] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QL_QUANAO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_QUANAO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_QUANAO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_QUANAO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_QUANAO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_QUANAO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_QUANAO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_QUANAO] SET RECOVERY FULL 
GO
ALTER DATABASE [QL_QUANAO] SET  MULTI_USER 
GO
ALTER DATABASE [QL_QUANAO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_QUANAO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_QUANAO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_QUANAO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QL_QUANAO] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QL_QUANAO] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QL_QUANAO', N'ON'
GO
ALTER DATABASE [QL_QUANAO] SET QUERY_STORE = ON
GO
ALTER DATABASE [QL_QUANAO] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QL_QUANAO]
GO
/****** Object:  Table [dbo].[CHUCVU]    Script Date: 09/11/2023 8:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUCVU](
	[MACV] [varchar](10) NOT NULL,
	[TENCHUCVU] [nvarchar](30) NULL,
 CONSTRAINT [PK_CV] PRIMARY KEY CLUSTERED 
(
	[MACV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANHMUC]    Script Date: 09/11/2023 8:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUC](
	[MaDM] [varchar](10) NOT NULL,
	[TENDANHMUC] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DM] PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 09/11/2023 8:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [int] NOT NULL IDENTITY(1,1),
	[TENKH] [nvarchar](50) NOT NULL,
	[DIACHI] [nvarchar](100) NOT NULL,
	[SDT] [nvarchar](12) NOT NULL,
	[TAIKHOAN] [CHAR](50) NOT NULL,
	[MATKHAU] [CHAR](50) NOT NULL,
	[EMAIL] [CHAR](50) NOT NULL,
 CONSTRAINT [PK_KH] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 09/11/2023 8:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [varchar](10) NOT NULL,
	[TENNV] [nvarchar](50) NOT NULL,
	[EMAIL] [varchar](50) NOT NULL,
	[NGAYSINH] [date] NOT NULL,
	[GIOITINH] [nvarchar](3) NOT NULL,
	[DCHI] [nvarchar](40) NOT NULL,
	[SDT] [nvarchar](12) NOT NULL,
	[NOISINH] [nvarchar](50) NOT NULL,
	[CHUCVU] [varchar](10) NOT NULL,
	[ANHNV] [varchar](30) NOT NULL,
 CONSTRAINT [PK_NV] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 09/11/2023 8:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MASP] [varchar](20) NOT NULL,
	[TENSP] [nvarchar](200) NOT NULL,
	[GIA] [money] NULL,
	[VON] [money] NULL,
	[SIZE] [nvarchar](5) NOT NULL,
	[ANH] [nvarchar](100) NULL,
	[SOLUONG] [int] NOT NULL,
	[TINHTRANG] [nvarchar](20) NOT NULL,
	[MaDM] [varchar](10) NULL,
	[MOTA] [nvarchar](200) NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO




/****** Object:  Table [dbo].[HOADON]    Script Date: 09/11/2023 8:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].HOADON(
	[MAHD] [int] NOT NULL IDENTITY(1,1),
	[NGAYDAT] [DATETIME] NOT NULL,
	[NGAYGIAO] [DATETIME] NULL,
	[DATHANHTOAN] [bit] NULL,
	[TINHTRANGGIAOHANG] [bit] NOT NULL,
	[MAKH] [INT] NULL
	
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[CT_HOADON]    Script Date: 09/11/2023 8:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].CT_HOADON(
	[MAHD] [int] NOT NULL ,
	[MASP] [varchar](20) NOT NULL,

	[SOLUONG] [INT] NULL,
	[DONGIA] [DECIMAL] (18,0) NULL
	
 CONSTRAINT [PK_CT_HOADON] PRIMARY KEY CLUSTERED 
(
	[MAHD],[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

--DROP TABLE CT_HOADON
--DROP TABLE HOADON

INSERT [dbo].[CHUCVU] ([MACV], [TENCHUCVU]) VALUES (N'CV001', N'Giám đốc')
INSERT [dbo].[CHUCVU] ([MACV], [TENCHUCVU]) VALUES (N'CV002', N'Kế toán')
INSERT [dbo].[CHUCVU] ([MACV], [TENCHUCVU]) VALUES (N'CV003', N'Nhân sự')
INSERT [dbo].[CHUCVU] ([MACV], [TENCHUCVU]) VALUES (N'CV004', N'Nhân viên bán hàng')
INSERT [dbo].[CHUCVU] ([MACV], [TENCHUCVU]) VALUES (N'CV005', N'Sales')
INSERT [dbo].[CHUCVU] ([MACV], [TENCHUCVU]) VALUES (N'CV006', N'Tạp vụ')
INSERT [dbo].[CHUCVU] ([MACV], [TENCHUCVU]) VALUES (N'CV007', N'Thu ngân')
INSERT [dbo].[CHUCVU] ([MACV], [TENCHUCVU]) VALUES (N'CV008', N'Bảo vệ')
GO
INSERT [dbo].[DANHMUC] ([MaDM], [TENDANHMUC]) VALUES (N'DM001', N'Áo thun')
INSERT [dbo].[DANHMUC] ([MaDM], [TENDANHMUC]) VALUES (N'DM002', N'Áo sơ mi')
INSERT [dbo].[DANHMUC] ([MaDM], [TENDANHMUC]) VALUES (N'DM003', N'Áo khoác')
INSERT [dbo].[DANHMUC] ([MaDM], [TENDANHMUC]) VALUES (N'DM004', N'Quần tây')
INSERT [dbo].[DANHMUC] ([MaDM], [TENDANHMUC]) VALUES (N'DM005', N'Quần Kaki')
INSERT [dbo].[DANHMUC] ([MaDM], [TENDANHMUC]) VALUES (N'DM006', N'Quần Jeans')
INSERT [dbo].[DANHMUC] ([MaDM], [TENDANHMUC]) VALUES (N'DM007', N'Quần Short')
INSERT [dbo].[DANHMUC] ([MaDM], [TENDANHMUC]) VALUES (N'DM008', N'Veston')
INSERT [dbo].[DANHMUC] ([MaDM], [TENDANHMUC]) VALUES (N'DM009', N'Phụ kiện')
INSERT [dbo].[DANHMUC] ([MaDM], [TENDANHMUC]) VALUES (N'DM010', N'Quần Short')
GO
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [EMAIL], [NGAYSINH], [GIOITINH], [DCHI], [SDT], [NOISINH], [CHUCVU], [ANHNV]) VALUES (N'NV0001', N'Hoàng Anh', N'HoangAnh@gmail.com', CAST(N'2023-11-03' AS Date), N'Nữ', N'Tân Phú', N'0330245333', N'Tây Ninh', N'CV004', N'1186484.png')
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIA], [VON], [SIZE], [ANH], [SOLUONG], [TINHTRANG], [MaDM], [MOTA]) VALUES (N'ATH000731', N'Áo thun nam tay ngắn An Phước ', 500000.0000, 500000.0000, N'L', N'ATH000731.png', 13, N'Còn hàng', N'DM001', N'Áo thun nam tay ngắn An Phước - ATH000731')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIA], [VON], [SIZE], [ANH], [SOLUONG], [TINHTRANG], [MaDM], [MOTA]) VALUES (N'ATH000764', N'Áo thun nam tay ngắn An Phước Slimfit', 500000.0000, 500000.0000, N'L', N'ATH000764.png', 10, N'Còn hàng', N'DM001', N'Áo thun nam tay ngắn An Phước Slimfit- ATH000764')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIA], [VON], [SIZE], [ANH], [SOLUONG], [TINHTRANG], [MaDM], [MOTA]) VALUES (N'ATH0007641', N'Áo thun nam tay ngắn An Phước 1', 500000.0000, 500000.0000, N'L', N'ATH000764.png', 10, N'Còn hàng', N'DM001', N'Áo thun nam tay ngắn An Phước 1- ATH0007641')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIA], [VON], [SIZE], [ANH], [SOLUONG], [TINHTRANG], [MaDM], [MOTA]) VALUES (N'ATH0007642', N'Áo thun nam tay ngắn An Phước 2', 500000.0000, 500000.0000, N'L', N'ATH000764.png', 10, N'Còn hàng', N'DM001', N'Áo thun nam tay ngắn An Phước 2- ATH0007642')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIA], [VON], [SIZE], [ANH], [SOLUONG], [TINHTRANG], [MaDM], [MOTA]) VALUES (N'ATH0007643', N'Áo thun nam tay ngắn An Phước 3', 500000.0000, 500000.0000, N'L', N'ATH000764.png', 10, N'Còn hàng', N'DM001', N'Áo thun nam tay ngắn An Phước 3- ATH0007643')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIA], [VON], [SIZE], [ANH], [SOLUONG], [TINHTRANG], [MaDM], [MOTA]) VALUES (N'ATH0007644', N'Áo thun nam tay ngắn An Phước 4', 500000.0000, 500000.0000, N'L', N'ATH000764.png', 10, N'Còn hàng', N'DM001', N'Áo thun nam tay ngắn An Phước 4- ATH0007644')
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NV_CV] FOREIGN KEY([CHUCVU])
REFERENCES [dbo].[CHUCVU] ([MACV])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NV_CV]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_DM_SP] FOREIGN KEY([MaDM])
REFERENCES [dbo].[DANHMUC] ([MaDM])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_DM_SP]
GO

ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HD_KH] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO


ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HD_CTHD] FOREIGN KEY([MAHD])
REFERENCES [dbo].[HOADON] ([MAHD])
GO

ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD  CONSTRAINT [FK_SP_CTHD] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO



--ALTER TABLE [dbo].[CT_HOADON] 
--DROP CONSTRAINT  FK_HD_CTHD;

USE [master]
GO
ALTER DATABASE [QL_QUANAO] SET  READ_WRITE 
GO

