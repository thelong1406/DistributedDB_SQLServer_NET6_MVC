USE [master]
GO
/****** Object:  Database [CSDLPT_BTL]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE DATABASE [CSDLPT_BTL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CSDLPT_BTL', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.BTL_MAY_CHU\MSSQL\DATA\CSDLPT_BTL.mdf' , SIZE = 139264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CSDLPT_BTL_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.BTL_MAY_CHU\MSSQL\DATA\CSDLPT_BTL_log.ldf' , SIZE = 3416064KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CSDLPT_BTL] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CSDLPT_BTL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CSDLPT_BTL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CSDLPT_BTL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CSDLPT_BTL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CSDLPT_BTL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CSDLPT_BTL] SET ARITHABORT OFF 
GO
ALTER DATABASE [CSDLPT_BTL] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CSDLPT_BTL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CSDLPT_BTL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CSDLPT_BTL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CSDLPT_BTL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CSDLPT_BTL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CSDLPT_BTL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CSDLPT_BTL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CSDLPT_BTL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CSDLPT_BTL] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CSDLPT_BTL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CSDLPT_BTL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CSDLPT_BTL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CSDLPT_BTL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CSDLPT_BTL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CSDLPT_BTL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CSDLPT_BTL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CSDLPT_BTL] SET RECOVERY FULL 
GO
ALTER DATABASE [CSDLPT_BTL] SET  MULTI_USER 
GO
ALTER DATABASE [CSDLPT_BTL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CSDLPT_BTL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CSDLPT_BTL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CSDLPT_BTL] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CSDLPT_BTL] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CSDLPT_BTL] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CSDLPT_BTL', N'ON'
GO
ALTER DATABASE [CSDLPT_BTL] SET QUERY_STORE = OFF
GO
USE [CSDLPT_BTL]
GO
/****** Object:  User [PhoGiamDoc]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE USER [PhoGiamDoc] FOR LOGIN [Semi_Boss] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [KH_96]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE USER [KH_96] FOR LOGIN [KH_96] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [KH_56]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE USER [KH_56] FOR LOGIN [KH_56] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [KH_2]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE USER [KH_2] FOR LOGIN [KH_2] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [KH_1]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE USER [KH_1] FOR LOGIN [KH_1] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [IT_Man]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE USER [IT_Man] FOR LOGIN [IT] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CNTNS1]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE USER [CNTNS1] FOR LOGIN [CNTNS1] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CNTKTT1]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE USER [CNTKTT1] FOR LOGIN [CNTKTT1] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CNTDHSP1]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE USER [CNTDHSP1] FOR LOGIN [CNTDHSP1] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CN1TN14]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE USER [CN1TN14] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CN1TK1]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE USER [CN1TK1] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CN1QLCN1]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE USER [CN1QLCN1] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CN1PC1]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE USER [CN1PC1] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Boss]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE USER [Boss] FOR LOGIN [Boss] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [TongNhanSu]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE ROLE [TongNhanSu]
GO
/****** Object:  DatabaseRole [MSmerge_PAL_role]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE ROLE [MSmerge_PAL_role]
GO
/****** Object:  DatabaseRole [MSmerge_648D054F9BC848188C9F590033594C03]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE ROLE [MSmerge_648D054F9BC848188C9F590033594C03]
GO
/****** Object:  DatabaseRole [MSmerge_5739479F5BAC48E99A4732928FC96FD0]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE ROLE [MSmerge_5739479F5BAC48E99A4732928FC96FD0]
GO
/****** Object:  DatabaseRole [MSmerge_56ABC83FBADF449F978ED42BF01CECF6]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE ROLE [MSmerge_56ABC83FBADF449F978ED42BF01CECF6]
GO
/****** Object:  DatabaseRole [KhachHang]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE ROLE [KhachHang]
GO
/****** Object:  DatabaseRole [KeToanTruong]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE ROLE [KeToanTruong]
GO
/****** Object:  DatabaseRole [IT_Manager]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE ROLE [IT_Manager]
GO
/****** Object:  DatabaseRole [DinhHuongSanPham]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE ROLE [DinhHuongSanPham]
GO
/****** Object:  DatabaseRole [BanGiamDoc]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE ROLE [BanGiamDoc]
GO
ALTER ROLE [BanGiamDoc] ADD MEMBER [PhoGiamDoc]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [PhoGiamDoc]
GO
ALTER ROLE [KhachHang] ADD MEMBER [KH_96]
GO
ALTER ROLE [KhachHang] ADD MEMBER [KH_56]
GO
ALTER ROLE [KhachHang] ADD MEMBER [KH_2]
GO
ALTER ROLE [KhachHang] ADD MEMBER [KH_1]
GO
ALTER ROLE [IT_Manager] ADD MEMBER [IT_Man]
GO
ALTER ROLE [db_owner] ADD MEMBER [IT_Man]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [IT_Man]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [IT_Man]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [IT_Man]
GO
ALTER ROLE [TongNhanSu] ADD MEMBER [CNTNS1]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [CNTNS1]
GO
ALTER ROLE [KeToanTruong] ADD MEMBER [CNTKTT1]
GO
ALTER ROLE [DinhHuongSanPham] ADD MEMBER [CNTDHSP1]
GO
ALTER ROLE [BanGiamDoc] ADD MEMBER [Boss]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Boss]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [TongNhanSu]
GO
ALTER ROLE [MSmerge_PAL_role] ADD MEMBER [MSmerge_648D054F9BC848188C9F590033594C03]
GO
ALTER ROLE [MSmerge_PAL_role] ADD MEMBER [MSmerge_5739479F5BAC48E99A4732928FC96FD0]
GO
ALTER ROLE [MSmerge_PAL_role] ADD MEMBER [MSmerge_56ABC83FBADF449F978ED42BF01CECF6]
GO
ALTER ROLE [db_owner] ADD MEMBER [IT_Manager]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [IT_Manager]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [IT_Manager]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [IT_Manager]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [BanGiamDoc]
GO
/****** Object:  Schema [MSmerge_PAL_role]    Script Date: 22/01/19 9:38:35 PM ******/
CREATE SCHEMA [MSmerge_PAL_role]
GO
/****** Object:  UserDefinedFunction [dbo].[f_Ham_Tra_Ve_ServerName_Theo_SDT_Khach_Hang]    Script Date: 22/01/19 9:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[f_Ham_Tra_Ve_ServerName_Theo_SDT_Khach_Hang] (@SDT char(10))
RETURNS nvarchar(100)
AS
BEGIN
	DECLARE @MACN char(3) = (SELECT ma_chi_nhanh from khach_hang where sdt = @SDT)
	DECLARE @ServerName nvarchar(100)
    IF @MACN = 'CN1'
		set @ServerName = N'LONGTRINH\BTL_TRAM_1'
	IF @MACN = N'CN2'
		set @ServerName =  N'LONGTRINH\BTL_TRAM_2'
	IF @MACN = 'CN3'
		set @ServerName =  N'LONGTRINH\BTL_TRAM_3'
	RETURN @ServerName
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_Check_Quyen_Them_Sua_Nhan_Vien_Theo_Chuc_Vu]    Script Date: 22/01/19 9:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------FUNCTION dùng trong trigger để kiểm tra xem người dùng hiện tại có thể thêm hoặc sửa chức vụ cho nhân viên không?
-------=> BIT
CREATE FUNCTION [dbo].[fn_Check_Quyen_Them_Sua_Nhan_Vien_Theo_Chuc_Vu] (@MACV nvarchar(max))
RETURNS BIT
AS
BEGIN
    DECLARE @PERMISSION BIT = 0
    IF EXISTS (SELECT ma_chuc_vu FROM DBO.fn_Lay_DS_Chuc_Vu_Khi_Them_Sua_Nhan_Vien_Theo_Quyen_Cua_User_Login() where TRIM(ma_chuc_vu) = TRIM(@MACV))
        SET @PERMISSION = 1
    RETURN @PERMISSION
END
GO
/****** Object:  UserDefinedFunction [dbo].[FN_Check_Role_Login]    Script Date: 22/01/19 9:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FN_Check_Role_Login] (@LoginActor nvarchar(max))
Returns bit
AS
BEGIN
	DECLARE @CHECK bit = 0
	if 'db_securityadmin' in (SELECT r.name
		FROM sys.database_role_members AS m
		INNER JOIN sys.database_principals AS r ON m.role_principal_id = r.principal_id
		INNER JOIN sys.database_principals AS u ON u.principal_id = m.member_principal_id
		WHERE u.name = @LoginActor)
			set @CHECK = 1
	--NẾu không có thì tìm qua ROLEMEMBER của ROLEMEMBER =))
	ELSE
	BEGIN
		DECLARE @ROLE nvarchar(max)
		DECLARE c_Cursor_Check_Login Cursor 
		for SELECT r.name
			FROM sys.database_role_members AS m
			INNER JOIN sys.database_principals AS r ON m.role_principal_id = r.principal_id
			INNER JOIN sys.database_principals AS u ON u.principal_id = m.member_principal_id
			WHERE u.name = @LoginActor
		OPEN c_Cursor_Check_Login
		FETCH NEXT FROM c_Cursor_Check_Login INTO @ROLE
		WHILE @@FETCH_STATUS = 0
		BEGIN
			IF (select DBO.FN_Check_Role_Login(@ROLE)) = 1
			BEGIN
				set @CHECK = 1
				break
			END
		END
		CLOSE c_Cursor_Check_Login
		DEALLOCATE c_Cursor_Check_Login
	END
	RETURN @CHECK
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_Kiem_Tra_Va_Xuat_Role_Theo_Chuc_Vu]    Script Date: 22/01/19 9:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------FUNCTION Trả về role thông qua chức vụ của nhân viên
-------=> db_role NVARCHAR(MAX)
CREATE FUNCTION [dbo].[fn_Kiem_Tra_Va_Xuat_Role_Theo_Chuc_Vu] (@MACV nvarchar(max))
RETURNS NVARCHAR(MAX)
AS
BEGIN
    DECLARE @Role NVARCHAR(MAX)
    IF EXISTS (SELECT ma_chuc_vu from chuc_vu where ma_chuc_vu = @MACV)
    BEGIN
        IF @MACV in ('BV','PC', 'PV')
            set @Role =  'NV_Parttime'
        ELSE IF @MACV = 'QLCN'
            set @Role = 'QuanLyChiNhanh'
        ELSE IF @MACV = 'IT'
            set @Role = 'IT_Manager'
        ELSE IF @MACV in ('GĐ', 'PGĐ')
            set @Role = 'BanGiamDoc'
        ELSE IF @MACV = 'NS'
            set @Role = 'TongNhanSu'
        ELSE IF @MACV = 'KTT'
            set @Role = 'KeToanTruong'
        ELSE IF @MACV = 'DHSP'
            set @Role = 'DinhHuongSanPham'
        ELSE IF @MACV = 'NSCN'
            set @Role = 'NhanSuChiNhanh'
        ELSE IF @MACV = 'TK'
            set @Role = 'ThuKho'
        ELSE IF @MACV = 'TN'
            set @Role = 'ThuNgan'
        ELSE
            set @Role = NULL
    END
    ELSE
        set @Role = NULL
    RETURN @Role
    --Nếu trả về null là có nghĩa không tồn tại chức vụ hoặc cái chức vụ này ko có Role gì
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_Lay_DS_Chuc_Vu_Khi_Them_Sua_Nhan_Vien_Theo_Quyen_Cua_User_Login]    Script Date: 22/01/19 9:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------FUNCTION lấy danh sách chức vụ mà người dùng đăng nhập hiện tại có thể tạo, sửa cho nhân viên
-------=> TABLE (ma_chuc_vu, ten_chuc_vu)
CREATE FUNCTION [dbo].[fn_Lay_DS_Chuc_Vu_Khi_Them_Sua_Nhan_Vien_Theo_Quyen_Cua_User_Login] ()
RETURNS @DS_CHUC_VU TABLE (
    ma_chuc_vu char(4),
    ten_chuc_vu NVARCHAR(80)
)
AS
BEGIN
    DECLARE @CURRENT_USER_LOGIN NVARCHAR(MAX) = (SELECT SUSER_NAME())
    IF EXISTS (SELECT r.name
		FROM sys.database_role_members AS m
		INNER JOIN sys.database_principals AS r ON m.role_principal_id = r.principal_id
		INNER JOIN sys.database_principals AS u ON u.principal_id = m.member_principal_id
		WHERE u.name = @CURRENT_USER_LOGIN and r.name in ('QuanLyChiNhanh', 'NhanSuChiNhanh')) 
    BEGIN
        INSERT INTO @DS_CHUC_VU (ma_chuc_vu, ten_chuc_vu)   
        SELECT ma_chuc_vu, ten_chuc_vu from chuc_vu WHERE is_part_time = 1 or ma_chuc_vu in ('TK','TN') 
    END
    ELSE IF 'TongNhanSu' in (SELECT r.name
		FROM sys.database_role_members AS m
		INNER JOIN sys.database_principals AS r ON m.role_principal_id = r.principal_id
		INNER JOIN sys.database_principals AS u ON u.principal_id = m.member_principal_id
		WHERE u.name = @CURRENT_USER_LOGIN) 
    BEGIN
        INSERT INTO @DS_CHUC_VU (ma_chuc_vu, ten_chuc_vu)
        SELECT ma_chuc_vu, ten_chuc_vu from chuc_vu WHERE is_part_time = 0 and ma_chuc_vu not in ('TN', 'TK', 'GD', N'PGĐ', 'IT') 
    END
    ELSE IF EXISTS (SELECT r.name
		FROM sys.database_role_members AS m
		INNER JOIN sys.database_principals AS r ON m.role_principal_id = r.principal_id
		INNER JOIN sys.database_principals AS u ON u.principal_id = m.member_principal_id
		WHERE u.name = @CURRENT_USER_LOGIN and r.name in ('GiamDoc', 'PhoGiamDoc', 'IT_Manager')) 
    BEGIN
        INSERT INTO @DS_CHUC_VU (ma_chuc_vu, ten_chuc_vu)
        SELECT ma_chuc_vu, ten_chuc_vu from chuc_vu
    END    
    ELSE
        INSERT INTO @DS_CHUC_VU (ma_chuc_vu, ten_chuc_vu)
        SELECT NULL,null
    RETURN
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_Lay_Ten_Ngay_Trong_Tuan]    Script Date: 22/01/19 9:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_Lay_Ten_Ngay_Trong_Tuan](@NGAY_TRONG_TUAN CHAR(1))
RETURNS NVARCHAR(MAX)
AS
BEGIN
	DECLARE @RESULT NVARCHAR(MAX)
	IF @NGAY_TRONG_TUAN = '2'
		SET @RESULT = N'Thứ Hai'
	ELSE IF @NGAY_TRONG_TUAN = '3'
		SET @RESULT = N'Thứ Ba' 
	ELSE IF @NGAY_TRONG_TUAN = '4'
		SET @RESULT = N'Thứ Tư'
	ELSE IF @NGAY_TRONG_TUAN = '5'
		SET @RESULT = N'Thứ Năm'
	ELSE IF @NGAY_TRONG_TUAN = '6'
		SET @RESULT = N'Thứ Sáu'
	ELSE IF @NGAY_TRONG_TUAN = '7'
		SET @RESULT = N'Thứ Bảy'
	ELSE IF @NGAY_TRONG_TUAN = '8'
		SET @RESULT = N'Chủ Nhật'
	RETURN @RESULT
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_Tu_Dong_Tao_Ma_Nhan_Vien]    Script Date: 22/01/19 9:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------Nhân Viên
----------------------------------------------------------------------------------------
---------------------------------------FUNCTION-----------------------------------------
----------------------------------------------------------------------------------------
-----FUNCTION Tự động tạo mã nhân viên bằng mã chi nhánh và mã chức vụ => Mã nhân viên
CREATE FUNCTION [dbo].[fn_Tu_Dong_Tao_Ma_Nhan_Vien](@MA_CN nvarchar(max), @MA_CV nvarchar(max))
RETURNS NVARCHAR(max)
AS
BEGIN
    DECLARE @MA_NV_TEMP NVARCHAR(max) = TRIM(@MA_CN) + TRIM(@MA_CV)
    DECLARE @COUNT int = 1
    DECLARE @MA_NV_COMPARE NVARCHAR(max)

    DECLARE c_Cursor_Trigger_tg_Tao_MaNV_Va_Them_Nhan_Vien CURSOR
    FOR SELECT ma_nv FROM nhan_vien WHERE ma_nv like @MA_NV_TEMP + '%'
    OPEN c_Cursor_Trigger_tg_Tao_MaNV_Va_Them_Nhan_Vien
    FETCH NEXT FROM c_Cursor_Trigger_tg_Tao_MaNV_Va_Them_Nhan_Vien INTO @MA_NV_COMPARE
    WHILE @@FETCH_STATUS = 0
    BEGIN
        IF @MA_NV_COMPARE <> CONCAT(@MA_NV_TEMP,@COUNT)
            BREAK
        ELSE
        BEGIN
            SET @COUNT = @COUNT + 1
        END
        FETCH NEXT FROM c_Cursor_Trigger_tg_Tao_MaNV_Va_Them_Nhan_Vien INTO @MA_NV_COMPARE
    END
    SET @MA_NV_TEMP = CONCAT(@MA_NV_TEMP,@COUNT)
    CLOSE c_Cursor_Trigger_tg_Tao_MaNV_Va_Them_Nhan_Vien
    DEALLOCATE c_Cursor_Trigger_tg_Tao_MaNV_Va_Them_Nhan_Vien

    RETURN @MA_NV_TEMP
END
GO
/****** Object:  View [dbo].[v_Get_All_Server]    Script Date: 22/01/19 9:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_Get_All_Server]
as
	select ten_chi_nhanh = PUBs.description, subscriber_server as ten_server
	from sysmergepublications PUBS join sysmergesubscriptions SUBS on PUBS.pubid = SUBS.pubid
	where publisher <> subscriber_server
	union
	select ten_chi_nhanh = N'Tổng Công Ty', publisher as ten_server
	from sysmergepublications

GO
/****** Object:  Table [dbo].[Backup_doanh_thu]    Script Date: 22/01/19 9:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Backup_doanh_thu](
	[ngay] [date] NOT NULL,
	[ban_hang] [float] NOT NULL,
	[chi] [float] NOT NULL,
	[nhap_nl] [float] NOT NULL,
	[phu_thu] [float] NOT NULL,
	[loi_nhuan] [float] NOT NULL,
	[ma_chi_nhanh] [char](4) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK__Backup_d__7571FF3773D4FCD8] PRIMARY KEY CLUSTERED 
(
	[ma_chi_nhanh] ASC,
	[ngay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CN_KV]    Script Date: 22/01/19 9:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CN_KV](
	[ma_chi_nhanh] [char](4) NOT NULL,
	[ma_khu_vuc] [char](1) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_chi_nhanh] ASC,
	[ma_khu_vuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cong_thuc]    Script Date: 22/01/19 9:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cong_thuc](
	[ma_sp] [int] NOT NULL,
	[ma_nl] [smallint] NOT NULL,
	[luong] [float] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_sp] ASC,
	[ma_nl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cham_cong]    Script Date: 22/01/19 9:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cham_cong](
	[ma_cham_cong] [int] NOT NULL,
	[ngay_check_cong] [datetime] NULL,
	[di_tre] [bit] NOT NULL,
	[ve_som] [bit] NOT NULL,
	[vang_mat] [bit] NOT NULL,
	[tg_nhan_ca_thuc_te] [datetime] NULL,
	[tg_tan_ca_thuc_te] [datetime] NULL,
	[tong_thoi_gian_lam] [datetime] NULL,
	[ma_nv] [nchar](12) NOT NULL,
	[ma_chi_nhanh] [char](4) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_cham_cong] ASC,
	[ma_nv] ASC,
	[ma_chi_nhanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chi_nhanh]    Script Date: 22/01/19 9:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chi_nhanh](
	[ma_chi_nhanh] [char](4) NOT NULL,
	[ten_chi_nhanh] [nvarchar](50) NOT NULL,
	[dia_chi] [nvarchar](100) NOT NULL,
	[sdt_cn] [char](10) NOT NULL,
	[be_deleted] [bit] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_chi_nhanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[dia_chi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ten_chi_nhanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[sdt_cn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chi_tiet_hoa_don]    Script Date: 22/01/19 9:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chi_tiet_hoa_don](
	[so_hd] [int] NOT NULL,
	[ma_sp] [int] NOT NULL,
	[so_luong] [tinyint] NOT NULL,
	[don_gia_sp_hien_thoi] [float] NOT NULL,
	[ma_nv] [nchar](12) NOT NULL,
	[ma_chi_nhanh] [char](4) NOT NULL,
	[ma_khu_vuc] [char](1) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[so_hd] ASC,
	[ma_sp] ASC,
	[ma_nv] ASC,
	[ma_chi_nhanh] ASC,
	[ma_khu_vuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chi_tiet_phieu_nhap]    Script Date: 22/01/19 9:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chi_tiet_phieu_nhap](
	[so_phieu_nhap] [int] NOT NULL,
	[ma_nl_kho] [smallint] NOT NULL,
	[so_luong] [float] NOT NULL,
	[don_gia_nl] [float] NOT NULL,
	[ma_ncc] [tinyint] NOT NULL,
	[ma_nv] [nchar](12) NOT NULL,
	[ma_nl] [smallint] NOT NULL,
	[ma_chi_nhanh] [char](4) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[so_phieu_nhap] ASC,
	[ma_nl_kho] ASC,
	[ma_ncc] ASC,
	[ma_nv] ASC,
	[ma_nl] ASC,
	[ma_chi_nhanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chi_tiet_phu_thu]    Script Date: 22/01/19 9:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chi_tiet_phu_thu](
	[so_phieu_thu] [int] NOT NULL,
	[ma_dich_vu] [int] NOT NULL,
	[so_luong] [float] NOT NULL,
	[ma_nv] [nchar](12) NOT NULL,
	[ma_chi_nhanh] [char](4) NOT NULL,
	[don_gia_dv_hien_thoi] [float] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[so_phieu_thu] ASC,
	[ma_dich_vu] ASC,
	[ma_nv] ASC,
	[ma_chi_nhanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chuc_vu]    Script Date: 22/01/19 9:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chuc_vu](
	[ma_chuc_vu] [char](4) NOT NULL,
	[ten_chuc_vu] [nvarchar](30) NOT NULL,
	[cach_tinh_luong] [bit] NOT NULL,
	[luong] [float] NOT NULL,
	[be_deleted] [bit] NOT NULL,
	[is_part_time] [bit] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_chuc_vu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ten_chuc_vu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dich_vu]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dich_vu](
	[ma_dich_vu] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ten_dich_vu] [nvarchar](50) NOT NULL,
	[don_gia_theo_gio] [float] NOT NULL,
	[be_deleted] [bit] NOT NULL,
	[don_gia_khuyen_mai] [float] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_dich_vu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ten_dich_vu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoa_don]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don](
	[so_hd] [int] NOT NULL,
	[ma_chi_nhanh] [char](4) NOT NULL,
	[ma_nv] [nchar](12) NOT NULL,
	[ma_khuyen_mai] [tinyint] NULL,
	[ma_kh] [int] NULL,
	[hinh_thuc_mua] [bit] NOT NULL,
	[ngay_thanh_toan] [datetime] NOT NULL,
	[tong_tien] [float] NULL,
	[thanh_toan] [bit] NOT NULL,
	[ma_khu_vuc] [char](1) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[so_hd] ASC,
	[ma_chi_nhanh] ASC,
	[ma_nv] ASC,
	[ma_khu_vuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khach_hang]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khach_hang](
	[ma_kh] [int] NOT NULL,
	[ma_chi_nhanh] [char](4) NOT NULL,
	[ten_kh] [nvarchar](80) NOT NULL,
	[sdt] [char](10) NOT NULL,
	[tich_luy] [float] NOT NULL,
	[ngay_tham_gia] [datetime] NOT NULL,
	[dia_chi] [nvarchar](80) NULL,
	[be_deleted] [bit] NOT NULL,
	[gioi_tinh] [bit] NOT NULL,
	[ngay_sinh] [date] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK__khach_ha__0FE0B7EE01517E6F] PRIMARY KEY CLUSTERED 
(
	[ma_kh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__khach_ha__DDDFB48370E3E449] UNIQUE NONCLUSTERED 
(
	[sdt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khu_vuc]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khu_vuc](
	[ma_khu_vuc] [char](1) NOT NULL,
	[ten_khu_vuc] [nvarchar](12) NOT NULL,
	[phi_kv] [float] NOT NULL,
	[be_deleted] [bit] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_khu_vuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ten_khu_vuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khuyen_mai]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khuyen_mai](
	[ma_khuyen_mai] [tinyint] NOT NULL,
	[dieu_kien_tich_luy] [float] NOT NULL,
	[muc_khuyen_mai] [float] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_khuyen_mai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lich_lam_viec_parttime_dlcd]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lich_lam_viec_parttime_dlcd](
	[id] [tinyint] NOT NULL,
	[ngay_trong_tuan] [char](1) NOT NULL,
	[ca_trong_ngay] [nchar](5) NOT NULL,
	[thuong_theo_ca] [float] NOT NULL,
	[ghi_chu] [nvarchar](50) NULL,
	[gio_nhan_ca] [datetime] NOT NULL,
	[gio_tan_ca] [datetime] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK__lich_lam__3213E83F01A9A62B] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loai_hinh_chi]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loai_hinh_chi](
	[ma_loai_chi] [tinyint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ten_loai_chi] [nvarchar](30) NOT NULL,
	[be_deleted] [bit] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_loai_chi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ten_loai_chi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loai_san_pham]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loai_san_pham](
	[ma_loai] [int] NOT NULL,
	[ten_loai] [nvarchar](50) NOT NULL,
	[be_deleted] [bit] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_loai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ten_loai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nguyen_lieu]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nguyen_lieu](
	[ma_nl] [smallint] NOT NULL,
	[ten_nl] [nvarchar](80) NOT NULL,
	[don_vi_do] [nvarchar](10) NOT NULL,
	[be_deleted] [bit] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_nl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ten_nl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nguyen_lieu_kho]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nguyen_lieu_kho](
	[ma_nl_kho] [smallint] NOT NULL,
	[ma_chi_nhanh] [char](4) NOT NULL,
	[ton_kho] [float] NOT NULL,
	[gia_von] [float] NOT NULL,
	[be_deleted] [bit] NOT NULL,
	[ma_nl] [smallint] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_nl_kho] ASC,
	[ma_nl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nha_cung_cap]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nha_cung_cap](
	[ma_ncc] [tinyint] NOT NULL,
	[ten_ncc] [nvarchar](100) NOT NULL,
	[sdt_ncc] [char](10) NOT NULL,
	[dia_chi_ncc] [nvarchar](80) NOT NULL,
	[be_deleted] [bit] NOT NULL,
	[ma_chi_nhanh] [char](4) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_ncc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[dia_chi_ncc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ten_ncc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhan_vien]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhan_vien](
	[ma_nv] [nchar](12) NOT NULL,
	[ma_chi_nhanh] [char](4) NOT NULL,
	[ma_chuc_vu] [char](4) NOT NULL,
	[ten_nv] [nvarchar](80) NOT NULL,
	[cmnd] [char](12) NOT NULL,
	[gioi_tinh] [bit] NOT NULL,
	[ngay_sinh] [date] NOT NULL,
	[dia_chi_nv] [nvarchar](80) NULL,
	[sdt_nv] [char](10) NOT NULL,
	[thu_viec] [bit] NULL,
	[ngay_nhap_viec] [date] NULL,
	[he_so_luong] [float] NULL,
	[anh_dai_dien] [nvarchar](4000) NULL,
	[be_deleted] [bit] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK__nhan_vie__D9A62C558E124030] PRIMARY KEY CLUSTERED 
(
	[ma_nv] ASC,
	[ma_chi_nhanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phan_cong]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phan_cong](
	[ma_nv] [nchar](12) NOT NULL,
	[id] [tinyint] NOT NULL,
	[ma_chi_nhanh] [char](4) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_nv] ASC,
	[id] ASC,
	[ma_chi_nhanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phieu_chi]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieu_chi](
	[so_phieu_chi] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ma_loai_chi] [tinyint] NOT NULL,
	[ngay_chi] [datetime] NOT NULL,
	[tong_tien_chi] [float] NULL,
	[ma_nv] [nchar](12) NOT NULL,
	[ma_chi_nhanh] [char](4) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[so_phieu_chi] ASC,
	[ma_nv] ASC,
	[ma_chi_nhanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phieu_nhap]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieu_nhap](
	[so_phieu_nhap] [int] NOT NULL,
	[ma_ncc] [tinyint] NOT NULL,
	[ma_nv] [nchar](12) NOT NULL,
	[ngay_nhap] [datetime] NOT NULL,
	[tong_tien_nhap] [float] NULL,
	[ma_chi_nhanh] [char](4) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[so_phieu_nhap] ASC,
	[ma_ncc] ASC,
	[ma_nv] ASC,
	[ma_chi_nhanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phieu_phu_thu]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieu_phu_thu](
	[so_phieu_thu] [int] NOT NULL,
	[ngay_thu] [date] NOT NULL,
	[tong_phu_thu] [float] NULL,
	[ma_nv] [nchar](12) NOT NULL,
	[ma_chi_nhanh] [char](4) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK__phieu_ph__E6F1AC0C6A208F0F] PRIMARY KEY CLUSTERED 
(
	[so_phieu_thu] ASC,
	[ma_nv] ASC,
	[ma_chi_nhanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_And_Url]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_And_Url](
	[role_name] [nvarchar](max) NULL,
	[url] [nvarchar](max) NULL,
	[url_title] [nvarchar](max) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[san_pham]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[san_pham](
	[ma_sp] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ten_sp] [nvarchar](80) NOT NULL,
	[don_gia_theo_sp] [float] NOT NULL,
	[ghi_chu_cong_thuc] [nvarchar](500) NULL,
	[be_deleted] [bit] NOT NULL,
	[ma_loai] [int] NOT NULL,
	[hinh_anh] [nvarchar](4000) NULL,
	[don_gia_khuyen_mai] [float] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK__san_pham__0FE0F488DDC78DB1] PRIMARY KEY CLUSTERED 
(
	[ma_sp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__san_pham__B32A53531C069E44] UNIQUE NONCLUSTERED 
(
	[ten_sp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1176572917]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1176572917] ON [dbo].[Backup_doanh_thu]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_725577623]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_725577623] ON [dbo].[CN_KV]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1493580359]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1493580359] ON [dbo].[cong_thuc]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1621580815]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1621580815] ON [dbo].[cham_cong]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_581577110]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_581577110] ON [dbo].[chi_nhanh]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1013578649]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1013578649] ON [dbo].[chi_tiet_hoa_don]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1253579504]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1253579504] ON [dbo].[chi_tiet_phieu_nhap]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1077578877]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1077578877] ON [dbo].[chi_tiet_phu_thu]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1429580131]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1429580131] ON [dbo].[chuc_vu]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_757577737]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_757577737] ON [dbo].[dich_vu]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_901578250]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_901578250] ON [dbo].[hoa_don]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_965578478]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_965578478] ON [dbo].[khach_hang]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_661577395]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_661577395] ON [dbo].[khu_vuc]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1813581499]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1813581499] ON [dbo].[khuyen_mai]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_322100188]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_322100188] ON [dbo].[lich_lam_viec_parttime_dlcd]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1557580587]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1557580587] ON [dbo].[loai_hinh_chi]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_853578079]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_853578079] ON [dbo].[loai_san_pham]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1141579105]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1141579105] ON [dbo].[nguyen_lieu]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1781581385]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1781581385] ON [dbo].[nguyen_lieu_kho]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1189579276]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1189579276] ON [dbo].[nha_cung_cap]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_495822070]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_495822070] ON [dbo].[nhan_vien]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1749581271]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1749581271] ON [dbo].[phan_cong]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1525580473]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1525580473] ON [dbo].[phieu_chi]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1285579618]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1285579618] ON [dbo].[phieu_nhap]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1109578991]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1109578991] ON [dbo].[phieu_phu_thu]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1800471030]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1800471030] ON [dbo].[Role_And_Url]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_162099618]    Script Date: 22/01/19 9:38:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_162099618] ON [dbo].[san_pham]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Backup_doanh_thu] ADD  CONSTRAINT [MSmerge_df_rowguid_A6ABAA154B104965A0BEF05EDB7EDB8A]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[CN_KV] ADD  CONSTRAINT [MSmerge_df_rowguid_9AA5749B772347D5823C0CD1DB434C13]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[cong_thuc] ADD  CONSTRAINT [MSmerge_df_rowguid_2B66B815488C438F88D98D521BB31915]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[cham_cong] ADD  CONSTRAINT [DF__cham_cong__di_tr__628FA481]  DEFAULT ((0)) FOR [di_tre]
GO
ALTER TABLE [dbo].[cham_cong] ADD  CONSTRAINT [DF__cham_cong__ve_so__6383C8BA]  DEFAULT ((0)) FOR [ve_som]
GO
ALTER TABLE [dbo].[cham_cong] ADD  CONSTRAINT [DF__cham_cong__vang___6477ECF3]  DEFAULT ((0)) FOR [vang_mat]
GO
ALTER TABLE [dbo].[cham_cong] ADD  CONSTRAINT [MSmerge_df_rowguid_ADE0E908969F4F3D92A3C28736E18DA9]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[chi_nhanh] ADD  CONSTRAINT [MSmerge_df_rowguid_0B6587D91A9443F8805892278D900683]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[chi_tiet_hoa_don] ADD  CONSTRAINT [MSmerge_df_rowguid_2AD8DF12FFD24D9A91839A76E14E7F01]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[chi_tiet_phieu_nhap] ADD  CONSTRAINT [MSmerge_df_rowguid_6622F42C0E694BA98E90E552CA6F8FE0]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[chi_tiet_phu_thu] ADD  CONSTRAINT [MSmerge_df_rowguid_423D4247850A48DAAB4D6E061A7AF920]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[chuc_vu] ADD  DEFAULT ('false') FOR [be_deleted]
GO
ALTER TABLE [dbo].[chuc_vu] ADD  CONSTRAINT [MSmerge_df_rowguid_CDBEFD6511E84754BC14F40CDA8C732D]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[dich_vu] ADD  CONSTRAINT [MSmerge_df_rowguid_18AC6F56CDA24A3C8D41FB1A3745A490]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[hoa_don] ADD  DEFAULT ((0)) FOR [hinh_thuc_mua]
GO
ALTER TABLE [dbo].[hoa_don] ADD  DEFAULT ((1)) FOR [thanh_toan]
GO
ALTER TABLE [dbo].[hoa_don] ADD  CONSTRAINT [MSmerge_df_rowguid_F93353B8744E4268A4A4F81BB9A5E323]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[khach_hang] ADD  CONSTRAINT [MSmerge_df_rowguid_0DB9ECD55CD4485BBB9F66C52D2CC32B]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[khu_vuc] ADD  DEFAULT ((0)) FOR [phi_kv]
GO
ALTER TABLE [dbo].[khu_vuc] ADD  CONSTRAINT [MSmerge_df_rowguid_0797B2CCB35A4CAAA2E05EE2BC0A5B17]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[khuyen_mai] ADD  CONSTRAINT [MSmerge_df_rowguid_C16F848CF2FC43D09DB93BC820890884]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[lich_lam_viec_parttime_dlcd] ADD  CONSTRAINT [DF__lich_lam___thuon__6754599E]  DEFAULT ((1)) FOR [thuong_theo_ca]
GO
ALTER TABLE [dbo].[lich_lam_viec_parttime_dlcd] ADD  CONSTRAINT [MSmerge_df_rowguid_1EFB1B94EC04491488E6AE6FB9C33D66]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[loai_hinh_chi] ADD  DEFAULT ('false') FOR [be_deleted]
GO
ALTER TABLE [dbo].[loai_hinh_chi] ADD  CONSTRAINT [MSmerge_df_rowguid_C8DD7ED3AB7848F7B3E19D277ACB1E01]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[loai_san_pham] ADD  CONSTRAINT [MSmerge_df_rowguid_FEE904A643484B8FB1F9ABC230B798C1]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[nguyen_lieu] ADD  CONSTRAINT [MSmerge_df_rowguid_888BBB534158476B995E5DFC7F01AE78]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[nguyen_lieu_kho] ADD  CONSTRAINT [MSmerge_df_rowguid_38BBD064A3A9411683B95AE991AE6DC9]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[nha_cung_cap] ADD  CONSTRAINT [MSmerge_df_rowguid_088A81E2B02C4834B429EA806341DAAA]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[nhan_vien] ADD  CONSTRAINT [MSmerge_df_rowguid_203DC7A8DADF43B983A204DC52975142]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[phan_cong] ADD  CONSTRAINT [MSmerge_df_rowguid_C8E384CDF08B4FCBA8E19A25C2EA2671]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[phieu_chi] ADD  CONSTRAINT [MSmerge_df_rowguid_EE6F96FE8B05429CB1A0C6409D1017D1]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[phieu_nhap] ADD  CONSTRAINT [MSmerge_df_rowguid_6BB1509C132F4336904B30A1907EF2B6]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[phieu_phu_thu] ADD  CONSTRAINT [MSmerge_df_rowguid_9B52A811026845BAB7664C6F81AEA73A]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[Role_And_Url] ADD  CONSTRAINT [MSmerge_df_rowguid_F1C4E7F8785C4DEE8C7673B02E2442FF]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[san_pham] ADD  CONSTRAINT [MSmerge_df_rowguid_AD391BA6890B4BEAB2C98A2F873D4540]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[Backup_doanh_thu]  WITH CHECK ADD FOREIGN KEY([ma_chi_nhanh])
REFERENCES [dbo].[chi_nhanh] ([ma_chi_nhanh])
GO
ALTER TABLE [dbo].[CN_KV]  WITH CHECK ADD FOREIGN KEY([ma_chi_nhanh])
REFERENCES [dbo].[chi_nhanh] ([ma_chi_nhanh])
GO
ALTER TABLE [dbo].[CN_KV]  WITH CHECK ADD FOREIGN KEY([ma_khu_vuc])
REFERENCES [dbo].[khu_vuc] ([ma_khu_vuc])
GO
ALTER TABLE [dbo].[cong_thuc]  WITH CHECK ADD FOREIGN KEY([ma_nl])
REFERENCES [dbo].[nguyen_lieu] ([ma_nl])
GO
ALTER TABLE [dbo].[cong_thuc]  WITH CHECK ADD  CONSTRAINT [FK__cong_thuc__ma_sp__76969D2E] FOREIGN KEY([ma_sp])
REFERENCES [dbo].[san_pham] ([ma_sp])
GO
ALTER TABLE [dbo].[cong_thuc] CHECK CONSTRAINT [FK__cong_thuc__ma_sp__76969D2E]
GO
ALTER TABLE [dbo].[cham_cong]  WITH CHECK ADD  CONSTRAINT [FK__cham_cong__03F0984C] FOREIGN KEY([ma_nv], [ma_chi_nhanh])
REFERENCES [dbo].[nhan_vien] ([ma_nv], [ma_chi_nhanh])
GO
ALTER TABLE [dbo].[cham_cong] CHECK CONSTRAINT [FK__cham_cong__03F0984C]
GO
ALTER TABLE [dbo].[chi_tiet_hoa_don]  WITH CHECK ADD  CONSTRAINT [FK__chi_tiet___ma_sp__75A278F5] FOREIGN KEY([ma_sp])
REFERENCES [dbo].[san_pham] ([ma_sp])
GO
ALTER TABLE [dbo].[chi_tiet_hoa_don] CHECK CONSTRAINT [FK__chi_tiet___ma_sp__75A278F5]
GO
ALTER TABLE [dbo].[chi_tiet_hoa_don]  WITH CHECK ADD FOREIGN KEY([so_hd], [ma_chi_nhanh], [ma_nv], [ma_khu_vuc])
REFERENCES [dbo].[hoa_don] ([so_hd], [ma_chi_nhanh], [ma_nv], [ma_khu_vuc])
GO
ALTER TABLE [dbo].[chi_tiet_phieu_nhap]  WITH CHECK ADD FOREIGN KEY([ma_nl_kho], [ma_nl])
REFERENCES [dbo].[nguyen_lieu_kho] ([ma_nl_kho], [ma_nl])
GO
ALTER TABLE [dbo].[chi_tiet_phieu_nhap]  WITH CHECK ADD FOREIGN KEY([so_phieu_nhap], [ma_ncc], [ma_nv], [ma_chi_nhanh])
REFERENCES [dbo].[phieu_nhap] ([so_phieu_nhap], [ma_ncc], [ma_nv], [ma_chi_nhanh])
GO
ALTER TABLE [dbo].[chi_tiet_phu_thu]  WITH CHECK ADD FOREIGN KEY([ma_dich_vu])
REFERENCES [dbo].[dich_vu] ([ma_dich_vu])
GO
ALTER TABLE [dbo].[chi_tiet_phu_thu]  WITH CHECK ADD  CONSTRAINT [FK__chi_tiet_phu_thu__7A672E12] FOREIGN KEY([so_phieu_thu], [ma_nv], [ma_chi_nhanh])
REFERENCES [dbo].[phieu_phu_thu] ([so_phieu_thu], [ma_nv], [ma_chi_nhanh])
GO
ALTER TABLE [dbo].[chi_tiet_phu_thu] CHECK CONSTRAINT [FK__chi_tiet_phu_thu__7A672E12]
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [FK__hoa_don__02084FDA] FOREIGN KEY([ma_nv], [ma_chi_nhanh])
REFERENCES [dbo].[nhan_vien] ([ma_nv], [ma_chi_nhanh])
GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [FK__hoa_don__02084FDA]
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD FOREIGN KEY([ma_chi_nhanh], [ma_khu_vuc])
REFERENCES [dbo].[CN_KV] ([ma_chi_nhanh], [ma_khu_vuc])
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [FK__hoa_don__ma_kh__797309D9] FOREIGN KEY([ma_kh])
REFERENCES [dbo].[khach_hang] ([ma_kh])
GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [FK__hoa_don__ma_kh__797309D9]
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD FOREIGN KEY([ma_khuyen_mai])
REFERENCES [dbo].[khuyen_mai] ([ma_khuyen_mai])
GO
ALTER TABLE [dbo].[khach_hang]  WITH CHECK ADD  CONSTRAINT [FK_khach_hang_chi_nhanh] FOREIGN KEY([ma_chi_nhanh])
REFERENCES [dbo].[chi_nhanh] ([ma_chi_nhanh])
GO
ALTER TABLE [dbo].[khach_hang] CHECK CONSTRAINT [FK_khach_hang_chi_nhanh]
GO
ALTER TABLE [dbo].[nguyen_lieu_kho]  WITH CHECK ADD FOREIGN KEY([ma_chi_nhanh])
REFERENCES [dbo].[chi_nhanh] ([ma_chi_nhanh])
GO
ALTER TABLE [dbo].[nguyen_lieu_kho]  WITH CHECK ADD FOREIGN KEY([ma_nl])
REFERENCES [dbo].[nguyen_lieu] ([ma_nl])
GO
ALTER TABLE [dbo].[nha_cung_cap]  WITH CHECK ADD FOREIGN KEY([ma_chi_nhanh])
REFERENCES [dbo].[chi_nhanh] ([ma_chi_nhanh])
GO
ALTER TABLE [dbo].[nhan_vien]  WITH CHECK ADD  CONSTRAINT [FK__nhan_vien__ma_ch__04E4BC85] FOREIGN KEY([ma_chuc_vu])
REFERENCES [dbo].[chuc_vu] ([ma_chuc_vu])
GO
ALTER TABLE [dbo].[nhan_vien] CHECK CONSTRAINT [FK__nhan_vien__ma_ch__04E4BC85]
GO
ALTER TABLE [dbo].[nhan_vien]  WITH CHECK ADD  CONSTRAINT [FK__nhan_vien__ma_ch__6EF57B66] FOREIGN KEY([ma_chi_nhanh])
REFERENCES [dbo].[chi_nhanh] ([ma_chi_nhanh])
GO
ALTER TABLE [dbo].[nhan_vien] CHECK CONSTRAINT [FK__nhan_vien__ma_ch__6EF57B66]
GO
ALTER TABLE [dbo].[phan_cong]  WITH CHECK ADD  CONSTRAINT [FK__phan_cong__01142BA1] FOREIGN KEY([ma_nv], [ma_chi_nhanh])
REFERENCES [dbo].[nhan_vien] ([ma_nv], [ma_chi_nhanh])
GO
ALTER TABLE [dbo].[phan_cong] CHECK CONSTRAINT [FK__phan_cong__01142BA1]
GO
ALTER TABLE [dbo].[phan_cong]  WITH CHECK ADD  CONSTRAINT [FK__phan_cong__id__06CD04F7] FOREIGN KEY([id])
REFERENCES [dbo].[lich_lam_viec_parttime_dlcd] ([id])
GO
ALTER TABLE [dbo].[phan_cong] CHECK CONSTRAINT [FK__phan_cong__id__06CD04F7]
GO
ALTER TABLE [dbo].[phieu_chi]  WITH CHECK ADD  CONSTRAINT [FK__phieu_chi__00200768] FOREIGN KEY([ma_nv], [ma_chi_nhanh])
REFERENCES [dbo].[nhan_vien] ([ma_nv], [ma_chi_nhanh])
GO
ALTER TABLE [dbo].[phieu_chi] CHECK CONSTRAINT [FK__phieu_chi__00200768]
GO
ALTER TABLE [dbo].[phieu_chi]  WITH CHECK ADD FOREIGN KEY([ma_loai_chi])
REFERENCES [dbo].[loai_hinh_chi] ([ma_loai_chi])
GO
ALTER TABLE [dbo].[phieu_nhap]  WITH CHECK ADD FOREIGN KEY([ma_ncc])
REFERENCES [dbo].[nha_cung_cap] ([ma_ncc])
GO
ALTER TABLE [dbo].[phieu_nhap]  WITH CHECK ADD  CONSTRAINT [FK__phieu_nhap__7F2BE32F] FOREIGN KEY([ma_nv], [ma_chi_nhanh])
REFERENCES [dbo].[nhan_vien] ([ma_nv], [ma_chi_nhanh])
GO
ALTER TABLE [dbo].[phieu_nhap] CHECK CONSTRAINT [FK__phieu_nhap__7F2BE32F]
GO
ALTER TABLE [dbo].[phieu_phu_thu]  WITH CHECK ADD  CONSTRAINT [FK__phieu_phu_thu__02FC7413] FOREIGN KEY([ma_nv], [ma_chi_nhanh])
REFERENCES [dbo].[nhan_vien] ([ma_nv], [ma_chi_nhanh])
GO
ALTER TABLE [dbo].[phieu_phu_thu] CHECK CONSTRAINT [FK__phieu_phu_thu__02FC7413]
GO
ALTER TABLE [dbo].[san_pham]  WITH CHECK ADD  CONSTRAINT [FK__san_pham__ma_loa__778AC167] FOREIGN KEY([ma_loai])
REFERENCES [dbo].[loai_san_pham] ([ma_loai])
GO
ALTER TABLE [dbo].[san_pham] CHECK CONSTRAINT [FK__san_pham__ma_loa__778AC167]
GO
ALTER TABLE [dbo].[dich_vu]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_2F5FCFF5_2C5C_4005_9944_F7B5B1C92B43] CHECK NOT FOR REPLICATION (([ma_dich_vu]>(4) AND [ma_dich_vu]<=(1004) OR [ma_dich_vu]>(1004) AND [ma_dich_vu]<=(2004)))
GO
ALTER TABLE [dbo].[dich_vu] CHECK CONSTRAINT [repl_identity_range_2F5FCFF5_2C5C_4005_9944_F7B5B1C92B43]
GO
ALTER TABLE [dbo].[khach_hang]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_E875C9DD_373C_45FC_96CA_DE65C03236BE] CHECK NOT FOR REPLICATION (([ma_kh]>(150) AND [ma_kh]<=(1150) OR [ma_kh]>(1150) AND [ma_kh]<=(2150)))
GO
ALTER TABLE [dbo].[khach_hang] CHECK CONSTRAINT [repl_identity_range_E875C9DD_373C_45FC_96CA_DE65C03236BE]
GO
ALTER TABLE [dbo].[phieu_chi]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_6BD570C5_6BF2_4B54_BA41_92B1BC50282F] CHECK NOT FOR REPLICATION (([so_phieu_chi]>(20) AND [so_phieu_chi]<=(1020) OR [so_phieu_chi]>(1020) AND [so_phieu_chi]<=(2020)))
GO
ALTER TABLE [dbo].[phieu_chi] CHECK CONSTRAINT [repl_identity_range_6BD570C5_6BF2_4B54_BA41_92B1BC50282F]
GO
ALTER TABLE [dbo].[san_pham]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_9BC5F295_5EC7_4022_8BA6_6D02C3445BC9] CHECK NOT FOR REPLICATION (([ma_sp]>(22) AND [ma_sp]<=(1022) OR [ma_sp]>(1022) AND [ma_sp]<=(2022)))
GO
ALTER TABLE [dbo].[san_pham] CHECK CONSTRAINT [repl_identity_range_9BC5F295_5EC7_4022_8BA6_6D02C3445BC9]
GO
/****** Object:  StoredProcedure [dbo].[sp_Back_Up_Doanh_Thu]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_Back_Up_Doanh_Thu]
AS
BEGIN
	DECLARE @LIST_CN TABLE (ma_chi_nhanh CHAR(4))
	INSERT INTO @LIST_CN VALUES('CN1'),('CN2'),('CN3')
	DECLARE @MA_CN CHAR(4)
	DECLARE c_CURSOR cursor for SELECT ma_chi_nhanh from @LIST_CN
	OPEN c_CURSOR
	FETCH NEXT FROM c_CURSOR INTO @MA_CN
	WHILE @@FETCH_STATUS = 0
	BEGIN
		DECLARE @TO_DAY DATE = CAST(GETDATE() as date)
		DECLARE @BAN_HANG FLOAT = (SELECT SUM(tong_tien) FROM hoa_don WHERE ma_chi_nhanh = @MA_CN and @TO_DAY = CAST(ngay_thanh_toan as date))
		DECLARE @CHI FLOAT = (SELECT SUM(tong_tien_chi) FROM phieu_chi WHERE ma_chi_nhanh = @MA_CN and @TO_DAY = CAST(ngay_chi as date))
		DECLARE @NHAP FLOAT = (SELECT SUM(tong_tien_nhap) FROM phieu_nhap WHERE ma_chi_nhanh = @MA_CN and @TO_DAY = CAST(ngay_nhap as date))
		DECLARE @PHU_THU FLOAT = (SELECT SUM(tong_phu_thu) FROM phieu_phu_thu WHERE ma_chi_nhanh = @MA_CN and @TO_DAY = CAST(ngay_thu as date))
		DECLARE @LOI_NHUAN FLOAT = @BAN_HANG - @CHI - @NHAP + @PHU_THU

		SET XACT_ABORT ON
		SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
		BEGIN TRANSACTION
		BEGIN TRY
			SELECT * FROM Backup_doanh_thu WITH(UPDLOCK)
			INSERT INTO Backup_doanh_thu(ngay, ban_hang,chi,nhap_nl, phu_thu,loi_nhuan, ma_chi_nhanh)
			VALUES (@TO_DAY, @BAN_HANG, @CHI, @NHAP, @PHU_THU, @LOI_NHUAN, @MA_CN)
			COMMIT TRAN
		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION
			DECLARE @ERR NVARCHAR(MAX) = N'Lỗi Back Up Doanh Thu! Chi tiết: ' + ERROR_MESSAGE()
			RAISERROR(@ERR,16,1)
		END CATCH
		FETCH NEXT FROM c_CURSOR INTO @MA_CN
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CTHD_Cua_Hoa_Don_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_CTHD_Cua_Hoa_Don_May_Tram]
    @SO_HD INT,
    @MA_SP INT = NULL
AS
BEGIN
    IF NOT EXISTS (SELECT so_hd
    from hoa_don
    where so_hd = @SO_HD)
        RAISERROR(N'Hoá Đơn với số [%d] không tồn tại! HOẶC bạn không có quyền xem chi tiết hoá đơn của Chi Nhánh khác!', 16, 1, @SO_HD)
    ELSE IF @MA_SP IS NULL
    BEGIN
        SELECT [so_hd]
        , SP.[ma_sp]
		, [ten_sp]
		, [hinh_anh]
        , [so_luong]
        , [don_gia_sp_hien_thoi]
        , [ma_nv]
        , [ma_chi_nhanh]
        , [ma_khu_vuc]
        FROM [CSDLPT_BTL].[dbo].[chi_tiet_hoa_don] CT JOIN (select ma_sp, ten_sp, hinh_anh from san_pham) SP on SP.ma_sp = CT.ma_sp
        WHERE so_hd = @SO_HD 
    END
    ELSE IF @MA_SP IS NOT NULL
    BEGIN
        IF NOT EXISTS (SELECT ma_sp
        from chi_tiet_hoa_don
        WHERE ma_sp = @MA_SP and so_hd = @SO_HD)
            RAISERROR(N'Không có CTHĐ nào của Hoá Đơn số [%d] có mã sản phẩm = [%d]', 16, 1, @SO_HD, @MA_SP)
        ELSE
        BEGIN
            SELECT [so_hd]
			 , SP.[ma_sp]
			, [ten_sp]
			, [hinh_anh]
            , [so_luong]
            , [don_gia_sp_hien_thoi]
            , [ma_nv]
            , [ma_chi_nhanh]
            , [ma_khu_vuc]
            FROM [CSDLPT_BTL].[dbo].[chi_tiet_hoa_don]  CT JOIN (select ma_sp, ten_sp, hinh_anh from san_pham) SP on SP.ma_sp = CT.ma_sp
            WHERE so_hd = @SO_HD and CT.ma_sp = @MA_SP
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Doi_Mat_Khau_Login]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Doi_Mat_Khau_Login] @LoginName nvarchar(max), @New_Password nvarchar(max), @Old_Password nvarchar(max), @Login_Actor nvarchar(max)
as
BEGIN
	--Check xem tài khoản login của người thực hiện khoá tài khoản có quyền security admin hay ko.
	IF (SELECT DBO.FN_Check_Role_Login(@Login_Actor)) = 1 or @Login_Actor = @LoginName
	 BEGIN
		IF exists (select sp.name, sl.password_hash from sys.server_principals sp left join sys.sql_logins sl on sp.principal_id = sl.principal_id
							where sp.type not in ('G', 'R'))
		BEGIN
			BEGIN TRY
				DECLARE @sql NVARCHAR(max)
				SET @sql = 'ALTER LOGIN ' + @LoginName + ' WITH PASSWORD = ' + '''' + @New_Password + '''' + ' OLD_PASSWORD = ' + '''' + @Old_Password + ''''
				EXEC(@sql )
			END TRY
			BEGIN CATCH
				DECLARE @Error NVARCHAR(max) = Error_Message()
				Raiserror(N'Thông tin login với mật khẩu cũ không tồn tại! Chi tiết: [%s]', 16,1,@Error)
			END CATCH
		END
	END
	ELSE
		Raiserror(N'Bạn không có quyền thực hiện các thao tác về tài khoản nhân viên!', 16, 1)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Khoa_Login]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Khoa_Login] @LoginName nvarchar(max), @Login_Actor nvarchar(max)
as
BEGIN
	--Check xem tài khoản login của người thực hiện khoá tài khoản có quyền security admin hay ko.
	IF (SELECT DBO.FN_Check_Role_Login(@Login_Actor)) = 1
	 BEGIN
		DECLARE @sql NVARCHAR(max)
		SET @sql = 'ALTER LOGIN [' + @LoginName + '] disable'
		EXEC(@sql )
	END
	ELSE
		Raiserror(N'Bạn không có quyền thực hiện các thao tác về tài khoản nhân viên!', 16, 1)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Lay_Danh_Sach_Khu_vuc_De_Thanh_Toan_Hoa_Don]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Lay_Danh_Sach_Khu_vuc_De_Thanh_Toan_Hoa_Don] @MA_CN char(4)
as
BEGIN
		IF NOT EXISTS (SELECT ma_chi_nhanh from chi_nhanh where	ma_chi_nhanh = @MA_CN)
			RAISERROR(N'Không tồn tại Chi Nhánh có mã [%s]',16,1,@MA_CN)
		ELSE
		BEGIN
			SELECT kv.ma_khu_vuc, kv.ten_khu_vuc, kv.phi_kv FROM (select ma_chi_nhanh, ma_khu_vuc FROM CN_KV WHERE ma_chi_nhanh = @MA_CN) ck
							join (select ma_khu_vuc, ten_khu_vuc, phi_kv FROM khu_vuc) kv  on kv.ma_khu_vuc = ck.ma_khu_vuc
		END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Lay_DS_Chuc_Vu_Khi_Them_Sua_Nhan_Vien]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----------------------------------------------------------------------------------------
----------------------------------STRORE PROCEDURE--------------------------------------
----------------------------------------------------------------------------------------
--LẤY DANH SÁCH CHỨC VỤ KHI TẠO NHÂN VIÊN
--CÔNG TY
--IT_Manager, Giám đốc, phó giám đốc => Tạo toàn bộ nhân viên
--Nhân sự công ty => Tạo toàn bộ thông tin nhân viên trừ Giám đốc, IT_Manager, Phó Giám đốc, NV parttime và THỦ KHO, THU NGÂN
--CHI NHÁNH
--Quản lý chi nhánh, Nhân sự chi nhánh ==> Tạo toàn bộ nhân viên làm parttime tại chi nhánh và THỦ KHO, THU NGÂN
CREATE PROCEDURE [dbo].[sp_Lay_DS_Chuc_Vu_Khi_Them_Sua_Nhan_Vien]
AS
BEGIN
    IF (SELECT COUNT(*) FROM DBO.fn_Lay_DS_Chuc_Vu_Khi_Them_Sua_Nhan_Vien_Theo_Quyen_Cua_User_Login()) = 0 
        RAISERROR(N'Bạn không có quyền thêm, thay đổi hay xoá thông tin nhân viên!', 16, 1)
    ELSE
        SELECT * FROM DBO.fn_Lay_DS_Chuc_Vu_Khi_Them_Sua_Nhan_Vien_Theo_Quyen_Cua_User_Login()
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Lay_DS_Danh_Muc_Quan_Ly_Theo_Login_Name]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Lay_DS_Danh_Muc_Quan_Ly_Theo_Login_Name] @LOGIN_NAME NVARCHAR(MAX)
AS
BEGIN
	DECLARE @CV NVARCHAR(MAX) = (SELECT ma_chuc_vu FROM nhan_vien Where ma_nv = @LOGIN_NAME)
	DECLARE @ROLE NVARCHAR(MAX) = (SELECT DBO.fn_Kiem_Tra_Va_Xuat_Role_Theo_Chuc_Vu(@CV))
	IF @ROLE in('BanGiamDoc', 'QuanLyChiNhanh', 'IT_Manager')
		SELECT url, url_title FROM Role_And_Url Where role_name = 'ALL'
	ELSE IF @ROLE = 'TongNhanSu'
		SELECT url, url_title FROM Role_And_Url Where role_name = 'TongNhanSu'
	ELSE IF @ROLE = 'KeToanTruong'
		SELECT url, url_title FROM Role_And_Url Where role_name = 'KeToanTruong'
	ELSE IF @ROLE = 'DinhHuongSanPham'
		SELECT url, url_title FROM Role_And_Url Where role_name = 'DinhHuongSanPham'
	ELSE IF @ROLE = 'ThuKho'
		SELECT url, url_title FROM Role_And_Url Where role_name = 'ThuKho'
	ELSE IF @ROLE = 'ThuNgan'
		SELECT url, url_title FROM Role_And_Url Where role_name = 'ThuNgan'
	ELSE IF @ROLE = 'NV_Parttime'
		SELECT url, url_title FROM Role_And_Url Where role_name = 'NV_Parttime'
	ELSE IF @ROLE = 'NhanSuChiNhanh'
		SELECT url, url_title FROM Role_And_Url Where role_name = 'NhanSuChiNhanh'
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Lay_DS_Database_Role]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Lay_DS_Database_Role] @Creator_Login_Role nvarchar(50)
AS
BEGIN
	IF(@Creator_Login_Role = 'BanGiamDoc' or @Creator_Login_Role = 'IT_Manager')
	BEGIN
		--Giám đốc thì có quyền Tạo Login, IT Manager cũng có tại toàn bộ hệ thống.
		select DISTINCT DP.name as db_role_name 
		FROM sys.database_role_members AS DRM JOIN 
		(select principal_id, name from sys.database_principals WHERE type = 'R' 
													and name not like 'db_%' 
													and name not like 'MSmerge_%' 
													and name not like 'public') AS DP
		ON DRM.role_principal_id = DP.principal_id 
		ORDER BY DP.name;
	END
	ELSE IF(@Creator_Login_Role = 'TongNhanSu')
	BEGIN
		--Tổng nhân sự có quyền tạo tài khoản đăng nhập cho các thành viên công ty!
		select DISTINCT DP.name as db_role_name 
		FROM sys.database_role_members AS DRM JOIN 
		(select principal_id, name from sys.database_principals WHERE type = 'R' 
													and name not like 'db_%' 
													and name not like 'MSmerge_%' 
													and name not like 'public'
													and name not like 'BanGiamDoc'
													and name not like 'IT_Manager'
													and name not like 'TongNhanSu'
													and name not like 'NV_Parttime'
													and name not like 'ThuKho'
													and name not like 'ThuNgan') AS DP
		ON DRM.role_principal_id = DP.principal_id 
		ORDER BY DP.name;
	END
	ELSE IF(@Creator_Login_Role = 'QuanLyChiNhanh')
	BEGIN
		select DISTINCT DP.name as db_role_name 
		FROM sys.database_role_members AS DRM JOIN 
		(select principal_id, name from sys.database_principals WHERE type = 'R' 
													and (name like 'NV_Parttime' 
														or name like 'ThuKho' 
														or name like 'ThuNgan')) AS DP
		ON DRM.role_principal_id = DP.principal_id 
		ORDER BY DP.name;
	END
	ELSE
	BEGIN
		Raiserror(N'Thông tin tài khoản có vấn đề. Hoặc bạn không có quyền tạo tài khoản đăng nhập! Vai trò của bạn: [%s] có thể không nằm trong cơ sở dữ liệu!', 16, 1, @Creator_Login_Role)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Lay_Thong_Tin_KH_Tu_Login]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Lay_Thong_Tin_KH_Tu_Login]
	@LoginName nvarchar(max)
as
	declare @UID int
	declare @SDT nvarchar(max) = (SELECT SUBSTRING(@LoginName,  4, len(@LoginName)))

	select @UID = uid
	from sys.sysusers
	where sid = SUSER_SID(@LoginName)
	declare @MAKH int = (select ma_kh from khach_hang where TRIM(sdt) = @SDT)
	declare @MACN char(4) = (select ma_chi_nhanh from khach_hang where TRIM(sdt) = @SDT)
	declare @TENCN nvarchar(max) = (select ten_chi_nhanh from (select ma_kh, ma_chi_nhanh from khach_hang where TRIM(sdt) = @SDT) kh join (select ma_chi_nhanh, ten_chi_nhanh from chi_nhanh) cn on cn.ma_chi_nhanh = kh.ma_chi_nhanh)
	declare @TENKH nvarchar(max) = (select ten_kh from khach_hang where TRIM(sdt) = @SDT)
	declare @TICH_LUY float = (select tich_luy from khach_hang where TRIM(sdt) = @SDT)
	declare @TG_Tham_Gia nvarchar(max) = CONCAT(CAST(DATEDIFF(day, (select ngay_tham_gia from khach_hang where TRIM(sdt) = @SDT), GETDATE()) as nvarchar(max)), N' ngày')
	declare @DIACHI nvarchar(max) = (select dia_chi from khach_hang where TRIM(sdt) = @SDT)
	declare @GIOITINH bit = (select gioi_tinh from khach_hang where TRIM(sdt) = @SDT)
	Declare @GIOITINH_STR nvarchar(3)
	IF(@GIOITINH = 0)
		set @GIOITINH_STR = N'Nữ'
	ELSE
		set @GIOITINH_STR = N'Nam'
	declare @NGSINH nvarchar(max) = CAST((select ngay_sinh from khach_hang where TRIM(sdt) = @SDT) as nvarchar(max))

	select ma_kh = @MAKH, 
	ma_chi_nhanh = @MACN, 
	ten_chi_nhanh = @TENCN, 
	ten_kh = @TENKH,
	vai_tro = name,
	sdt = @SDT,
	tich_luy = @TICH_LUY,
	thoi_gian_tham_gia = @TG_Tham_Gia,
	dia_chi = @DIACHI,
	gioi_tinh = @GIOITINH_STR, 
	ngay_sinh = @NGSINH
	from sys.sysusers
	where uid = (select top(1) groupuid from sys.sysmembers where memberuid = @UID and (name <> 'db_owner' or name <> 'db_sercurityadmin'))
GO
/****** Object:  StoredProcedure [dbo].[sp_Lay_Thong_Tin_NV_Tu_Login]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Lay_Thong_Tin_NV_Tu_Login]
	@LoginName nvarchar(max)
as
	declare @UID int
	declare @MaNV nvarchar(max)

	select @UID = uid, @MaNV = name
	from sys.sysusers
	where sid = SUSER_SID(@LoginName)

	declare @TENNV nvarchar(80) = (select ten_nv from nhan_vien where TRIM(ma_nv) = @MaNV)
	declare @TENCN nvarchar(80) = (select ten_chi_nhanh from (select ma_nv, ma_chi_nhanh from nhan_vien where TRIM(ma_nv) = @MaNV) nv join (select ma_chi_nhanh, ten_chi_nhanh from chi_nhanh) cn on cn.ma_chi_nhanh = nv.ma_chi_nhanh)
	declare @CHUCVU nvarchar(50) = (select ten_chuc_vu from (select ma_nv, ma_chuc_vu from nhan_vien where TRIM(ma_nv) = @MaNV) nv join (select ma_chuc_vu, ten_chuc_vu from chuc_vu) cv on nv.ma_chuc_vu = cv.ma_chuc_vu)
	declare @GIOITINH bit = (select gioi_tinh from nhan_vien where TRIM(ma_nv) = @MaNV)
	Declare @GIOITINH_STR nvarchar(3)
	IF(@GIOITINH = 0)
		set @GIOITINH_STR = N'Nữ'
	ELSE
		set @GIOITINH_STR = N'Nam'
	declare @AVATAR nvarchar(max) = (select anh_dai_dien from nhan_vien where TRIM(ma_nv) = @MaNV)
	declare @NGSINH nvarchar(20) = CAST((select ngay_sinh from nhan_vien where TRIM(ma_nv) = @MaNV) as nvarchar(20))
	declare @MACN char(4) = (select ma_chi_nhanh from nhan_vien where TRIM(ma_nv) = @MaNV)
	declare @MACV char(4) = (select ma_chuc_vu from nhan_vien where TRIM(ma_nv) = @MaNV)
	declare @THUVIEC bit = (select thu_viec from nhan_vien where TRIM(ma_nv) = @MaNV)
	Declare @THUVIEC_STR nvarchar(30)
	IF(@THUVIEC = 0)
		set @THUVIEC_STR = N'Đang thử việc'
	ELSE
		set @THUVIEC_STR = N'Làm chính thức'
	DECLARE @LOAINV nvarchar(50)
	IF(@MACV = 'BV' or @MACV = 'PC' or @MACV = 'PV')
		set @LOAINV = N'Nhân viên Part-time'
	ELSE
		set @LOAINV = N'Nhân viên Full-time'
	declare @CMND char(10) = (select cmnd from nhan_vien where TRIM(ma_nv) = @MaNV)
	declare @DIACHI nvarchar(100) = (select dia_chi_nv from nhan_vien where TRIM(ma_nv) = @MaNV)
	declare @SDT char(10) = (select sdt_nv from nhan_vien where TRIM(ma_nv) = @MaNV)
	declare @NGNHAPVIEC nvarchar(20) = CONCAT(CAST(DATEDIFF(day, (select ngay_nhap_viec from nhan_vien where TRIM(ma_nv) = @MaNV), GETDATE()) as nvarchar(20)), N' ngày')
	declare @HESO float = (select he_so_luong from nhan_vien where TRIM(ma_nv) = @MaNV)

	select ma_nv = @MaNV, 
	ten_nv = @TENNV, 
	ma_chi_nhanh = @MACN, 
	ten_chi_nhanh = @TENCN, 
	vai_tro = name, 
	anh_dai_dien = @AVATAR, 
	gioi_tinh = @GIOITINH_STR, 
	ngay_sinh = @NGSINH, 
	thu_viec = @THUVIEC_STR, 
	loai_nv = @LOAINV, 
	thoi_gian_lam_viec = @NGNHAPVIEC, 
	he_so_luong = @HESO, 
	sdt = @SDT, 
	cmnd = @CMND, 
	dia_chi = @DIACHI
	from sys.sysusers
	where uid = (select top(1) groupuid from sys.sysmembers where memberuid = @UID and (name <> 'db_owner' or name <> 'db_sercurityadmin'))
GO
/****** Object:  StoredProcedure [dbo].[sp_LOGIN_Lay_DataSource_Chi_Nhanh_Cua_Khach_Hang_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LOGIN_Lay_DataSource_Chi_Nhanh_Cua_Khach_Hang_May_Tram] @SDT nvarchar(max)
as
begin
	IF EXISTS (select sdt from khach_hang where sdt = @SDT 
				UNION select sdt from LINK0.CSDLPT_BTL.DBO.khach_hang where sdt = @SDT
				UNION select sdt from LINK1.CSDLPT_BTL.DBO.khach_hang where sdt = @SDT
				UNION select sdt from LINK2.CSDLPT_BTL.DBO.khach_hang where sdt = @SDT)
	BEGIN
		DECLARE @SV_Name nvarchar(max) = (select dbo.f_Ham_Tra_Ve_ServerName_Theo_SDT_Khach_Hang(@SDT))
		SELECT @SV_Name
		--Select ServerName thì trên client ngắt kết nối hiện tại
		--ĐỔi các thành phần của connection string như sau:
		-- Datasoure => thành @SV_Name
		-- Catalog vẫn là CSDLPT_BTL
		-- userID => SDT khách hàng nhập vào
		-- password => MK khách nhập vào
		-- Xong thực hiện try catch việc kết nối, get lỗi rồi throw ra, 
		-- lỗi chắc chắn là do thông tin đăng nhập sai hoặc không có. Nên báo lỗi là: Không tồn tại thông tin đăng nhập này!
	END
	ELSE 
		RAISERROR(N'Khách hàng có số điện thoại: [%s] không tồn tại trong CSDL!',16,1, @SDT)  
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Mo_Khoa_Login]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Mo_Khoa_Login] @LoginName nvarchar(max), @Login_Actor nvarchar(max)
as
BEGIN
	--Check xem tài khoản login của người thực hiện khoá tài khoản có quyền security admin hay ko.
	IF (SELECT DBO.FN_Check_Role_Login(@Login_Actor)) = 1
	 BEGIN
		DECLARE @sql NVARCHAR(max)
		SET @sql = 'ALTER LOGIN ' + @LoginName + ' ENABLE'
		EXEC(@sql )
	END
	ELSE
	Raiserror(N'Bạn không có quyền thực hiện các thao tác về tài khoản nhân viên!', 16, 1)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Ngung_Khuyen_Mai_Dich_Vu]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Ngung_Khuyen_Mai_Dich_Vu] @MaDV int
as
begin
	IF NOT EXISTS (SELECT ma_dich_vu from dich_vu WHERE ma_dich_vu = @MaDV)
		RAISERROR(N'Mã dịch vụ này không tồn tại!', 16,1)
	ELSE IF EXISTS (SELECT ma_dich_vu from dich_vu WHERE ma_dich_vu = @MaDV and don_gia_khuyen_mai is null)
		RAISERROR(N'Dịch vụ này hiện chưa có khuyến mãi!', 16,1)
	ELSE
	BEGIN
		begin transaction
		set transaction isolation level serializable
		BEGIN TRY
			update dich_vu with (updlock)
			set don_gia_khuyen_mai = null
			where ma_dich_vu = @MaDV
			COMMIT
		END TRY
		BEGIN CATCH
			DECLARE @ErrMsg VARCHAR(max)
			ROLLBACK TRAN
			SELECT @ErrMsg = N'Lỗi: ' + ERROR_MESSAGE()
			RAISERROR(@ErrMsg, 16, 1)
		END CATCH
	END
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Ngung_Khuyen_Mai_San_Pham]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Ngung_Khuyen_Mai_San_Pham] @MASP int
AS
BEGIN
    IF NOT EXISTS (SELECT ma_sp from san_pham where ma_sp = @MASP)
        RAISERROR(N'Sản phẩm với mã [%d] không tồn tại!', 16, 1, @MASP)
    ELSE IF EXISTS (SELECT ma_sp from san_pham where ma_sp = @MASP and don_gia_khuyen_mai is null)
    BEGIN
        DECLARE @TENSP NVARCHAR(80) = (SELECT ten_sp from san_pham where ma_sp = @MASP)
        RAISERROR(N'Sản phẩm: [Mã SP: %d, Tên SP: %s] chưa được khuyến mãi giá!', 16, 1, @MASP, @TENSP)
    END
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN TRANSACTION
            BEGIN TRY
                UPDATE san_pham WITH(updlock)
                set don_gia_khuyen_mai = null
                WHERE ma_sp = @MASP
                SELECT N'Ngừng khuyến mãi sản phẩm thành công!'
                COMMIT TRANSACTION
            END TRY
            BEGIN CATCH
                DECLARE @Err NVARCHAR(max) = ERROR_MESSAGE()
                ROLLBACK TRANSACTION
                RAISERROR (N'Lỗi => sp_Ngung_Khuyen_Mai_San_Pham: [%s]', 16, 1, @Err)
            END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Phan_cong_NV_Parttime_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Tạo phân công parttime
CREATE PROC [dbo].[sp_Phan_cong_NV_Parttime_May_Tram]
	@MA_NV NCHAR(12),
	@Ma_Ca TINYINT
AS
BEGIN
	IF NOT EXISTS (SELECT ma_nv from nhan_vien where ma_nv = @MA_NV)
	BEGIN
		RAISERROR(N'Nhân Viên có mã [%s] không tồn tại tại Chi Nhánh hiện tại!', 16, 1, @MA_NV)
	END
	ELSE IF NOT EXISTS (SELECT id from lich_lam_viec_parttime_dlcd where id = @Ma_Ca)
	BEGIN
		RAISERROR(N'Ca làm việc này không tồn tại!', 16, 1)
	END
	ELSE IF EXISTS (SELECT * from phan_cong where ma_nv = @MA_NV AND id = @Ma_Ca)
	BEGIN
		RAISERROR(N'Nhân viên [%s] đã được phân công vào ca này!', 16, 1, @MA_NV)
	END
	ELSE
	BEGIN
		DECLARE @CV CHAR(2), @MACN char(4)
		set @MACN = (Select ma_chi_nhanh from nhan_vien where ma_nv = @MA_NV)
		IF (Select is_part_time from (SELECT ma_chuc_vu FROM nhan_vien where ma_nv = @MA_NV) NV join (SELECT ma_chuc_vu, is_part_time FROM chuc_vu) CV on CV.ma_chuc_vu = NV.ma_chuc_vu) = 1
		BEGIN
			begin DISTRIBUTED transaction
			set transaction isolation level serializable
			BEGIN TRY
				SELECT * FROM phan_cong WITH(UPDLOCK)
				INSERT INTO phan_cong([ma_nv], [id], [ma_chi_nhanh])
				VALUES(@MA_NV, @Ma_Ca, @MACN)
				COMMIT TRANSACTION
				SELECT N'Phân công nhân viên thành công!'
			END TRY
			BEGIN CATCH
				ROLLBACK TRANSACTION
				DECLARE @ErrMsg VARCHAR(max) = N'Lỗi thêm phân công: ' + ERROR_MESSAGE()
				RAISERROR(@ErrMsg, 16, 1)
			END CATCH
		END
		ELSE
		BEGIN
			RAISERROR(N'Chỉ có thể phân công cho nhân viên Part-time!', 16, 1)
		END
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Phuc_Hoi_Chi_Nhanh]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[sp_Phuc_Hoi_Chi_Nhanh]
	@MaCN char(4)
AS
begin
	IF NOT EXISTS (SELECT ma_chi_nhanh from chi_nhanh WHERE ma_chi_nhanh = @MaCN)
		RAISERROR(N'Mã chi nhánh này không tồn tại!', 16,1)
	ELSE IF EXISTS (SELECT ma_chi_nhanh from chi_nhanh WHERE ma_chi_nhanh = @MaCN and be_deleted = 0)
		RAISERROR(N'Chi nhánh này chưa được xoá để phục hồi! Vui lòng thử lại!', 16,1)
	ELSE
	BEGIN
		begin transaction
		set transaction isolation level serializable
		BEGIN TRY
			update chi_nhanh with (updlock)
			set be_deleted = 0
			where ma_chi_nhanh = @MaCN
			COMMIT
		END TRY
		BEGIN CATCH
			DECLARE @ErrMsg VARCHAR(max)
			ROLLBACK
			SELECT @ErrMsg = N'Lỗi: ' + ERROR_MESSAGE()
			RAISERROR(@ErrMsg, 16, 1)
		END CATCH
	END
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Phuc_Hoi_Chuc_Vu]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Phuc_Hoi_Chuc_Vu] @MACV char(4)
as
BEGIN
    if not exists (SELECT ma_chuc_vu from chuc_vu where ma_chuc_vu = @MACV)
        RAISERROR(N'Chức vụ với Mã chức vụ: [%s] không tồn tại!', 16, 1, @MACV)
    ELSE IF exists (SELECT ma_chuc_vu from chuc_vu where ma_chuc_vu = @MACV and be_deleted = 0)
        RAISERROR(N'Chức vụ với Mã chức vụ: [%s] chưa hề được xoá! Vui lòng thử lại!', 16, 1, @MACV)
    ELSE
    BEGIN   
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN TRANSACTION
        BEGIN TRY
            UPDATE chuc_vu with (updlock)
            set be_deleted = 0
            WHERE ma_chuc_vu = @MACV
            COMMIT TRANSACTION
        END TRY
        BEGIN CATCH
            DECLARE @Err NVARCHAR(max) = ERROR_MESSAGE()
            RAISERROR (N'Lỗi: [%s]', 16, 1, @Err)
            ROLLBACK TRANSACTION
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Phuc_Hoi_Dich_Vu]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Phuc_Hoi_Dich_Vu]
	@MaDV int
AS
begin
	IF NOT EXISTS (SELECT ma_dich_vu from dich_vu WHERE ma_dich_vu = @MaDV)
		RAISERROR(N'Mã dịch vụ này không tồn tại!', 16,1)
	ELSE IF EXISTS (SELECT ma_dich_vu from dich_vu WHERE ma_dich_vu = @MaDV and be_deleted = 0)
		RAISERROR(N'Dịch vụ này chưa được xoá để phục hồi! Vui lòng thử lại!', 16,1)
	ELSE
	BEGIN
		begin transaction
		set transaction isolation level serializable
		BEGIN TRY
			update dich_vu with (updlock)
			set be_deleted = 0
			where ma_dich_vu = @MaDV
			COMMIT
		END TRY
		BEGIN CATCH
			DECLARE @ErrMsg VARCHAR(max)
			ROLLBACK TRAN
			SELECT @ErrMsg = N'Lỗi: ' + ERROR_MESSAGE()
			RAISERROR(@ErrMsg, 16, 1)
		END CATCH
	END
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Phuc_Hoi_Khach_Hang_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Phuc_Hoi_Khach_Hang_May_Tram]
    @MAKH int
AS
BEGIN		
	DECLARE @ERR NVARCHAR(MAX)

    IF EXISTS (select ma_kh from khach_hang where ma_kh = @MAKH)
	BEGIN
		IF (select be_deleted from khach_hang where ma_kh = @MAKH) = 0
			RAISERROR(N'Khách hàng với mã khách hàng: [%d] chưa hề được xoá để có thể phục hồi!', 16, 1, @MAKH)
		ELSE
		BEGIN
			set XACT_ABORT ON
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
			BEGIN TRY
				UPDATE khach_hang WITH(UPDLOCK)
				set be_deleted = 0
				WHERE ma_kh = @MAKH
				COMMIT TRANSACTION
				SELECT N'Phục hồi khách hàng thành công!'
			END TRY
			BEGIN CATCH
				ROLLBACK TRANSACTION
				SET @ERR = ERROR_MESSAGE()
				RAISERROR(N'Lỗi tại: sp_Phuc_Hoi_Khach_Hang_May_Tram => Chi tiết: [%s]', 16, 1, @ERR)
			END CATCH
		END
	END
	ELSE IF EXISTS (select ma_kh from LINK1.CSDLPT_BTL.DBO.khach_hang where ma_kh = @MAKH)
	BEGIN
		IF (select be_deleted from LINK1.CSDLPT_BTL.DBO.khach_hang where ma_kh = @MAKH) = 0
			RAISERROR(N'Khách hàng với mã khách hàng: [%d] được xoá để có thể phục hồi!', 16, 1, @MAKH)
		ELSE
		BEGIN
			set XACT_ABORT ON
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
			BEGIN TRY
				UPDATE LINK1.CSDLPT_BTL.DBO.khach_hang WITH(UPDLOCK)
				set be_deleted = 0
				WHERE ma_kh = @MAKH
				COMMIT TRANSACTION
				SELECT N'Phục hồi khách hàng thành công!'
			END TRY
			BEGIN CATCH
				ROLLBACK TRANSACTION
				SET @ERR = ERROR_MESSAGE()
				RAISERROR(N'Lỗi tại: sp_Phuc_Hoi_Khach_Hang_May_Tram => Chi tiết: [%s]', 16, 1, @ERR)
			END CATCH
		END
	END 
	ELSE IF EXISTS (select ma_kh from LINK2.CSDLPT_BTL.DBO.khach_hang where ma_kh = @MAKH)
	BEGIN
		IF (select be_deleted from LINK2.CSDLPT_BTL.DBO.khach_hang where ma_kh = @MAKH) = 0
			RAISERROR(N'Khách hàng với mã khách hàng: [%d] được xoá để có thể phục hồi!', 16, 1, @MAKH)
		ELSE
		BEGIN
			set XACT_ABORT ON
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
			BEGIN TRY
				UPDATE LINK2.CSDLPT_BTL.DBO.khach_hang WITH(UPDLOCK)
				set be_deleted = 0
				WHERE ma_kh = @MAKH
				COMMIT TRANSACTION
				SELECT N'Phục hồi khách hàng thành công!'
			END TRY
			BEGIN CATCH
				ROLLBACK TRANSACTION
				SET @ERR = ERROR_MESSAGE()
				RAISERROR(N'Lỗi tại: sp_Phuc_Hoi_Khach_Hang_May_Tram => Chi tiết: [%s]', 16, 1, @ERR)
			END CATCH
		END
	END
	ELSE
		RAISERROR(N'Khách hàng với mã khách hàng: [%d] không tồn tại! Vui lòng kiểm tra lại!', 16, 1, @MAKH)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Phuc_Hoi_Khu_Vuc]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Phuc_Hoi_Khu_Vuc] @MAKV char(1)
AS
BEGIN
    IF not exists (SELECT ma_khu_vuc from khu_vuc WHERE ma_khu_vuc = @MAKV)
        RAISERROR(N'Mã khu vực đã nhập: [%s] không tồn tại! Vui lòng thử lại!', 16, 1, @MAKV)
    ELSE IF exists (SELECT ma_khu_vuc from khu_vuc WHERE ma_khu_vuc = @MAKV and be_deleted = 0)
    BEGIN
        DECLARE @TENKV NVARCHAR(12) = (SELECT ten_khu_vuc from khu_vuc where ma_khu_vuc = @MAKV)
        RAISERROR(N'Khu vực bạn muốn xoá: [Mã khu vực: "%s", Tên khu vực: "%s"] chưa được xoá để có thể phục hồi! Vui lòng thử lại!', 16, 1, @MAKV, @TENKV)
    END
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN TRANSACTION
        BEGIN TRY
            UPDATE khu_vuc WITH(updlock)
            set be_deleted = 0
            where ma_khu_vuc = @MAKV
            COMMIT TRANSACTION
        END TRY
        BEGIN CATCH
            DECLARE @E NVARCHAR(max) = ERROR_MESSAGE()
            ROLLBACK TRANSACTION
            RAISERROR(N'Lỗi giao tác => SP: sp_Phu_Hoi_Khu_Vuc. Chi tiết: %s', 16, 1, @E)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Phuc_Hoi_Loai_Hinh_Chi]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Phuc_Hoi_Loai_Hinh_Chi]
	@MALC TINYINT
AS
BEGIN
	IF NOT EXISTS (select ma_loai_chi
	from loai_hinh_chi
	where ma_loai_chi = @MALC)
		RAISERROR(N'Loại hình chi với mã: [%d] không tồn tại!', 16, 1, @MALC)
    ELSE IF exists (select ma_loai_chi from loai_hinh_chi where ma_loai_chi = @MALC and be_deleted = 0)
        RAISERROR(N'Loại hình chi với mã: [%d] chưa được xoá!', 16, 1, @MALC)
	ELSE
	BEGIN
		set XACT_ABORT ON
		SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
		BEGIN TRANSACTION
		BEGIN TRY
            UPDATE loai_hinh_chi WITH(UPDLOCK)
            SET be_deleted = 0
            where ma_loai_chi = @MALC
			COMMIT TRANSACTION
			SELECT N'Phục hồi loại hình chi thành công!'
		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION
			DECLARE @ERR NVARCHAR(MAX) = ERROR_MESSAGE()
			RAISERROR(N'Lỗi tại: sp_Phuc_Hoi_Loai_Hinh_Chi => Chi tiết: [%s]', 16, 1, @ERR)
		END CATCH
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Phuc_Hoi_Loai_San_Pham]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_Phuc_Hoi_Loai_San_Pham]
	@Maloai tinyint
AS
begin
	IF NOT EXISTS (SELECT ma_loai from loai_san_pham WHERE ma_loai=@Maloai)
		RAISERROR(N'Loại sản phẩm này không tồn tại!', 16,1)
	ELSE IF EXISTS (SELECT ma_loai from loai_san_pham WHERE ma_loai = @Maloai and be_deleted = 0)
		RAISERROR(N'Loại sản phẩm này chưa hề được xoá! Hãy kiểm tra lại!', 16,1)
	ELSE
	BEGIN
		begin transaction
		set transaction isolation level serializable
		BEGIN TRY
			update loai_san_pham with (updlock)
			set be_deleted = 0
			where ma_loai = @Maloai
			COMMIT
		END TRY
		BEGIN CATCH
			DECLARE @ErrMsg VARCHAR(max)
			ROLLBACK
			SELECT @ErrMsg = N'Lỗi: ' + ERROR_MESSAGE()
			RAISERROR(@ErrMsg, 16, 1)
		END CATCH
	END
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Phuc_Hoi_Nguyen_Lieu]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Phuc_Hoi_Nguyen_Lieu]
	@Ma_nl smallint
AS
begin
	IF NOT EXISTS (SELECT ma_nl from nguyen_lieu WHERE ma_nl = @Ma_nl)
		RAISERROR(N'Mã nguyên liệu %s này không tồn tại!', 16, 1, @Ma_nl)
	ELSE IF EXISTS (SELECT ma_nl from nguyen_lieu WHERE ma_nl = @Ma_nl and be_deleted = 0)
		RAISERROR(N'Nguyên liệu này chưa được xoá nên không thể phục hồi!', 16,1)
	ELSE
	BEGIN
		begin transaction
		set transaction isolation level serializable
		BEGIN TRY 
			update nguyen_lieu with(updlock)
			set be_deleted = 0
			where ma_nl = @Ma_nl
			COMMIT
		END TRY
		BEGIN CATCH
			DECLARE @ErrMsg VARCHAR(max)
			ROLLBACK
			SELECT @ErrMsg = N'Lỗi: ' + ERROR_MESSAGE()
			RAISERROR(@ErrMsg, 16, 1)
		END CATCH
	END
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Phuc_Hoi_Nguyen_Lieu_Kho_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Phuc_Hoi_Nguyen_Lieu_Kho_May_Tram]   @MA_NLK SMALLINT
AS
BEGIN
    IF NOT EXISTS (SELECT ma_nl from nguyen_lieu_kho where ma_nl_kho = @MA_NLK)
        RAISERROR(N'Nguyên Liệu Kho với mã [%d] không tồn tại HOẶC bạn không có quyền thay đổi thông tin nguyên liệu kho ở Chi Nhánh khác!', 16, 1, @MA_NLK)
    ELSE IF (SELECT be_deleted from nguyen_lieu_kho where ma_nl_kho = @MA_NLK) = 0
        RAISERROR(N'Nguyên Liệu Kho vỡi mã [%d] chưa được xoá để có thể phục hồi!', 16, 1, @MA_NLK)
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            UPDATE nguyen_lieu_kho WITH(UPDLOCK)
            set be_deleted = 0
            WHERE ma_nl_kho = @MA_NLK
            COMMIT TRANSACTION
            SELECT N'Phục hồi Nguyên Liệu Kho thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(MAX) = N'Lỗi phục hồi Nguyên Liệu Kho! Chi tiết: ' + ERROR_MESSAGE();
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Phuc_Hoi_Nha_Cung_Cap_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Phuc_Hoi_Nha_Cung_Cap_May_Tram] @MA_NCC TINYINT
AS
BEGIN
    IF NOT EXISTS (SELECT ma_ncc from nha_cung_cap where ma_ncc = @MA_NCC)
        RAISERROR(N'Không tồn tại nhà cung cấp với mã: [%d]! Hoặc bạn không có quyền thay đổi thông tin nhà cung cấp ở chi nhánh khác!', 16, 1, @MA_NCC)
    ELSE IF (select be_deleted from nha_cung_cap where ma_ncc = @MA_NCC) = 0
        RAISERROR(N'Nhà cung cấp với mã: [%d] chưa được xoá để phục hồi!', 16, 1, @MA_NCC)
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN TRANSACTION
        BEGIN TRY
            UPDATE nha_cung_cap WITH(UPDLOCK)
            SET be_deleted = 0
            WHERE ma_ncc = @MA_NCC
            SELECT N'Phục hồi thông tin nhà cung cấp thành công!'
            COMMIT TRANSACTION
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(max) = N'Lỗi: Tại sp_Phuc_Hoi_Nha_Cung_Cap! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Phuc_Hoi_Nhan_Vien_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Phuc_Hoi_Nhan_Vien_May_Tram] @MA_NV CHAR(12)
AS
BEGIN
    IF NOT EXISTS (SELECT ma_nv from nhan_vien where ma_nv = @MA_NV)
        RAISERROR(N'Nhân viên với mã: [%s] không tồn tại HOẶC bạn không có quyền phục hồi thông tin nhân viên ở chi nhánh khác!', 16, 1, @MA_NV)
    ELSE IF (SELECT be_deleted from nhan_vien where ma_nv = @MA_NV) = 0
        RAISERROR(N'Thông tin nhân viên có mã [%s] chưa hề được xoá để có thể phục hồi!', 16, 1, @MA_NV)
    ELSE 
    BEGIN
        DECLARE @MA_CV NVARCHAR(MAX) = (SELECT ma_chuc_vu FROM nhan_vien where ma_nv = @MA_NV)
        DECLARE @TEN_CV NVARCHAR(MAX) = (SELECT ten_chuc_vu from chuc_vu WHERE ma_chuc_vu = @MA_CV)
        IF (SELECT DBO.fn_Check_Quyen_Them_Sua_Nhan_Vien_Theo_Chuc_Vu(@MA_CV)) = 0
            RAISERROR(N'Bạn không có quyền phục hồi thông tin nhân viên có Chức Vụ: [Mã chức vụ: "%s", Tên chức vụ: "%s"]!', 16, 1, @MA_CV, @TEN_CV)
        ELSE
        BEGIN
            SET XACT_ABORT ON
            SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
            BEGIN DISTRIBUTED TRANSACTION
            BEGIN TRY
                UPDATE nhan_vien WITH (UPDLOCK)
                set be_deleted = 0
                WHERE ma_nv = @MA_NV
                COMMIT TRANSACTION
                SELECT N'Phục hồi thông tin nhân viên thành công!'
            END TRY
            BEGIN CATCH
                ROLLBACK TRANSACTION
                DECLARE @ERROR NVARCHAR(MAX) = 'Lỗi: Phục hồi nhân viên. Chi tiết: ' + ERROR_MESSAGE()
                RAISERROR(@ERROR, 16,1)
            END CATCH
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Phuc_Hoi_San_Pham]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Phuc_Hoi_San_Pham] @MASP int
AS
BEGIN
    IF NOT EXISTS (SELECT ma_sp from san_pham where ma_sp = @MASP)
        RAISERROR(N'Sản phẩm với mã [%d] không tồn tại!', 16, 1, @MASP)
    ELSE IF EXISTS (SELECT ma_sp from san_pham where ma_sp = @MASP and be_deleted = 0)
    BEGIN
        DECLARE @TENSP NVARCHAR(80) = (SELECT ten_sp from san_pham where ma_sp = @MASP)
        RAISERROR(N'Sản phẩm: [Mã SP: %d, Tên SP: %s] chưa hề được xoá dể có thể phục hồi!', 16, 1, @MASP, @TENSP)
    END
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN TRANSACTION
            BEGIN TRY
                UPDATE san_pham WITH(updlock)
                set be_deleted = 0
                WHERE ma_sp = @MASP
                SELECT N'Xoá sản phẩm thành công!'
                COMMIT TRANSACTION
            END TRY
            BEGIN CATCH
                DECLARE @Err NVARCHAR(max) = ERROR_MESSAGE()
                ROLLBACK TRANSACTION
                RAISERROR (N'Lỗi => sp_Phuc_Hoi_San_Pham: [%s]', 16, 1, @Err)
            END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sua_ca_lam_viec]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Sua_ca_lam_viec]
	@Ngay_Trong_Tuan char(1),
	@Ca nchar(5),
	@Thuong_theo_ca float,
	@Ghi_chu nvarchar(50),
	@Nhan_Ca time,
	@Tan_Ca time
AS
BEGIN
	IF NOT EXISTS (SELECT *
	from lich_lam_viec_parttime_dlcd
	WHERE ngay_trong_tuan = @Ngay_Trong_Tuan AND ca_trong_ngay = @Ca)
	BEGIN
		RAISERROR(N'Lịch làm việc này không tồn tại!', 16,1)
		RETURN
	END
	ELSE
	BEGIN
		begin transaction
		set transaction isolation level serializable
		BEGIN TRY
			UPDATE lich_lam_viec_parttime_dlcd with (updlock)
			SET
				[thuong_theo_ca] = @Thuong_theo_ca,
				[ghi_chu] = @Ghi_chu,
				[gio_nhan_ca] = @Nhan_Ca,
				[gio_tan_ca] = @Tan_Ca
			WHERE ngay_trong_tuan = @Ngay_Trong_Tuan and ca_trong_ngay = @Ca
			COMMIT
		END TRY
		BEGIN CATCH
			DECLARE @ErrMsg VARCHAR(max)
			ROLLBACK TRAN
			SELECT @ErrMsg = 'Lỗi: ' + ERROR_MESSAGE()
			RAISERROR(@ErrMsg, 16, 1)
		END CATCH
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sua_Cong_Thuc_Cho_San_Pham]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Sua_Cong_Thuc_Cho_San_Pham] @MASP int,
                                                @MANL SMALLINT,
                                                @LUONG FLOAT
AS
BEGIN

    IF(@LUONG <= 0)
    BEGIN
        DECLARE @LUONG_STR NVARCHAR(20) = CAST(@LUONG AS nvarchar(20))
        RAISERROR(N'Lượng nguyên liệu trong công thức chế biến sản phẩm không thể <= 0! Lượng đã nhập: [%s]', 16, 1, @LUONG_STR)
    END
    ELSE IF NOT EXISTS (SELECT ma_sp, ma_nl from cong_thuc where ma_sp = @MASP and ma_nl = @MANL)
        RAISERROR(N'Mã nguyên liệu [%d] và mã sản phẩm đầu vào [%d] không tồn tại', 16, 1,@MANL, @MASP)
    ELSE
    BEGIN

        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN TRANSACTION
            BEGIN TRY
                UPDATE cong_thuc WITH(updlock)
                set luong = @LUONG
                where ma_nl = @MANL and ma_sp = @MASP
                SELECT (N'Thay đổi lượng công thức thành công!')
                COMMIT TRANSACTION
            END TRY
            BEGIN CATCH
                DECLARE @Err NVARCHAR(max) = ERROR_MESSAGE()
                ROLLBACK TRANSACTION
                RAISERROR(N'Lỗi: Thay đổi lượng công thức thất bại. [%s]', 16,1,@Err)
            END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sua_Chi_Nhanh]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Sua_Chi_Nhanh]
	@MaCN char(4),
	@TenCN nvarchar (100),
	@Diachi nvarchar (200),
	@SDT_CN char(10)
AS
begin
	IF not exists (SELECT ma_chi_nhanh FROM chi_nhanh WHERE ma_chi_nhanh = @MaCN)
		RAISERROR(N'Không tồn tại mã chi nhánh này: "%s"! Vui lòng thử lại!', 16, 1, @MaCN)
	else IF exists (SELECT ten_chi_nhanh FROM chi_nhanh WHERE ten_chi_nhanh = @TenCN and ma_chi_nhanh != @MaCN)
		RAISERROR(N'Đã có tên chi nhánh này: "%s"! Vui lòng thử lại!', 16, 1, @TenCN)
	else IF exists (SELECT dia_chi FROM chi_nhanh WHERE dia_chi = @Diachi and ma_chi_nhanh != @MaCN)
		RAISERROR(N'Đã địa chỉ chi nhánh này: "%s"! Vui lòng thử lại!', 16, 1, @Diachi)
	else IF exists (SELECT sdt_cn FROM chi_nhanh WHERE sdt_cn = @SDT_CN and ma_chi_nhanh != @MaCN)
		RAISERROR(N'Đã địa có số điện thoại chi nhánh này: "%s"! Vui lòng thử lại!', 16, 1, @SDT_CN)
	ELSE
	BEGIN
		begin transaction
		set transaction isolation level serializable
		BEGIN TRY
			update chi_nhanh with (updlock)
			set ten_chi_nhanh = @TenCN, dia_chi= @Diachi, sdt_cn = @SDT_CN
			where ma_chi_nhanh = @MaCN
			COMMIT
		END TRY
		BEGIN CATCH
			DECLARE @ErrMsg VARCHAR(max)
			ROLLBACK
			SELECT @ErrMsg = N'Lỗi: ' + ERROR_MESSAGE()
			RAISERROR(@ErrMsg, 16, 1)
		END CATCH
	END
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Sua_Chi_Tiet_Phieu_Nhap_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Sua_Chi_Tiet_Phieu_Nhap_May_Tram] @SO_PN INT,
                                                    @MA_NLK SMALLINT,
                                                    @SL FLOAT,
                                                    @DON_GIA FLOAT
AS
BEGIN
    IF NOT EXISTS (SELECT so_phieu_nhap FROM chi_tiet_phieu_nhap WHERE so_phieu_nhap = @SO_PN and ma_nl_kho = @MA_NLK)
        RAISERROR(N'Chi Tiết Phiếu Nhập với Số Phiếu Nhập = [%d] và Mã Nguyên Liệu Kho = [%d] không tồn tại! HOẶC bạn không có quyền thay đổi thông tin CTPN tại Chi Nhánh khác!', 16, 1, @SO_PN, @MA_NLK) 
    ELSE IF @SL <= 0
        RAISERROR(N'Số lượng của nguyên liệu nhập cần phải >= 0!', 16, 1)
    ELSE IF @DON_GIA < 0 
        RAISERROR(N'Đơn giá nguyên liệu >= 0!', 16, 1)
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            UPDATE chi_tiet_phieu_nhap WITH(UPDLOCK)
            SET so_luong = @SL,
                don_gia_nl = @DON_GIA
            WHERE so_phieu_nhap = @SO_PN and ma_nl_kho = @MA_NLK
            COMMIT TRANSACTION
            SELECT N'Sửa CTPN thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(MAX) = N'Lỗi sửa CTPN! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sua_Chuc_Vu]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Sua_Chuc_Vu] @MACV char(4),
                                @TENCV NVARCHAR(60),
                                @CTL bit,
                                @Luong float,
								@IS_PARTTIME BIT
AS
BEGIN
    if not exists (SELECT ma_chuc_vu from chuc_vu where ma_chuc_vu = @MACV)
        RAISERROR(N'Chức vụ với Mã chức vụ: [%s] không tồn tại!', 16, 1, @MACV)
    ELSE IF exists (SELECT ten_chuc_vu from chuc_vu where UPPER(ten_chuc_vu) like UPPER(@TENCV) and ma_chuc_vu != @MACV)
        RAISERROR(N'Tên chức vụ: [%s] đã tồn tại!', 16, 1, @TENCV)
    ELSE IF @Luong <= 0
    BEGIN
        DECLARE @Str_Luong nvarchar(20) = CAST(@Luong as nvarchar(20))
        RAISERROR(N'Lương chức vụ: [%s] không thể bé hơn hoặc bằng [0]!', 16, 1, @Str_Luong)
    END
    ELSE
    BEGIN   
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN TRANSACTION
        BEGIN TRY
            UPDATE chuc_vu with (updlock)
            set ten_chuc_vu = @TENCV,
                cach_tinh_luong = @CTL,
                luong = @Luong,
				is_part_time = @IS_PARTTIME
            WHERE ma_chuc_vu = @MACV
            COMMIT TRANSACTION
        END TRY
        BEGIN CATCH
            DECLARE @Err NVARCHAR(max) = ERROR_MESSAGE()
            RAISERROR (N'Lỗi: [%s]', 16, 1, @Err)
            ROLLBACK TRANSACTION
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sua_Dich_Vu]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Sua_Dich_Vu]
	@MaDV int,
	@TenDV nvarchar(50),
	@Dongiatheogio float,
	@Don_Gia_Khuyen_mai float = null
AS
begin
	IF NOT EXISTS (SELECT ma_dich_vu from dich_vu WHERE ma_dich_vu = @MaDV)
		RAISERROR(N'Mã dịch vụ này không tồn tại!', 16,1)
	ELSE IF exists (SELECT ten_dich_vu FROM dich_vu WHERE ten_dich_vu = @TenDV and ma_dich_vu != @MaDV)
		RAISERROR(N'Đã có loại dịch vụ này: "%s"! Vui lòng thử lại!', 16, 1, @TenDV)
	ELSE
	BEGIN
		begin transaction
		set transaction isolation level serializable
		BEGIN TRY
			update dich_vu with (updlock)
			set ten_dich_vu = @TenDV, don_gia_theo_gio = @Dongiatheogio, don_gia_khuyen_mai = ISNULL(@Don_Gia_Khuyen_mai, null)
			where ma_dich_vu = @MaDV
			COMMIT
		END TRY
		BEGIN CATCH
			DECLARE @ErrMsg VARCHAR(max)
			ROLLBACK TRAN
			SELECT @ErrMsg = N'Lỗi: ' + ERROR_MESSAGE()
			RAISERROR(@ErrMsg, 16, 1)
		END CATCH
	END
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Sua_Gia_Von_Nguyen_Lieu_Kho_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Sua_Gia_Von_Nguyen_Lieu_Kho_May_Tram]   @MA_NLK SMALLINT,
                                                @GIA_VON FLOAT
AS
BEGIN
    IF NOT EXISTS (SELECT ma_nl from nguyen_lieu_kho where ma_nl_kho = @MA_NLK)
        RAISERROR(N'Nguyên Liệu Kho với mã [%d] không tồn tại HOẶC bạn không có quyền thay đổi thông tin nguyên liệu kho ở Chi Nhánh khác!', 16, 1, @MA_NLK)
    ELSE IF @GIA_VON < 0
    BEGIN
        DECLARE @TO_STRING NVARCHAR(MAX) = CAST(@GIA_VON as nvarchar(max))
        RAISERROR(N'Giá vốn của nguyên liệu không thể < 0! Giá vốn nhập vào [%s] vnđ', 16, 1, @TO_STRING)
    END
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            UPDATE nguyen_lieu_kho WITH(UPDLOCK)
            set gia_von = @GIA_VON
            WHERE ma_nl_kho = @MA_NLK
            COMMIT TRANSACTION
            SELECT N'Sửa giá vốn Nguyên Liệu Kho thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(MAX) = N'Lỗi sửa giá vốn Nguyên Liệu Kho! Chi tiết: ' + ERROR_MESSAGE();
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sua_Hoa_Don_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_Sua_Hoa_Don_May_Tram]
    @SO_HD INT,
    @HINH_THUC_MUA BIT
AS
BEGIN
    IF NOT EXISTS (SELECT so_hd from hoa_don WHERE so_hd = @SO_HD)
        RAISERROR(N'Hoá Đơn với số [%d] không tồn tại tại chi nhánh này!', 16, 1, @SO_HD)
    -- ELSE IF @MA_KH IS NOT NULL
    -- BEGIN
    --     IF NOT EXISTS (SELECT ma_kh from khach_hang WHERE ma_kh = @MA_KH)
    --         RAISERROR(N'Khuyến Mãi với mã [%d] không tồn tại!', 16, 1, @MA_KH) 
    -- END 
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            UPDATE hoa_don WITH(UPDLOCK)
            set hinh_thuc_mua = @HINH_THUC_MUA
            -- ,
            --     ma_kh = @MA_KH
            WHERE so_hd = @SO_HD
            COMMIT TRANSACTION
            SELECT N'Sửa Hoá Đơn thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(MAX) = N'Lỗi sửa Hoá Đơn! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sua_Khach_Hang_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Sua_Khach_Hang_May_Tram]
    @MAKH int,
    @TENKH NVARCHAR(80),
    @SDT char(10),
    @GIOITINH BIT,
    @NGAYSINH DATE,
    @DIACHI NVARCHAR(80) = NULL
AS
BEGIN
	DECLARE @ERR NVARCHAR(MAX)
	DECLARE @NGSINH_STR nvarchar(max) = CAST(DATEDIFF(year,@NGAYSINH, GETDATE()) as nvarchar(max))

    IF EXISTS (select ma_kh from khach_hang where ma_kh = @MAKH)
	BEGIN
		IF EXISTS (SELECT SDT FROM khach_hang WHERE sdt = @SDT AND ma_kh != @MAKH)
			RAISERROR(N'Số điện thoại: [%s] đã được đăng ký bởi khách hàng khác tại chi nhánh hiện tại! Vui lòng kiểm tra lại thông tin!', 16, 1, @SDT)
		ELSE IF DATEDIFF(year,@NGAYSINH, GETDATE()) < 12
			RAISERROR(N'Chỉ có thể đăng ký cho khách hàng từ 12 tuổi trở lên! Tuổi hiện tại [%s]', 16, 1, @NGSINH_STR)
		ELSE
		BEGIN
			set XACT_ABORT ON
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
			BEGIN TRY
				UPDATE khach_hang WITH(UPDLOCK)
				set ten_kh = @TENKH,
					sdt = @SDT,
					dia_chi = @DIACHI,
					gioi_tinh = @GIOITINH,
					ngay_sinh = @NGAYSINH
				WHERE ma_kh = @MAKH
				COMMIT TRANSACTION
				SELECT N'Thay đổi thông tin khách hàng thành công!'
			END TRY
			BEGIN CATCH
				ROLLBACK TRANSACTION
				SET @ERR = ERROR_MESSAGE()
				RAISERROR(N'Lỗi tại: sp_Sua_Khach_Hang_May_Tram => Chi tiết: [%s]', 16, 1, @ERR)
			END CATCH
		END
    END
	ELSE IF EXISTS (select ma_kh from LINK1.CSDLPT_BTL.DBO.khach_hang where ma_kh = @MAKH)
	BEGIN
		IF EXISTS (SELECT SDT FROM LINK1.CSDLPT_BTL.DBO.khach_hang WHERE sdt = @SDT AND ma_kh != @MAKH)
			RAISERROR(N'Số điện thoại: [%s] đã được đăng ký bởi khách hàng khác tại chi nhánh khác! Vui lòng kiểm tra lại thông tin!', 16, 1, @SDT)
		ELSE IF DATEDIFF(year,@NGAYSINH, GETDATE()) < 12
			RAISERROR(N'Chỉ có thể đăng ký cho khách hàng từ 12 tuổi trở lên! Tuổi hiện tại [%s]', 16, 1, @NGSINH_STR)
		ELSE
		BEGIN
			set XACT_ABORT ON
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
			BEGIN TRY
				UPDATE LINK1.CSDLPT_BTL.DBO.khach_hang WITH(UPDLOCK)
				set ten_kh = @TENKH,
					sdt = @SDT,
					dia_chi = @DIACHI,
					gioi_tinh = @GIOITINH,
					ngay_sinh = @NGAYSINH
				WHERE ma_kh = @MAKH
				COMMIT TRANSACTION
				SELECT N'Thay đổi thông tin khách hàng thành công!'
			END TRY
			BEGIN CATCH
				ROLLBACK TRANSACTION
				SET @ERR = ERROR_MESSAGE()
				RAISERROR(N'Lỗi tại: sp_Sua_Khach_Hang_May_Tram => Chi tiết: [%s]', 16, 1, @ERR)
			END CATCH
		END
    END
	ELSE IF EXISTS (select ma_kh from LINK2.CSDLPT_BTL.DBO.khach_hang where ma_kh = @MAKH)
	BEGIN
		IF EXISTS (SELECT SDT FROM LINK2.CSDLPT_BTL.DBO.khach_hang WHERE sdt = @SDT AND ma_kh != @MAKH)
			RAISERROR(N'Số điện thoại: [%s] đã được đăng ký bởi khách hàng khác tại chi nhánh khác! Vui lòng kiểm tra lại thông tin!', 16, 1, @SDT)
		ELSE IF DATEDIFF(year,@NGAYSINH, GETDATE()) < 12
			RAISERROR(N'Chỉ có thể đăng ký cho khách hàng từ 12 tuổi trở lên! Tuổi hiện tại [%s]', 16, 1, @NGSINH_STR)
		ELSE
		BEGIN
			set XACT_ABORT ON
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
			BEGIN TRY
				UPDATE LINK2.CSDLPT_BTL.DBO.khach_hang WITH(UPDLOCK)
				set ten_kh = @TENKH,
					sdt = @SDT,
					dia_chi = @DIACHI,
					gioi_tinh = @GIOITINH,
					ngay_sinh = @NGAYSINH
				WHERE ma_kh = @MAKH
				COMMIT TRANSACTION
				SELECT N'Thay đổi thông tin khách hàng thành công!'
			END TRY
			BEGIN CATCH
				ROLLBACK TRANSACTION
				SET @ERR = ERROR_MESSAGE()
				RAISERROR(N'Lỗi tại: sp_Sua_Khach_Hang_May_Tram => Chi tiết: [%s]', 16, 1, @ERR)
			END CATCH
		END
    END
	ELSE
		RAISERROR(N'Mã khách hàng: [%d] không tồn tại! Vui lòng kiểm tra lại!', 16, 1, @MAKH)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sua_Khu_Vuc]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Sua_Khu_Vuc] @MAKV char(1),
                                @TENKV NVARCHAR(24),
                                @PHI_KV FLOAT
AS
BEGIN
    IF not exists (SELECT ma_khu_vuc from khu_vuc WHERE ma_khu_vuc = @MAKV)
        RAISERROR(N'Mã khu vực đã nhập: [%s] không tồn tại! Vui lòng thử lại!', 16, 1, @MAKV)
    ELSE IF exists (SELECT ten_khu_vuc from khu_vuc WHERE UPPER(ten_khu_vuc) = UPPER(@TENKV) and ma_khu_vuc != @MAKV)
        RAISERROR(N'Tên khu vực đã nhập: [%s] đã tồn tại! Vui lòng thử tên khác!', 16, 1, @TENKV)   
    ELSE IF @PHI_KV < 1
    BEGIN
        DECLARE @PHI_KV_STR NVARCHAR(20) = CAST(@PHI_KV as nvarchar(20))
        RAISERROR(N'Phí khu vực ít nhất phải >= 1! Bạn nhập: [%s]', 16, 1, @PHI_KV_STR)
    END
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN TRANSACTION
        BEGIN TRY
            UPDATE khu_vuc with(updlock)
            set ten_khu_vuc = @TENKV, phi_kv = @PHI_KV
            where ma_khu_vuc = @MAKV
            COMMIT TRANSACTION
        END TRY
        BEGIN CATCH
            DECLARE @E NVARCHAR(max) = ERROR_MESSAGE()
            ROLLBACK TRANSACTION
            RAISERROR(N'Lỗi giao tác => SP: sp_Sua_Khu_Vuc. Chi tiết: %s', 16, 1, @E)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sua_Khuyen_Mai]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_Sua_Khuyen_Mai]
	@MaKM tinyint,
	@Dieu_Kien float,
	@Muc_KM float
AS
begin
	IF NOT EXISTS (SELECT ma_khuyen_mai from khuyen_mai WHERE ma_khuyen_mai = @MaKM)
		RAISERROR(N'Khuyến mãi này không tồn tại!', 16,1)
	ELSE IF exists (select * from hoa_don where ma_khuyen_mai = @MaKM)
		RAISERROR(N'Khuyến mãi này đang tồn tại trong một số hoá đơn! Không thể thay đổi thông tin!', 16,1)
	ELSE
	BEGIN
		begin transaction
		set transaction isolation level serializable
		BEGIN TRY
			update khuyen_mai with (updlock)
			set dieu_kien_tich_luy = @Dieu_Kien, muc_khuyen_mai = @Muc_KM
			where ma_khuyen_mai = @MaKM
			COMMIT
		END TRY
		BEGIN CATCH
			DECLARE @ErrMsg VARCHAR(max)
			ROLLBACK
			SELECT @ErrMsg = N'Lỗi: ' + ERROR_MESSAGE()
			RAISERROR(@ErrMsg, 16, 1)
		END CATCH
	END
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Sua_Loai_San_Pham]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_Sua_Loai_San_Pham]
	@Maloai tinyint,
	@TenLoai nvarchar(50)
AS
begin
	IF NOT EXISTS (SELECT ma_loai from loai_san_pham WHERE ma_loai = @Maloai)
		RAISERROR(N'Loại sản phẩm này không tồn tại!', 16,1)
	ELSE
	BEGIN
		begin transaction
		set transaction isolation level serializable
		BEGIN TRY
			UPDATE loai_san_pham with (updlock)
			SET ten_loai = @TenLoai
			WHERE ma_loai = @Maloai
			COMMIT
		END TRY
		BEGIN CATCH
			DECLARE @ErrMsg VARCHAR(max)
			ROLLBACK
			SELECT @ErrMsg = N'Lỗi: ' + ERROR_MESSAGE()
			RAISERROR(@ErrMsg, 16, 1)
		END CATCH
	END
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Sua_Nguyen_Lieu]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Sua_Nguyen_Lieu]
	@Ma_ml smallint,
	@Ten_nl nvarchar(80),
	@Don_vi_do nvarchar(10)
AS
begin
	IF NOT EXISTS (SELECT ma_nl from nguyen_lieu WHERE ma_nl = @Ma_ml)
		RAISERROR(N'Mã nguyên liệu này không tồn tại!', 16,1)
	ELSE IF exists (SELECT ten_nl FROM nguyen_lieu WHERE ten_nl = @Ten_nl and ma_nl != @Ma_ml)
		RAISERROR(N'Đã có nguyên liệu này! Vui lòng thử lại với tên nguyên liệu khác!', 16, 1)
	ELSE
	BEGIN
		begin transaction
		set transaction isolation level serializable
		BEGIN TRY 
			update nguyen_lieu with (updlock)
			set ten_nl = @Ten_nl, don_vi_do = @Don_vi_do
			where ma_nl = @Ma_ml
			COMMIT
		END TRY
		BEGIN CATCH
			DECLARE @ErrMsg VARCHAR(max)
			ROLLBACK
			SELECT @ErrMsg = N'Lỗi: ' + ERROR_MESSAGE()
			RAISERROR(@ErrMsg, 16, 1)
		END CATCH
	END
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Sua_Nha_Cung_Cap_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Sua_Nha_Cung_Cap_May_Tram] 
                                    @MA_NCC TINYINT,
                                    @TEN_NCC NVARCHAR(100),
                                    @SDT_NCC CHAR(10),
                                    @DIACHI_NCC NVARCHAR(80),
                                    @MA_CN CHAR(4)
AS
BEGIN
    IF NOT EXISTS (SELECT ma_ncc from nha_cung_cap where ma_ncc = @MA_NCC)
        RAISERROR(N'Không tồn tại nhà cung cấp với mã: [%d]! Hoặc bạn không có quyền thay đổi thông tin nhà cung cấp ở chi nhánh khác!', 16, 1, @MA_NCC)
    ELSE IF NOT EXISTS (SELECT ma_chi_nhanh from chi_nhanh where ma_chi_nhanh = @MA_CN)
        RAISERROR(N'Chi nhánh với mã: [%s] không tồn tại! Hoặc bạn không có quyền thay đổi thông tin nhà cung cấp ở chi nhánh khác!', 16, 1, @MA_CN)
    ELSE IF EXISTS (SELECT sdt_ncc from nha_cung_cap where sdt_ncc = @SDT_NCC and ma_chi_nhanh = @MA_CN and ma_ncc <> @MA_NCC)
    BEGIN
        RAISERROR(N'Số điện thoại của nhà cung cấp: [%s] đã tồn tại cho chi nhánh có mã: [%s]!', 16, 1, @SDT_NCC, @MA_CN)
    END
    ELSE IF EXISTS (SELECT ten_ncc from nha_cung_cap where ten_ncc = @TEN_NCC and ma_chi_nhanh = @MA_CN and ma_ncc <> @MA_NCC)
    BEGIN
        RAISERROR(N'Tên của nhà cung cấp: [%s] đã tồn tại cho chi nhánh có mã: [%s]!', 16, 1, @TEN_NCC, @MA_CN)
    END
    ELSE IF EXISTS (SELECT dia_chi_ncc from nha_cung_cap where dia_chi_ncc = @DIACHI_NCC and ma_chi_nhanh = @MA_CN and ma_ncc <> @MA_NCC)
    BEGIN
        RAISERROR(N'Địa chỉ của nhà cung cấp: [%s] đã tồn tại cho chi nhánh có mã: [%s]!', 16, 1, @DIACHI_NCC, @MA_CN)
    END    
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN TRANSACTION
        BEGIN TRY
            UPDATE nha_cung_cap WITH(UPDLOCK)
            SET ten_ncc = @TEN_NCC,
                dia_chi_ncc = @DIACHI_NCC,
                sdt_ncc = @SDT_NCC
            WHERE ma_ncc = @MA_NCC and ma_chi_nhanh = @MA_CN
            COMMIT TRANSACTION
            SELECT N'Sửa thông tin nhà cung cấp với mã [' + @MA_NCC + '] thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(max) = N'Lỗi: Tại sp_Sua_Nha_Cung_Cap! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sua_Nhan_Vien_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Sua_Nhan_Vien_May_Tram] @MA_NV CHAR(12),
                                        @TEN_NV NVARCHAR(80),
                                        @CMND CHAR(12),
                                        @GIOI_TINH BIT,
                                        @NGAY_SINH DATE,
                                        @DIACHI_NV NVARCHAR(80),
                                        @SDT_NV CHAR(10),
                                        @IS_THU_VIEC BIT,
                                        @HE_SO_LUONG FLOAT,
                                        @AVATAR NVARCHAR(4000)
AS
BEGIN
    IF NOT EXISTS (SELECT ma_nv from nhan_vien WHERE ma_nv = @MA_NV)
        RAISERROR(N'Thông tin nhân viên có mã nhân viên: [%s] không tồn tại! Hoặc bạn không có quyền thay đổi thông tin nhân viên của chi nhánh khác!',16,1, @MA_NV)
    ELSE
    BEGIN
        DECLARE @MA_CN CHAR(4) = (SELECT ma_chi_nhanh FROM nhan_vien WHERE ma_nv = @MA_NV)
        DECLARE @MA_CV CHAR(4) = (SELECT ma_chuc_vu FROM nhan_vien WHERE ma_nv = @MA_NV)

        IF (SELECT DBO.fn_Check_Quyen_Them_Sua_Nhan_Vien_Theo_Chuc_Vu(@MA_CV)) = 0
        BEGIN
            DECLARE @TEN_CV NVARCHAR(MAX) = (SELECT ten_chuc_vu FROM chuc_vu WHERE ma_chuc_vu = @MA_CV)
            RAISERROR(N'Bạn không có quyền thay đổi thông tin nhân viên có chức vụ: [Mã chức vụ = "%s", Tên chức vụ = "%s"]!',16,1, @MA_CV, @TEN_CV)
        END
        ELSE
        BEGIN
            DECLARE @TO_STRING NVARCHAR(max)
            IF EXISTS (SELECT cmnd from LINK0.CSDLPT_BTL.DBO.nhan_vien where ma_nv <> @MA_NV and cmnd = @CMND and ma_chi_nhanh = @MA_CN and ma_chuc_vu = @MA_CV)
            BEGIN
                RAISERROR(N'Đã tồn tại nhân viên có số CMND: [%s] tại Chi Nhánh [%s] và có Chức Vụ [%s] như đã thêm!', 16, 1, @CMND, @MA_CN, @MA_CV)
            END
            ELSE IF EXISTS (SELECT sdt_nv from LINK0.CSDLPT_BTL.DBO.nhan_vien where ma_nv <> @MA_NV and sdt_nv = @SDT_NV and ma_chi_nhanh = @MA_CN and ma_chuc_vu = @MA_CV)
            BEGIN
                RAISERROR(N'Đã tồn tại nhân viên có số điện thoại: [%s] tại Chi Nhánh [%s] và Chức Vụ [%s]!', 16, 1, @SDT_NV, @MA_CN, @MA_CV)
            END
            ELSE IF DATEDIFF(YEAR, @NGAY_SINH, GETDATE()) < 16
            BEGIN
                SET @TO_STRING = CAST(@NGAY_SINH as nvarchar(max))
                RAISERROR(N'Tuổi nhân viên KHÔNG ĐƯỢC bé hơn 16! Ngày sinh nhập vào: [%s]', 16, 1, @TO_STRING)
            END
            ELSE IF @HE_SO_LUONG < 1
            BEGIN
                SET @TO_STRING = CAST(@HE_SO_LUONG as nvarchar(max))
                RAISERROR(N'Hệ số lương đã nhập: [%s] < 1.0! Hệ số lương phải >= 1.0', 16,1,@TO_STRING)
            END
            ELSE
            BEGIN
                SET XACT_ABORT ON
                SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
                BEGIN DISTRIBUTED TRANSACTION
                BEGIN TRY
                    UPDATE nhan_vien WITH (UPDLOCK)
                    set     ten_nv = @TEN_NV,
                            cmnd = @CMND,
                            gioi_tinh = @GIOI_TINH,
                            ngay_sinh = @NGAY_SINH,
                            dia_chi_nv = @DIACHI_NV,
                            sdt_nv = @SDT_NV,
                            thu_viec = @IS_THU_VIEC,
                            he_so_luong = @HE_SO_LUONG,
                            anh_dai_dien = @AVATAR
                    WHERE ma_nv = @MA_NV
                    COMMIT TRANSACTION
                    SELECT N'Thay đổi thông tin nhân viên thành công!'
                END TRY
                BEGIN CATCH
                    ROLLBACK TRANSACTION
                    DECLARE @ERROR NVARCHAR(MAX) = 'Lỗi: ' + ERROR_MESSAGE()
                    RAISERROR(@ERROR, 16,1)
                END CATCH
            END
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sua_Phieu_Chi_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Sua_Phieu_Chi_May_Tram] @SO_PC INT,
                                            @TONG_CHI FLOAT
AS
BEGIN
    DECLARE @TO_STRING NVARCHAR(max)
    IF NOT EXISTS (SELECT so_phieu_chi from phieu_chi WHERE so_phieu_chi = @SO_PC)
        RAISERROR(N'Phiếu Chi với số phiếu [%d] không tồn tại!', 16, 1, @SO_PC) 
    ELSE IF @TONG_CHI < 0
    BEGIN
        SET @TO_STRING = CAST(@TONG_CHI as nvarchar(max))
        RAISERROR(N'Tổng tiền chi không thể < 0! Tổng tiền chi nhập vào: [%s]', 16, 1, @TO_STRING)
    END
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            UPDATE phieu_chi WITH(UPDLOCK)
            SET tong_tien_chi = @TONG_CHI
            WHERE so_phieu_chi = @SO_PC
            COMMIT TRANSACTION
            SELECT N'Sửa Phiếu Chi thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(MAX) = N'Lỗi sửa Phiếu Chi! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sua_San_Pham]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Sua_San_Pham] @MASP int, 
                                @TENSP NVARCHAR(80),
                                @DG FLOAT,
                                @GHICHU NVARCHAR(500),
                                @MALOAI int,
                                @HINHANH NVARCHAR(4000),
                                @KM FLOAT
AS
BEGIN
    DECLARE @DG_STR NVARCHAR(20)
    DECLARE @KM_STR NVARCHAR(20)
    DECLARE @MALOAI_STR NVARCHAR(20)

    IF not exists (select ma_loai from loai_san_pham where ma_loai = @MALOAI)
    BEGIN
        set @MALOAI_STR = CAST(@MALOAI as nvarchar(20))
        RAISERROR(N'Lỗi => sp_Them_San_Pham: Mã loại sản phẩm [%s] không tồn tại! Vui lòng thử lại bằng mã khác!',16,1, @MALOAI_STR)
    END
    ELSE IF EXISTS (SELECT ten_sp from san_pham where UPPER(ten_sp) = UPPER(@TENSP) and ma_sp != @MASP)
        RAISERROR(N'Lỗi => sp_Them_San_Pham: Tên sản phẩm [%s] đã tồn tại! Vui lòng thử lại bằng tên khác!',16,1,@TENSP)
    ELSE IF @DG < 0
    BEGIN
        set @DG_STR = CAST(@DG as NVARCHAR(20))
        RAISERROR(N'Lỗi => sp_Them_San_Pham: Đơn giá sản phẩm [%s] không thể < 0 !',16,1,@DG_STR)
    END
    ELSE IF @KM >= @DG
    BEGIN
        set @KM_STR = CAST(@KM as NVARCHAR(20))
        set @DG_STR = CAST(@DG as NVARCHAR(20))
        RAISERROR(N'Lỗi => sp_Them_San_Pham: Đơn giá khuyến mãi [%s] không thể >= Đơn giá sản phẩm [%s] !',16,1,@KM_STR, @DG_STR)
    END
    ELSE IF @KM < 0
    BEGIN
        set @KM_STR = CAST(@KM as NVARCHAR(20))
        RAISERROR(N'Lỗi => sp_Them_San_Pham: Đơn giá khuyến mãi [%s] không thể < 0 !',16,1,@KM_STR)
    END
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN TRANSACTION
            BEGIN TRY
                UPDATE san_pham WITH(updlock)
                set ten_sp = @TENSP,
                    don_gia_theo_sp = @DG,
                    ghi_chu_cong_thuc = @GHICHU,
                    ma_loai = @MALOAI,
                    hinh_anh = @HINHANH,
                    don_gia_khuyen_mai = @KM
                WHERE ma_sp = @MASP
                SELECT N'Thay đổi thông tin sản phẩm thành công!'
                COMMIT TRANSACTION
            END TRY
            BEGIN CATCH
                DECLARE @Err NVARCHAR(max) = ERROR_MESSAGE()
                ROLLBACK TRANSACTION
                RAISERROR (N'Lỗi => sp_Sua_San_Pham: [%s]', 16, 1, @Err)
            END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sua_SL_Chi_Tiet_Phu_Thu_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Sua_SL_Chi_Tiet_Phu_Thu_May_Tram] @SO_PPT int, 
                                        @MA_DV int, 
                                        @SL FLOAT, 
                                        @MA_NV char(12), 
                                        @MA_CN char(4)
AS
BEGIN
    IF @SL <= 0
        RAISERROR(N'Số lượng dịch vụ không thể <= 0!', 16, 1)
    ELSE IF NOT EXISTS (SELECT ma_chi_nhanh FROM chi_nhanh WHERE ma_chi_nhanh = @MA_CN)
        RAISERROR(N'Chi Nhánh với mã [%s] không tồn tại HOẶC bạn không có quyền thêm Chi Tiết Phụ Thu cho chi nhánh khác!', 16, 1, @MA_CN)
    ELSE IF NOT EXISTS (SELECT ma_nv FROM nhan_vien WHERE ma_nv = @MA_NV)
        RAISERROR(N'Nhân Viên với mã [%s] không tồn tại HOẶC bạn không có quyền thêm Chi Tiết Phụ Thu!', 16, 1, @MA_NV)
    ELSE IF NOT EXISTS (SELECT so_phieu_thu FROM phieu_phu_thu WHERE so_phieu_thu = @SO_PPT)
        RAISERROR(N'Phiếu Phụ Thu với số phiếu [%d] không tồn tại HOẶC bạn không có quyền thêm Chi Tiết Phụ Thu cho chi nhánh khác!', 16, 1, @SO_PPT) 
    ELSE IF NOT EXISTS (SELECT ma_dich_vu FROM dich_vu WHERE ma_dich_vu = @MA_DV)
        RAISERROR(N'Dịch Vụ với mã [%d] không tồn tại!', 16, 1, @MA_DV) 
    ELSE
    BEGIN     
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            UPDATE chi_tiet_phu_thu WITH(UPDLOCK)
            set so_luong = @SL
            WHERE so_phieu_thu = @SO_PPT and ma_dich_vu = @MA_DV and ma_nv = @Ma_NV and ma_chi_nhanh = @MA_CN 
            COMMIT TRANSACTION
            SELECT N'Sửa Chi Tiết Phụ Thu thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(MAX) = N'Lỗi sửa CTPT! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sua_So_Luong_San_Pham_CTHD_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Sua_So_Luong_San_Pham_CTHD_May_Tram]
    @SO_HD int,
    @MA_SP int,
    @SO_LUONG TINYINT
AS
BEGIN
    IF NOT EXISTS (Select so_hd
    from chi_tiet_hoa_don
    Where so_hd = @SO_HD and ma_sp = @MA_SP)
        RAISERROR(N'Hoá Đơn với số [%d] không tồn chi tiết hoá đơn với mã sản phẩm [%d]! HOẶC bạn không có quyền thay đổi CTHĐ cho chi nhánh khác!', 16, 1, @SO_HD, @MA_SP)
    ELSE IF @SO_LUONG <= 0
        RAISERROR(N'Số lượng sản phẩm không thể <= 0! Số lượng nhập vào: [%d]', 16, 1, @SO_LUONG)
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            UPDATE chi_tiet_hoa_don WITH(UPDLOCK)
            set so_luong = @SO_LUONG
            WHERE so_hd = @SO_HD and ma_sp = @MA_SP
            COMMIT TRANSACTION
            SELECT N'Sửa CTHĐ thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(MAX) = N'Lỗi sửa CTHĐ! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Thanh_Toan_Hoa_Don_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_Thanh_Toan_Hoa_Don_May_Tram]
    @SO_HD INT
AS
BEGIN
    IF NOT EXISTS (SELECT so_hd from hoa_don WHERE so_hd = @SO_HD)
        RAISERROR(N'Hoá Đơn với số [%d] không tồn tại tại chi nhánh này!', 16, 1, @SO_HD)
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            UPDATE hoa_don WITH(UPDLOCK)
            set thanh_toan = 1
            WHERE so_hd = @SO_HD
            COMMIT TRANSACTION
            SELECT N'Thanh toán Hoá Đơn thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(MAX) = N'Lỗi thanh toán Hoá Đơn! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Them_ca_lam_viec]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Them_ca_lam_viec]
	@Ngay_Trong_Tuan char(1),
	@Ca nchar(5),
	@Thuong_theo_ca float,
	@Ghi_chu nvarchar(50),
	@Nhan_Ca time,
	@Tan_Ca time
as
begin
	IF exists (SELECT *
	FROM lich_lam_viec_parttime_dlcd
	WHERE ngay_trong_tuan = @Ngay_Trong_Tuan AND ca_trong_ngay = @Ca)
	BEGIN
		RAISERROR(N'Ca trong ngày đã nhập đã tồn tại! Vui lòng thử lại!', 16, 1)
		RETURN
	END
	ELSE
	BEGIN
		begin transaction
		set transaction isolation level serializable
		select ngay_trong_tuan
		from lich_lam_viec_parttime_dlcd with (updlock)
		BEGIN TRY
			DECLARE @Count tinyint = 1
			while exists(select id from lich_lam_viec_parttime_dlcd where id = @Count)
			BEGIN
				set @Count = @Count + 1
			END
			INSERT INTO lich_lam_viec_parttime_dlcd
			(
				[id],[ngay_trong_tuan], [ca_trong_ngay], [thuong_theo_ca], [ghi_chu], [gio_nhan_ca], [gio_tan_ca]
			)
		VALUES
			(
				@Count, @Ngay_Trong_Tuan, @Ca, @Thuong_theo_ca, @Ghi_chu, @Nhan_Ca, @Tan_Ca
			)
			COMMIT
		END TRY
		BEGIN CATCH
			DECLARE @ErrMsg VARCHAR(max)
			ROLLBACK TRAN
			SELECT @ErrMsg = N'Lỗi: ' + ERROR_MESSAGE()
			RAISERROR(@ErrMsg, 16, 1)
		END CATCH
	END
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Them_Cong_Thuc_Cho_San_Pham]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Them_Cong_Thuc_Cho_San_Pham] @MASP int,
                                                @MANL SMALLINT,
                                                @LUONG FLOAT
AS
BEGIN

    IF(@LUONG <= 0)
    BEGIN
        DECLARE @LUONG_STR NVARCHAR(20) = CAST(@LUONG AS nvarchar(20))
        RAISERROR(N'Lượng nguyên liệu trong công thức chế biến sản phẩm không thể <= 0! Lượng đã nhập: [%s]', 16, 1, @LUONG_STR)
    END
    ELSE IF NOT EXISTS (SELECT ma_sp from san_pham where ma_sp = @MASP)
        RAISERROR(N'Sản phẩm với mã sản phẩm đầu vào [%d] không tồn tại', 16, 1, @MASP)
    ELSE IF NOT EXISTS (SELECT ma_nl from nguyen_lieu where ma_nl = @MANL)
        RAISERROR(N'Nguyên liệu với mã nguyên liệu đầu vào [%d] không tồn tại', 16, 1, @MANL)
    ELSE
    BEGIN

        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN TRANSACTION
            BEGIN TRY
                SELECT * from cong_thuc with(updlock)
                INSERT INTO cong_thuc(ma_sp, ma_nl, luong) VALUES(@MASP, @MANL, @LUONG)
                SELECT (N'Thêm công thức cho sản phẩm thành công!')
                COMMIT TRANSACTION
            END TRY
            BEGIN CATCH
                DECLARE @Err NVARCHAR(max) = ERROR_MESSAGE()
                ROLLBACK TRANSACTION
                RAISERROR(N'Lỗi: Thêm công thức thất bại. [%s]', 16,1,@Err)
            END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Them_Chi_Nhanh]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Them_Chi_Nhanh]
	@MaCN char(4),
	@TenCN nvarchar (100),
	@Diachi nvarchar (200),
	@SDT_CN char(10)
AS
begin
	IF exists (SELECT ma_chi_nhanh FROM chi_nhanh WHERE ma_chi_nhanh = @MaCN)
		RAISERROR(N'Đã có mã chi nhánh này: "%s"! Vui lòng thử lại!', 16, 1, @MaCN)
	else IF exists (SELECT ten_chi_nhanh FROM chi_nhanh WHERE ten_chi_nhanh = @TenCN and ma_chi_nhanh != @MaCN)
		RAISERROR(N'Đã có tên chi nhánh này: "%s"! Vui lòng thử lại!', 16, 1, @TenCN)
	else IF exists (SELECT dia_chi FROM chi_nhanh WHERE dia_chi = @Diachi and ma_chi_nhanh != @MaCN)
		RAISERROR(N'Đã có địa chỉ chi nhánh này: "%s"! Vui lòng thử lại!', 16, 1, @Diachi)
	else IF exists (SELECT sdt_cn FROM chi_nhanh WHERE sdt_cn = @SDT_CN and ma_chi_nhanh != @MaCN)
		RAISERROR(N'Đã địa có số điện thoại chi nhánh này: "%s"! Vui lòng thử lại!', 16, 1, @SDT_CN)
	ELSE
	BEGIN
		begin transaction
		set transaction isolation level serializable
		BEGIN TRY
			select ma_chi_nhanh
			from chi_nhanh with (updlock)
			insert into chi_nhanh(ma_chi_nhanh,ten_chi_nhanh,dia_chi,sdt_cn,be_deleted)
			values(@MaCN,@TenCN,@Diachi,@SDT_CN, 0)
			COMMIT
		END TRY
		BEGIN CATCH
			DECLARE @ErrMsg VARCHAR(max)
			ROLLBACK
			SELECT @ErrMsg = N'Lỗi: ' + ERROR_MESSAGE()
			RAISERROR(@ErrMsg, 16, 1)
		END CATCH
	END
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Them_Chi_Tiet_Hoa_Don_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------STORED PROCEDURE
CREATE PROCEDURE [dbo].[sp_Them_Chi_Tiet_Hoa_Don_May_Tram]
    @SO_HD int,
    @MA_SP int,
    @SO_LUONG TINYINT
AS
BEGIN
    IF NOT EXISTS (Select so_hd
    from hoa_don
    Where so_hd = @SO_HD)
        RAISERROR(N'Hoá Đơn với số [%d] không tồn tại! HOẶC bạn không có quyền thêm CTHĐ cho chi nhánh khác!', 16, 1, @SO_HD)
    ELSE IF NOT EXISTS (SELECT ma_sp
    from san_pham
    where ma_sp = @MA_SP)
        RAISERROR(N'Sản Phẩm với mã [%d] không tồn tại!', 16, 1, @MA_SP)
    ELSE IF @SO_LUONG <= 0
        RAISERROR(N'Số lượng sản phẩm không thể <= 0! Số lượng nhập vào: [%d]', 16, 1, @SO_LUONG)
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            SELECT *
        From chi_tiet_hoa_don WITH(UPDLOCK)
            INSERT INTO chi_tiet_hoa_don
            (so_hd, ma_sp, so_luong)
        VALUES(@SO_HD, @MA_SP, @SO_LUONG)
            COMMIT TRANSACTION
            SELECT N'Thêm CTHĐ thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(MAX) = N'Lỗi thêm CTHĐ! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Them_Chi_Tiet_Phieu_Nhap_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------STORE PROCEDURE
CREATE PROC [dbo].[sp_Them_Chi_Tiet_Phieu_Nhap_May_Tram]    @SO_PN INT,
                                                    @MA_NLK SMALLINT,
                                                    @MA_NCC TINYINT,
                                                    @MA_NV NCHAR(12),
                                                    @SL FLOAT,
                                                    @DON_GIA FLOAT
AS
BEGIN
    DECLARE @MA_CN CHAR(4) = (SELECT ma_chi_nhanh from nhan_vien where ma_nv = @MA_NV)
    IF NOT EXISTS (SELECT so_phieu_nhap FROM phieu_nhap WHERE so_phieu_nhap = @SO_PN)
        RAISERROR(N'Phiếu Nhập với số phiếu [%d] không tồn tại! HOẶC bạn không có quyền thay đổi thông tin phiếu nhập ở Chi Nhánh khác!', 16, 1, @SO_PN)
    ELSE IF NOT EXISTS (SELECT ma_ncc from nha_cung_cap where ma_ncc = @MA_NCC)
        RAISERROR(N'Nhà Cung Cấp với mã [%d] không tồn tại!', 16, 1, @MA_NCC)
    ELSE IF NOT EXISTS (SELECT ma_nv from nhan_vien where ma_nv = @MA_NV)
        RAISERROR(N'Nhân Viên thực hiện lập phiếu nhập với mã [%s] không tồn tại! HOẶC bạn không có quyền tham gia nghiệp vụ ở Chi Nhánh khác', 16, 1, @MA_NV) 
    ELSE IF NOT EXISTS (SELECT ma_chi_nhanh from chi_nhanh where ma_chi_nhanh = @MA_CN)
        RAISERROR(N'Chi Nhánh với mã [%s] không tồn tại! HOẶC bạn không có quyền tham gia nghiệp vụ ở Chi Nhánh khác', 16, 1, @MA_CN) 
    ELSE IF NOT EXISTS (SELECT ma_nl_kho from nguyen_lieu_kho where ma_nl_kho = @MA_NLK)
        RAISERROR(N'Nguyên Liệu Kho với mã [%d] không tồn tại! HOẶC bạn không có quyền tham gia nghiệp vụ ở Chi Nhánh khác', 16, 1, @MA_NLK)  
    ELSE IF @SL <= 0
        RAISERROR(N'Số lượng của nguyên liệu nhập cần phải >= 0!', 16, 1)
    ELSE IF @DON_GIA < 0 
        RAISERROR(N'Đơn giá nguyên liệu >= 0!', 16, 1)
    ELSE 
    BEGIN
        DECLARE @MA_NL SMALLINT = (SELECT ma_nl from nguyen_lieu_kho where ma_nl_kho = @MA_NLK)

        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            SELECT * FROM chi_tiet_phieu_nhap WITH(UPDLOCK)
            INSERT INTO chi_tiet_phieu_nhap (so_phieu_nhap, ma_nl_kho, ma_chi_nhanh, ma_nv, ma_nl, ma_ncc, so_luong, don_gia_nl)
            VALUES (@SO_PN, @MA_NLK, @MA_CN, @MA_NV, @MA_NL, @MA_NCC, @SL, @DON_GIA)
            COMMIT TRANSACTION
            SELECT N'Thêm CTPN thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(MAX) = N'Lỗi thêm CTPN! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Them_Chi_Tiet_Phu_Thu_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------STORE PROCEDURE
CREATE PROCEDURE [dbo].[sp_Them_Chi_Tiet_Phu_Thu_May_Tram] @SO_PPT int, 
                                        @MA_DV int, 
                                        @SL FLOAT, 
                                        @MA_NV char(12), 
                                        @MA_CN char(4)
AS
BEGIN
    IF @SL <= 0
        RAISERROR(N'Số lượng dịch vụ không thể <= 0!', 16, 1)
    ELSE IF NOT EXISTS (SELECT ma_chi_nhanh FROM chi_nhanh WHERE ma_chi_nhanh = @MA_CN)
        RAISERROR(N'Chi Nhánh với mã [%s] không tồn tại HOẶC bạn không có quyền thêm Chi Tiết Phụ Thu cho chi nhánh khác!', 16, 1, @MA_CN)
    ELSE IF NOT EXISTS (SELECT ma_nv FROM nhan_vien WHERE ma_nv = @MA_NV)
        RAISERROR(N'Nhân Viên với mã [%s] không tồn tại HOẶC bạn không có quyền thêm Chi Tiết Phụ Thu!', 16, 1, @MA_NV)
    ELSE IF NOT EXISTS (SELECT so_phieu_thu FROM phieu_phu_thu WHERE so_phieu_thu = @SO_PPT)
        RAISERROR(N'Phiếu Phụ Thu với số phiếu [%d] không tồn tại HOẶC bạn không có quyền thêm Chi Tiết Phụ Thu cho chi nhánh khác!', 16, 1, @SO_PPT) 
    ELSE IF NOT EXISTS (SELECT ma_dich_vu FROM dich_vu WHERE ma_dich_vu = @MA_DV)
        RAISERROR(N'Dịch Vụ với mã [%d] không tồn tại!', 16, 1, @MA_DV) 
    ELSE
    BEGIN
        DECLARE @DON_GIA_DV FLOAT = (SELECT don_gia_theo_gio FROM dich_vu WHERE ma_dich_vu = @MA_DV)
        DECLARE @DON_GIA_KM FLOAT = (SELECT don_gia_khuyen_mai FROM dich_vu WHERE ma_dich_vu = @MA_DV)
        IF @DON_GIA_KM <> NULL
            SET @DON_GIA_DV = @DON_GIA_KM        
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            SELECT * FROM chi_tiet_phu_thu WITH(UPDLOCK)
            INSERT INTO chi_tiet_phu_thu(so_phieu_thu, ma_dich_vu, ma_chi_nhanh, ma_nv, don_gia_dv_hien_thoi, so_luong)
            VALUES(@SO_PPT, @MA_DV, @MA_CN, @MA_NV, @DON_GIA_DV, @SL)
            COMMIT TRANSACTION
            SELECT N'Thêm Chi Tiết Phụ Thu thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(MAX) = N'Lỗi thêm CTPT! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Them_Chuc_Vu]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Them_Chuc_Vu] @MACV char(4),
                                @TENCV NVARCHAR(60),
                                @CTL bit,
                                @Luong float,
								@IS_PARTTIME BIT
AS
BEGIN
    if exists (SELECT ma_chuc_vu from chuc_vu where ma_chuc_vu = @MACV)
        RAISERROR(N'Mã chức vụ: [%s] đã tồn tại!', 16, 1, @MACV)
    ELSE IF exists (SELECT ten_chuc_vu from chuc_vu where UPPER(ten_chuc_vu) = UPPER(@TENCV) and ma_chuc_vu <> @MACV)
        RAISERROR(N'Tên chức vụ: [%s] đã tồn tại!', 16, 1, @TENCV)
    ELSE IF @Luong <= 0
    BEGIN
        DECLARE @Str_Luong nvarchar(20) = CAST(@Luong as nvarchar(20))
        RAISERROR(N'Lương chức vụ: [%s] không thể bé hơn hoặc bằng [0]!', 16, 1, @Str_Luong)
    END
    ELSE
    BEGIN   
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN TRANSACTION
        BEGIN TRY
            SELECT ma_chuc_vu from chuc_vu WITH (updlock)
            INSERT INTO chuc_vu(ma_chuc_vu, ten_chuc_vu, cach_tinh_luong, luong, be_deleted, is_part_time)
            VALUES(@MACV, @TENCV, @CTL, @Luong, 0, @IS_PARTTIME)
            COMMIT TRANSACTION
        END TRY
        BEGIN CATCH
            ROLLBACK TRAN
            DECLARE @Err NVARCHAR(max) = ERROR_MESSAGE()
            RAISERROR (N'Lỗi: [%s]', 16, 1, @Err)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Them_Dich_Vu]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Them_Dich_Vu]
	@TenDV nvarchar(50),
	@Dongiatheogio float,
	@Don_Gia_Khuyen_mai float = null
AS
begin
	IF exists (SELECT ten_dich_vu FROM dich_vu WHERE ten_dich_vu = @TenDV)
		RAISERROR(N'Đã có loại dịch vụ này: "%s"! Vui lòng thử lại!', 16, 1, @TenDV)
	ELSE
	BEGIN
		begin transaction
		set transaction isolation level serializable
		BEGIN TRY
			select ten_dich_vu from dich_vu with (updlock)
			insert into dich_vu(ten_dich_vu, don_gia_theo_gio, be_deleted, don_gia_khuyen_mai)
			values (@TenDV, @Dongiatheogio, 0, ISNULL(@Don_Gia_Khuyen_mai, null))
			COMMIT
		END TRY
		BEGIN CATCH
			DECLARE @ErrMsg VARCHAR(max)
			ROLLBACK TRAN
			SELECT @ErrMsg = N'Lỗi: ' + ERROR_MESSAGE()
			RAISERROR(@ErrMsg, 16, 1)
		END CATCH
	END
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Them_Hoa_Don_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------HOÁ ĐƠN
CREATE PROCEDURE [dbo].[sp_Them_Hoa_Don_May_Tram]
    @MA_NV NCHAR(12),
    @MA_CN CHAR(4),
    @MA_KV CHAR(1),
    @MA_KH INT = NULL,
    @HINH_THUC_MUA BIT
AS
BEGIN
    SET XACT_ABORT ON
    SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
    BEGIN DISTRIBUTED TRANSACTION
    BEGIN TRY
        SELECT * FROM hoa_don WITH(UPDLOCK)
        INSERT INTO hoa_don (ma_nv, ma_chi_nhanh, ma_khu_vuc, ma_kh, hinh_thuc_mua)
        VALUES(@MA_NV, @MA_CN, @MA_KV, @MA_KH, @HINH_THUC_MUA)
        COMMIT TRANSACTION
        SELECT N'Thêm Hoá Đơn thành công!'
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION
        DECLARE @ERR NVARCHAR(MAX) = N'Lỗi thêm Hoá Đơn! Chi tiết: ' + ERROR_MESSAGE()
        RAISERROR(@ERR, 16, 1)
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Them_Khach_Hang_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Them_Khach_Hang_May_Tram]
    @MACN char(4),
    @TENKH nvarchar(80),
    @SDT CHAR(10),
    @GIOITINH bit,
    @NGAYSINH date,                                                          
    @DIACHI NVARCHAR(80) = null
AS
BEGIN
    IF not EXISTS (SELECT ma_chi_nhanh from chi_nhanh where ma_chi_nhanh = @MACN)
		RAISERROR(N'Không thể thêm khách hàng cho chi nhánh khác: [%s]! Vui lòng thử lại!', 16, 1, @MACN)
	ELSE IF @MACN = 'CNT'
		RAISERROR(N'Chi nhánh Tổng tại công ty không thể thêm khách hàng!', 16, 1)
	ELSE IF EXISTS (SELECT sdt from khach_hang where sdt = @SDT) 
		RAISERROR(N'Số điện thoại: [%s] đã được đăng ký! Vui lòng tìm kiếm lại thông tin của khách hàng!', 16, 1, @SDT)
	ELSE IF DATEDIFF(year,@NGAYSINH, GETDATE()) < 12
	BEGIN
		DECLARE @NGSINH_STR nvarchar(max) = CAST(DATEDIFF(year,@NGAYSINH, GETDATE()) as nvarchar(max))
		RAISERROR(N'Chỉ có thể đăng ký cho khách hàng từ 12 tuổi trở lên! Tuổi hiện tại [%s]', 16, 1, @NGSINH_STR)
	END
	ELSE
	BEGIN
		IF EXISTS (select sdt from LINK1.CSDLPT_BTL.DBO.khach_hang where sdt = @SDT) 
		OR EXISTS (select sdt from LINK2.CSDLPT_BTL.DBO.khach_hang where sdt = @SDT)
			RAISERROR(N'Số điện thoại: [%s] đã được đăng ký! Vui lòng tìm kiếm lại thông tin của khách hàng!', 16, 1, @SDT)
		ELSE
			BEGIN
			set XACT_ABORT ON
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
			BEGIN TRY
				--TIM MA_KH PHU HOP
				DECLARE @Count int = 1
				DECLARE @Compare int

				DECLARE c_Cursor CURSOR for (select ma_kh from khach_hang 
				union select ma_kh from LINK1.CSDLPT_BTL.DBO.khach_hang 
				union select ma_kh from LINK2.CSDLPT_BTL.DBO.khach_hang)
				OPEN c_Cursor
				FETCH NEXT FROM c_Cursor INTO @Compare
				WHILE @@FETCH_STATUS = 0  
				BEGIN  
					IF @Count = @Compare
						SET @Count = @Count + 1
					ELSE 
						BREAK
					FETCH NEXT FROM c_Cursor INTO @Compare 
				END 
				CLOSE c_Cursor  
				DEALLOCATE c_Cursor 		
				--- KET THUC TIM MA_KH
				--- BAT DAU INSERT
				SELECT * FROM khach_hang WITH(UPDLOCK)
				INSERT INTO khach_hang
				(ma_kh, ma_chi_nhanh, ten_kh, sdt, tich_luy, ngay_tham_gia, dia_chi, be_deleted, gioi_tinh, ngay_sinh)
				VALUES(@Count, @MACN, @TENKH, @SDT, 0, GETDATE(), @DIACHI, 0, @GIOITINH, @NGAYSINH)
				-- KET THUC INSERT
				COMMIT TRANSACTION
				SELECT N'Thêm khách hàng mới thành công!'
			END TRY
			BEGIN CATCH
				ROLLBACK TRANSACTION
				DECLARE @ERR NVARCHAR(MAX) = ERROR_MESSAGE()
				RAISERROR(N'Lỗi tại: sp_Them_Khach_Hang_May_Tram => Chi tiết: [%s]', 16, 1, @ERR)
			END CATCH
		END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Them_Khu_Vuc]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Them_Khu_Vuc] @MAKV char(1),
                                @TENKV NVARCHAR(24),
                                @PHI_KV FLOAT
AS
BEGIN
    IF exists (SELECT ma_khu_vuc from khu_vuc WHERE ma_khu_vuc = @MAKV)
        RAISERROR(N'Mã khu vực đã nhập: [%s] đã tồn tại! Vui lòng thử mã khác!', 16, 1, @MAKV)
    ELSE IF exists (SELECT ten_khu_vuc from khu_vuc WHERE UPPER(ten_khu_vuc) = UPPER(@TENKV) and ma_khu_vuc != @MAKV)
        RAISERROR(N'Tên khu vực đã nhập: [%s] đã tồn tại! Vui lòng thử tên khác!', 16, 1, @TENKV)   
    ELSE IF @PHI_KV < 1
    BEGIN
        DECLARE @PHI_KV_STR NVARCHAR(20) = CAST(@PHI_KV as nvarchar(20))
        RAISERROR(N'Phí khu vực ít nhất phải >= 1! Bạn nhập: [%s]', 16, 1, @PHI_KV_STR)
    END
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN TRANSACTION
        BEGIN TRY
            SELECT * from khu_vuc with (updlock)
            INSERT INTO khu_vuc(ma_khu_vuc, ten_khu_vuc, phi_kv, be_deleted)
            VALUES(@MAKV, @TENKV, @PHI_KV, 0)
            COMMIT TRANSACTION
        END TRY
        BEGIN CATCH
            DECLARE @E NVARCHAR(max) = ERROR_MESSAGE()
            ROLLBACK TRANSACTION
            RAISERROR(N'Lỗi giao tác => SP: sp_Them_Khu_Vuc. Chi tiết: %s', 16, 1, @E)
        END CATCH
    END

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Them_Khu_Vuc_Cho_Chi_Nhanh]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Them_Khu_Vuc_Cho_Chi_Nhanh] @MA_CN char(4), @MA_KV char(1)
as
BEGIN
	IF NOT EXISTS (SELECT ma_khu_vuc from khu_vuc where ma_khu_vuc = @MA_KV)
		RAISERROR(N'Không tồn tại Khu Vực với mã: [%s]!', 16,1, @MA_KV)
	ELSE IF NOT EXISTS (SELECT ma_chi_nhanh from chi_nhanh where ma_chi_nhanh = @MA_CN)
		RAISERROR(N'Không tồn tại Chi Nhánh với mã: [%s]!', 16,1, @MA_CN)
	ELSE IF @MA_CN = 'CNT'
		RAISERROR(N'Không thể thêm khu vực cho Chi Nhánh Tổng - Công Ty!', 16,1)
	ELSE
	BEGIN
		SET XACT_ABORT ON
		SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
		BEGIN DISTRIBUTED TRANSACTION
		BEGIN TRY
			SELECT * FROM CN_KV with (UPDLOCK)
			INSERT INTO CN_KV(ma_chi_nhanh, ma_khu_vuc)
			VALUES(@MA_CN, @MA_KV)
			COMMIT TRANSACTION
			SELECT N'Thêm Khu Vực cho Chi Nhánh thành công!'
		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION
			DECLARE @ERR NVARCHAR(MAX) = 'Lỗi Thêm Khu Vực [' + @MA_KV + '] cho chi nhánh [' + @MA_CN + ']! Chi tiết: ' + ERROR_MESSAGE() 
			RAISERROR(@ERR, 16, 1)
		END CATCH
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Them_Khuyen_Mai]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Them_Khuyen_Mai]
	@Dieu_Kien float,
	@Muc_KM float
AS
begin
	IF exists (SELECT * FROM khuyen_mai WHERE dieu_kien_tich_luy = @Dieu_Kien AND muc_khuyen_mai = @Muc_KM)
	BEGIN
		RAISERROR(N'Đã có mức khuyến mãi này! Vui lòng thử lại!', 16, 1)
		RETURN
	END
	ELSE
	BEGIN
		begin transaction
		set transaction isolation level serializable
		BEGIN TRY
			Declare @Count tinyint = 1
			while exists(SELECT ma_khuyen_mai FROM khuyen_mai WHERE ma_khuyen_mai = @Count)
				set @Count = @Count + 1
			select dieu_kien_tich_luy
			from khuyen_mai with (updlock)

			insert into khuyen_mai(ma_khuyen_mai, dieu_kien_tich_luy,muc_khuyen_mai)
			values(@Count, @Dieu_Kien, @Muc_KM)
			COMMIT
		END TRY
		BEGIN CATCH
			DECLARE @ErrMsg VARCHAR(max)
			ROLLBACK
			SELECT @ErrMsg = N'Lỗi: ' + ERROR_MESSAGE()
			RAISERROR(@ErrMsg, 16, 1)
		END CATCH
	END
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Them_Loai_Hinh_Chi]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Them_Loai_Hinh_Chi] @TenLHC NVARCHAR(30)
AS
BEGIN
    IF EXISTS (SELECT ten_loai_chi FROM loai_hinh_chi where UPPER(ten_loai_chi) = UPPER(@TENLHC))
		RAISERROR(N'tên loại hình chi: [%s] đã tồn tại! Vui lòng chọn tên khác!', 16, 1, @TENLHC)
    ELSE
    BEGIN
		set XACT_ABORT ON
		SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
		BEGIN TRANSACTION
		BEGIN TRY
            select * from loai_hinh_chi WITH(UPDLOCK)
            INSERT INTO loai_hinh_chi(ten_loai_chi, be_deleted) VALUES (@TENLHC, 0)
			COMMIT TRANSACTION
			SELECT N'Thêm loại hình chi mới thành công!'
		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION
			DECLARE @ERR NVARCHAR(MAX) = ERROR_MESSAGE()
			RAISERROR(N'Lỗi tại: sp_Them_Loai_Hinh_Chi => Chi tiết: [%s]', 16, 1, @ERR)
		END CATCH
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Them_Loai_San_Pham]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Loại sản phẩm
CREATE PROC [dbo].[sp_Them_Loai_San_Pham]
	@TenLoai nvarchar(50)
as
begin
	IF exists (SELECT ten_loai FROM loai_san_pham WHERE ten_loai = @TenLoai)
		RAISERROR(N'Đã có loại sản phẩm này! Vui lòng thử lại!', 16, 1)
	ELSE
	BEGIN
		begin transaction
		set transaction isolation level serializable
		BEGIN TRY
			declare @count int = 1
			while exists (SELECT ma_loai FROM loai_san_pham WHERE ma_loai = @count)
				set @count = @count + 1
			select ten_loai
			from loai_san_pham with (updlock)
			insert into loai_san_pham(ma_loai, ten_loai, be_deleted)
			values (@count, @TenLoai, 0)
			COMMIT
		END TRY
		BEGIN CATCH
			DECLARE @ErrMsg VARCHAR(max)
			ROLLBACK
			SELECT @ErrMsg = N'Lỗi: ' + ERROR_MESSAGE()
			RAISERROR(@ErrMsg, 16, 1)
		END CATCH
	END
end
--EXEC sp_themLOAISANPHAM 'banh mi bo',0;
GO
/****** Object:  StoredProcedure [dbo].[sp_Them_Nguyen_Lieu]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Them_Nguyen_Lieu]
	@Ten_nl nvarchar(80),
	@Don_vi_do nvarchar(10)
AS
begin
	IF exists (SELECT ten_nl FROM nguyen_lieu WHERE ten_nl = @Ten_nl)
		RAISERROR(N'Đã có nguyên liệu này! Vui lòng thử lại!', 16, 1)
	ELSE
	BEGIN
		begin transaction
		set transaction isolation level serializable
		BEGIN TRY
			declare @count smallint = 1
			while exists (SELECT ma_nl FROM nguyen_lieu WHERE ma_nl = @count)
				set @count = @count + 1
			select ten_nl from nguyen_lieu with (updlock)
			insert into nguyen_lieu(ma_nl, ten_nl,don_vi_do,be_deleted)
			values (@count, @Ten_nl, @Don_vi_do, 0)
			COMMIT
		END TRY
		BEGIN CATCH
			DECLARE @ErrMsg VARCHAR(max)
			ROLLBACK
			SELECT @ErrMsg = N'Lỗi: ' + ERROR_MESSAGE()
			RAISERROR(@ErrMsg, 16, 1)
		END CATCH
	END
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Them_Nguyen_Lieu_Kho_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------STORE PROCEDURE
CREATE PROCEDURE [dbo].[sp_Them_Nguyen_Lieu_Kho_May_Tram]   @MA_NL SMALLINT, 
                                                    @MA_CN CHAR(4),
                                                    @GIA_VON FLOAT = NULL
AS
BEGIN
    IF NOT EXISTS (SELECT ma_chi_nhanh from chi_nhanh where ma_chi_nhanh = @MA_CN)
        RAISERROR(N'Chi Nhánh với mã [%s] không tồn tại HOẶC bạn không có quyền thêm Nguyên Liệu Kho cho chi nhánh khác!', 16, 1, @MA_CN)
    ELSE IF NOT EXISTS (SELECT ma_nl from nguyen_lieu where ma_nl = @MA_NL)
        RAISERROR(N'Nguyên Liệu với mã [%d] không tồn tại!', 16, 1, @MA_NL)
    ELSE IF @GIA_VON < 0
    BEGIN
        DECLARE @TO_STRING NVARCHAR(MAX) = CAST(@GIA_VON as nvarchar(max))
        RAISERROR(N'Giá vốn của nguyên liệu không thể < 0! Giá vốn nhập vào [%s] vnđ', 16, 1, @TO_STRING)
    END
    ELSE
    BEGIN
        DECLARE @GIA_VON_FINAL FLOAT
        IF @GIA_VON IS NULL
            SET @GIA_VON_FINAL = 0
        ELSE
            SET @GIA_VON_FINAL = @GIA_VON
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            DECLARE @ID SMALLINT = 1
            WHILE EXISTS (SELECT ma_nl_kho FROM(SELECT ma_nl_kho from nguyen_lieu_kho UNION SELECT ma_nl_kho FROM LINK1.CSDLPT_BTL.DBO.nguyen_lieu_kho UNION SELECT ma_nl_kho FROM LINK2.CSDLPT_BTL.DBO.nguyen_lieu_kho) NLK where ma_nl_kho = @ID)
                SET @ID = @ID + 1
            
            SELECT * FROM nguyen_lieu_kho WITH(UPDLOCK)

            INSERT INTO nguyen_lieu_kho(ma_nl_kho, ma_chi_nhanh, ma_nl, ton_kho, gia_von, be_deleted)
            VALUES(@ID, @MA_CN, @MA_NL, 0, @GIA_VON_FINAL, 0)
            COMMIT TRANSACTION
            SELECT N'Thêm Nguyên Liệu Kho thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(MAX) = N'Lỗi thêm Nguyên Liệu Kho! Chi tiết: ' + ERROR_MESSAGE();
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Them_Nha_Cung_Cap_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----STORE PROCEDURE
CREATE PROCEDURE [dbo].[sp_Them_Nha_Cung_Cap_May_Tram] @TEN_NCC NVARCHAR(100),
                                    @SDT_NCC CHAR(10),
                                    @DIACHI_NCC NVARCHAR(80),
                                    @MA_CN CHAR(4)
AS
BEGIN
    IF NOT EXISTS (SELECT ma_chi_nhanh from chi_nhanh where ma_chi_nhanh = @MA_CN)
        RAISERROR(N'Chi nhánh với mã: [%s] không tồn tại!', 16, 1, @MA_CN)
    ELSE IF EXISTS (SELECT sdt_ncc from nha_cung_cap where sdt_ncc = @SDT_NCC and ma_chi_nhanh = @MA_CN)
    BEGIN
        RAISERROR(N'Số điện thoại của nhà cung cấp: [%s] đã tồn tại cho chi nhánh có mã: [%s]!', 16, 1, @SDT_NCC, @MA_CN)
    END
    ELSE IF EXISTS (SELECT ten_ncc from nha_cung_cap where ten_ncc = @TEN_NCC and ma_chi_nhanh = @MA_CN)
    BEGIN
        RAISERROR(N'Tên của nhà cung cấp: [%s] đã tồn tại cho chi nhánh có mã: [%s]!', 16, 1, @TEN_NCC, @MA_CN)
    END
    ELSE IF EXISTS (SELECT dia_chi_ncc from nha_cung_cap where dia_chi_ncc = @DIACHI_NCC and ma_chi_nhanh = @MA_CN)
    BEGIN
        RAISERROR(N'Địa chỉ của nhà cung cấp: [%s] đã tồn tại cho chi nhánh có mã: [%s]!', 16, 1, @DIACHI_NCC, @MA_CN)
    END    
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            DECLARE @COUNT tinyint = 1
            DECLARE @COMPARE tinyint
            DECLARE c_Cursor_Them_Nha_Cung_Cap CURSOR
            FOR select ma_ncc from LINK0.CSDLPT_BTL.DBO.nha_cung_cap
            OPEN c_Cursor_Them_Nha_Cung_Cap
            FETCH NEXT FROM c_Cursor_Them_Nha_Cung_Cap INTO @COMPARE
            WHILE @@FETCH_STATUS = 0
            BEGIN
                IF @COUNT != @COMPARE
                    BREAK
                ELSE
                    SET @COUNT = @COUNT + 1
                FETCH NEXT FROM c_Cursor_Them_Nha_Cung_Cap INTO @COMPARE
            END
            CLOSE c_Cursor_Them_Nha_Cung_Cap
            DEALLOCATE c_Cursor_Them_Nha_Cung_Cap

            select * from LINK0.CSDLPT_BTL.DBO.nha_cung_cap with (UPDLOCK)
            INSERT INTO nha_cung_cap(ma_ncc, ten_ncc, sdt_ncc, dia_chi_ncc, be_deleted, ma_chi_nhanh)
            VALUES(@COUNT, @TEN_NCC, @SDT_NCC, @DIACHI_NCC, 0, @MA_CN)
            COMMIT TRANSACTION
            SELECT N'Thêm thông tin nhà cung cấp mới thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(max) = N'Lỗi: Tại sp_Them_Nha_Cung_Cap! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Them_Nhan_Vien_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Them_Nhan_Vien_May_Tram] @MA_CN CHAR(4),
                                            @MA_CV CHAR(4),
                                            @TEN_NV NVARCHAR(80),
                                            @CMND CHAR(12),
                                            @GIOI_TINH BIT,
                                            @NGAY_SINH DATE,
                                            @DIACHI_NV NVARCHAR(80),
                                            @SDT_NV CHAR(10),
                                            @IS_THU_VIEC BIT,
                                            @HE_SO_LUONG FLOAT,
                                            @AVATAR NVARCHAR(4000)
AS
BEGIN
    DECLARE @TO_STRING NVARCHAR(max)
    IF NOT EXISTS (SELECT ma_chi_nhanh from chi_nhanh where ma_chi_nhanh = @MA_CN)
        RAISERROR(N'Thông tin chi nhánh theo mã chi nhánh [%s] không tồn tại! Hoặc bạn không có quyền thêm thông tin nhân viên cho chi nhánh khác!',16,1,@MA_CN)
    ELSE IF (SELECT COUNT(ma_chuc_vu) FROM (SELECT ma_chuc_vu from chuc_vu 
                                            INTERSECT SELECT ma_chuc_vu from DBO.fn_Lay_DS_Chuc_Vu_Khi_Them_Sua_Nhan_Vien_Theo_Quyen_Cua_User_Login()) ds_chuc_vu 
                                            WHERE TRIM(ma_chuc_vu) = TRIM(@MA_CV)) = 0
        RAISERROR(N'Thông tin chức vụ theo mã chức vụ [%s] không tồn tại! Hoặc bạn không có quyền thêm thông tin nhân viên cho với chức vụ này!',16,1,@MA_CV)
    ELSE IF EXISTS (SELECT cmnd from LINK0.CSDLPT_BTL.DBO.nhan_vien where cmnd = @CMND and ma_chi_nhanh = @MA_CN and ma_chuc_vu = @MA_CV)
    BEGIN
        RAISERROR(N'Đã tồn tại nhân viên có số CMND: [%s] tại Chi Nhánh [%s] và có Chức Vụ [%s] như đã thêm!', 16, 1, @CMND, @MA_CN, @MA_CV)
    END
    ELSE IF EXISTS (SELECT sdt_nv from LINK0.CSDLPT_BTL.DBO.nhan_vien where sdt_nv = @SDT_NV and ma_chi_nhanh = @MA_CN and ma_chuc_vu = @MA_CV)
    BEGIN
        RAISERROR(N'Đã tồn tại nhân viên có số điện thoại: [%s] tại Chi Nhánh [%s] và Chức Vụ [%s]!', 16, 1, @SDT_NV, @MA_CN, @MA_CV)
    END
    ELSE IF DATEDIFF(YEAR, @NGAY_SINH, GETDATE()) < 16
    BEGIN
        SET @TO_STRING = CAST(@NGAY_SINH as nvarchar(max))
        RAISERROR(N'Không thể thêm nhân viên có tuổi bé hơn 16! Ngày sinh nhập vào: [%s]', 16, 1, @TO_STRING)
    END
    ELSE IF @HE_SO_LUONG < 1
    BEGIN
        SET @TO_STRING = CAST(@HE_SO_LUONG as nvarchar(max))
        RAISERROR(N'Hệ số lương đã nhập: [%s] < 1.0! Hệ số lương phải >= 1.0', 16,1,@TO_STRING)
    END
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN TRY
			BEGIN TRANSACTION T1
            SELECT * FROM LINK0.CSDLPT_BTL.DBO.nhan_vien WITH (UPDLOCK)
            INSERT INTO nhan_vien(ma_chi_nhanh, ma_chuc_vu, ten_nv, cmnd, gioi_tinh, ngay_sinh, dia_chi_nv, sdt_nv, thu_viec, he_so_luong, anh_dai_dien, ngay_nhap_viec, be_deleted)
            VALUES(@MA_CN, @MA_CV, @TEN_NV, @CMND, @GIOI_TINH, @NGAY_SINH, @DIACHI_NV, @SDT_NV, @IS_THU_VIEC, @HE_SO_LUONG, @AVATAR, CAST(GETDATE() as date), 0)
            COMMIT TRANSACTION T1
            SELECT N'Thêm thông tin nhân viên mới thành công!'
        END TRY
        BEGIN CATCH
			IF(@@TRANCOUNT > 0)
            ROLLBACK TRANSACTION 
            DECLARE @ERROR NVARCHAR(MAX) = N'Lỗi: sp_Them_Nhan_Vien_May_Tram! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERROR, 16,1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Them_Phieu_Chi_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----STORED PROCEDURE
CREATE PROCEDURE [dbo].[sp_Them_Phieu_Chi_May_Tram] @MA_LC TINYINT,
                                                @TONG_CHI FLOAT,
                                                @MA_NV NCHAR(12)
AS
BEGIN
    DECLARE @TO_STRING NVARCHAR(max)
    IF NOT EXISTS (SELECT ma_loai_chi from loai_hinh_chi WHERE ma_loai_chi = @MA_LC)
        RAISERROR(N'Loại hình chi với mã [%d] không tồn tại!', 16, 1, @MA_LC) 
    ELSE IF NOT EXISTS (SELECT ma_nv from nhan_vien WHERE ma_nv = @MA_NV)  
        RAISERROR(N'Không tồn tại Nhân Viên với mã [%s]! HOẶC bạn không có quyền thực hiện lập Phiếu Chi cho chi nhánh khác!', 16, 1, @MA_NV)
    ELSE IF NOT EXISTS (SELECT ma_chi_nhanh FROM chi_nhanh WHERE ma_chi_nhanh = (SELECT ma_chi_nhanh from nhan_vien WHERE ma_nv = @MA_NV))
        RAISERROR(N'Bạn không có quyền lập Phiếu Chi cho Chi Nhánh khác!', 16 ,1)
    ELSE IF @TONG_CHI < 0
    BEGIN
        SET @TO_STRING = CAST(@TONG_CHI as nvarchar(max))
        RAISERROR(N'Tổng tiền chi không thể < 0! Tổng tiền chi nhập vào: [%s]', 16, 1, @TO_STRING)
    END
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            SELECT * FROM phieu_chi WITH(UPDLOCK)
            INSERT INTO phieu_chi(ma_loai_chi, ma_nv, ma_chi_nhanh, ngay_chi, tong_tien_chi)
            VALUES(@MA_LC, @MA_NV, (SELECT ma_chi_nhanh from nhan_vien WHERE ma_nv = @MA_NV), GETDATE(), @TONG_CHI)
            COMMIT TRANSACTION
            SELECT N'Thêm Phiếu Chi thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(MAX) = N'Lỗi thêm Phiếu Chi! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Them_Phieu_Nhap_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------Phiếu nhập
------------TRIGGER



------------STORE PROCEDURE
CREATE PROCEDURE [dbo].[sp_Them_Phieu_Nhap_May_Tram]    @MA_NCC TINYINT, 
                                                @MA_NV CHAR(12),
                                                @MA_CN CHAR(4)
AS
BEGIN
    IF NOT EXISTS (select ma_chi_nhanh FROM chi_nhanh WHERE ma_chi_nhanh = @MA_CN)
        RAISERROR(N'Không tồn tại Chi Nhánh với mã [%s]! HOẶC bạn không có quyền Lập Phiếu Nhập ở chi nhánh khác!', 16, 1, @MA_CN)
    ELSE IF NOT EXISTS (SELECT ma_nv from nhan_vien WHERE ma_nv = @MA_NV)
        RAISERROR(N'Không tồn tại Nhân Viên với mã [%s]! HOẶC bạn không có quyền Lập Phiếu Nhập! ', 16, 1, @MA_NV)
    ELSE IF NOT EXISTS (SELECT ma_ncc FROM nha_cung_cap WHERE ma_ncc = @MA_NCC)
        RAISERROR(N'Không tồn tại Nhà Cung Cấp với mã [%d]! HOẶC bạn không có quyền Lập Phiếu Nhập! ', 16, 1, @MA_NCC)
    ELSE
    BEGIN
        DECLARE @ID int = 1
        WHILE EXISTS (SELECT so_phieu_nhap FROM (SELECT so_phieu_nhap from phieu_nhap UNION SELECT so_phieu_nhap from LINK1.CSDLPT_BTL.DBO.phieu_nhap UNION SELECT so_phieu_nhap from LINK2.CSDLPT_BTL.DBO.phieu_nhap) PN WHERE PN.so_phieu_nhap = @ID)
            SET @ID = @ID + 1
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            SELECT * FROM phieu_nhap WITH (UPDLOCK)
            INSERT INTO phieu_nhap(so_phieu_nhap, ma_chi_nhanh, ma_nv, ma_ncc, ngay_nhap, tong_tien_nhap)
            VALUES (@ID, @MA_CN, @MA_NV, @MA_NCC, GETDATE(), 0)
            COMMIT TRANSACTION
            SELECT N'Thêm Phiếu Nhập thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(MAX) = N'Lỗi thêm Phiếu Nhập! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1) 
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Them_Phieu_Phu_Thu]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------



----------STORE PROCEDURE
CREATE PROCEDURE [dbo].[sp_Them_Phieu_Phu_Thu] @MA_NV NVARCHAR(max), 
                                        @MA_CN NVARCHAR(max)
AS
BEGIN
    IF NOT EXISTS (SELECT ma_nv FROM nhan_vien where ma_nv = @MA_NV)
        RAISERROR(N'Bạn không có quyền thêm Phiếu phụ thu! Hoặc có lỗI khi không tồn tại nhân viên có mã: [%s]', 16, 1, @MA_NV)
    ELSE IF NOT EXISTS (SELECT ma_nv FROM nhan_vien where ma_nv = @MA_NV)
        RAISERROR(N'Không tồn tại Chi Nhánh có mã: [%s]', 16, 1, @MA_CN)
    ELSE 
    BEGIN
        DECLARE @Ngay_Thu DATE = CAST(GETDATE() as date)
        DECLARE @ID int = 1
        WHILE EXISTS (SELECT so_phieu_thu FROM (SELECT so_phieu_thu FROM phieu_phu_thu UNION SELECT so_phieu_thu FROM LINK1.CSDLPT_BTL.DBO.phieu_phu_thu UNION SELECT so_phieu_thu FROM LINK2.CSDLPT_BTL.DBO.phieu_phu_thu) PPT WHERE so_phieu_thu = @ID)
            SET @ID = @ID + 1
        
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION 
        BEGIN TRY
            SELECT * from phieu_phu_thu WITH(UPDLOCK)

            INSERT INTO phieu_phu_thu(so_phieu_thu, ma_chi_nhanh, ma_nv, ngay_thu, tong_phu_thu)
            VALUES (@ID, @MA_CN, @MA_NV, @Ngay_Thu, 0)
            COMMIT TRANSACTION
            SELECT N'Xoá Phiếu Phụ Thu thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(max) = N'Lỗi Thêm Phiếu Phụ Thu! Chi tiết: ' + ERROR_MESSAGE();
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Them_San_Pham]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Them_San_Pham] @TENSP NVARCHAR(80),
                                @DG FLOAT,
                                @GHICHU NVARCHAR(500),
                                @MALOAI int,
                                @HINHANH NVARCHAR(4000),
                                @KM FLOAT
AS
BEGIN
    DECLARE @DG_STR NVARCHAR(20)
    DECLARE @KM_STR NVARCHAR(20)
    DECLARE @MALOAI_STR NVARCHAR(20)

    IF not exists (select ma_loai from loai_san_pham where ma_loai = @MALOAI)
    BEGIN
        set @MALOAI_STR = CAST(@MALOAI as nvarchar(20))
        RAISERROR(N'Lỗi => sp_Them_San_Pham: Mã loại sản phẩm [%s] không tồn tại! Vui lòng thử lại bằng mã khác!',16,1, @MALOAI_STR)
    END
    ELSE IF EXISTS (SELECT ten_sp from san_pham where UPPER(ten_sp) = UPPER(@TENSP))
        RAISERROR(N'Lỗi => sp_Them_San_Pham: Tên sản phẩm [%s] đã tồn tại! Vui lòng thử lại bằng tên khác!',16,1,@TENSP)
    ELSE IF @DG < 0
    BEGIN
        set @DG_STR = CAST(@DG as NVARCHAR(20))
        RAISERROR(N'Lỗi => sp_Them_San_Pham: Đơn giá sản phẩm [%s] không thể < 0 !',16,1,@DG_STR)
    END
    ELSE IF @KM >= @DG
    BEGIN
        set @KM_STR = CAST(@KM as NVARCHAR(20))
        set @DG_STR = CAST(@DG as NVARCHAR(20))
        RAISERROR(N'Lỗi => sp_Them_San_Pham: Đơn giá khuyến mãi [%s] không thể >= Đơn giá sản phẩm [%s] !',16,1,@KM_STR, @DG_STR)
    END
    ELSE IF @KM < 0
    BEGIN
        set @KM_STR = CAST(@KM as NVARCHAR(20))
        RAISERROR(N'Lỗi => sp_Them_San_Pham: Đơn giá khuyến mãi [%s] không thể < 0 !',16,1,@KM_STR)
    END
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN TRANSACTION
            BEGIN TRY
                SELECT * from san_pham WITH(updlock)
                INSERT INTO san_pham(ten_sp, don_gia_theo_sp, ghi_chu_cong_thuc, be_deleted, ma_loai, hinh_anh, don_gia_khuyen_mai)
                VALUES(@TENSP, @DG, @GHICHU, 0, @MALOAI, @HINHANH, @KM)
                SELECT N'Thêm sản phẩm thành công!'
                COMMIT TRANSACTION
            END TRY
            BEGIN CATCH
                DECLARE @Err NVARCHAR(max) = ERROR_MESSAGE()
                ROLLBACK TRANSACTION
                RAISERROR (N'Lỗi => sp_Them_San_Pham: [%s]', 16, 1, @Err)
            END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_cac_ca_lam_viec]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Xem_cac_ca_lam_viec]
as
SELECT ngay_trong_tuan = (SELECT dbo.fn_Lay_Ten_Ngay_Trong_Tuan([ngay_trong_tuan]))
    ,[ca_trong_ngay]
    ,[thuong_theo_ca]
    ,[ghi_chu]
    ,[gio_nhan_ca]
    ,[gio_tan_ca]
FROM [CSDLPT_BTL].[dbo].[lich_lam_viec_parttime_dlcd]
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Cac_Khuyen_Mai]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Xem_Cac_Khuyen_Mai] @MAKM tinyint = null
as
begin
	IF(@MAKM is null)
	begin
		SELECT [ma_khuyen_mai]
		  ,[dieu_kien_tich_luy]
		  ,[muc_khuyen_mai]
		FROM [CSDLPT_BTL].[dbo].[khuyen_mai]
	end
	else
	begin
		SELECT [ma_khuyen_mai]
			,[dieu_kien_tich_luy]
			,[muc_khuyen_mai]
		FROM [CSDLPT_BTL].[dbo].[khuyen_mai]
		WHERE ma_khuyen_mai = @MAKM
	end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Cac_Loai_San_Pham]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Xem_Cac_Loai_San_Pham] @MaLoai int = null
as
begin
	IF @MaLoai is null
	BEGIN
	SELECT [ma_loai]
      ,[ten_loai]
	FROM [CSDLPT_BTL].[dbo].[loai_san_pham]
	where be_deleted = 0
	END
	ELSE
	BEGIN
		IF NOT EXISTS (select ma_loai from loai_san_pham where ma_loai = @MaLoai)
            RAISERROR(N'Loại sản phẩm có mã [%d] không tồn tại!', 16, 1, @MaLoai)
        ELSE IF EXISTS (select ma_loai from loai_san_pham where ma_loai = @MaLoai and be_deleted = 1)
            RAISERROR(N'Loại sản phẩm có mã [%d] đã được xoá!', 16, 1, @MaLoai)
        ELSE
		BEGIN
			SELECT [ma_loai]
			  ,[ten_loai]
			FROM [CSDLPT_BTL].[dbo].[loai_san_pham]
			where be_deleted = 0 and ma_loai = @MaLoai
		END
	END
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Cac_Loai_San_Pham_Da_Xoa]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Xem_Cac_Loai_San_Pham_Da_Xoa] @MaLoai int = null
as
begin
	IF @MaLoai is null
	BEGIN
	SELECT [ma_loai]
      ,[ten_loai]
	FROM [CSDLPT_BTL].[dbo].[loai_san_pham]
	where be_deleted = 1
	END
	ELSE
	BEGIN
		IF NOT EXISTS (select ma_loai from loai_san_pham where ma_loai = @MaLoai)
            RAISERROR(N'Loại sản phẩm có mã [%d] không tồn tại!', 16, 1, @MaLoai)
        ELSE IF EXISTS (select ma_loai from loai_san_pham where ma_loai = @MaLoai and be_deleted = 0)
            RAISERROR(N'Loại sản phẩm có mã [%d] chưa hề được xoá!', 16, 1, @MaLoai)
        ELSE
		BEGIN
			SELECT [ma_loai]
			  ,[ten_loai]
			FROM [CSDLPT_BTL].[dbo].[loai_san_pham]
			where be_deleted = 1 and ma_loai = @MaLoai
		END
	END
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Cong_Thuc_Cua_San_Pham]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Xem_Cong_Thuc_Cua_San_Pham] @MASP INT
AS
BEGIN
    IF NOT EXISTS (SELECT ma_sp from san_pham where ma_sp = @MASP)
        RAISERROR(N'Sản phẩm đầu vào với mã [%d] không tồn tại!', 16, 1, @MASP)
    ELSE
    BEGIN
        DECLARE @TENSP NVARCHAR(50) = (SELECT ten_sp from san_pham where ma_sp = @MASP)
        IF NOT EXISTS (SELECT ma_sp from cong_thuc where ma_sp = @MASP)
            RAISERROR(N'Sản phẩm: [Mã SP: %d, Tên SP] hiện không có công thức', 16, 1,@MASP, @TENSP)
        ELSE
        BEGIN
            SELECT nl.ten_nl, ct.luong, nl.don_vi_do
            FROM (Select ma_nl, luong from cong_thuc where ma_sp = @MASP) ct 
                join (select ma_nl, ten_nl, don_vi_do from nguyen_lieu) nl on ct.ma_nl = nl.ma_nl
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_CTPN_Cua_Phieu_Nhap_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Xem_CTPN_Cua_Phieu_Nhap_May_Tram] @SO_PN INT
AS
BEGIN
    IF NOT EXISTS (SELECT so_phieu_nhap FROM phieu_nhap WHERE so_phieu_nhap = @SO_PN)
        RAISERROR(N'Không tồn tại Phiếu Nhập có số phiếu = [%d]', 16, 1, @SO_PN)
    ELSE
    SELECT so_phieu_nhap, CTPN.ma_nl_kho, NL.ma_nl, NL.ten_nl, CTPN.so_luong, NL.don_vi_do, CTPN.don_gia_nl  FROM (SELECT ma_nl_kho, don_gia_nl, so_luong, so_phieu_nhap, ma_nl FROM chi_tiet_phieu_nhap where so_phieu_nhap = @SO_PN) CTPN
                join (SELECT ma_nl, ten_nl, don_vi_do from nguyen_lieu) NL on NL.ma_nl = CTPN.ma_nl
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_CTPT_Cua_PPT_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Xem_CTPT_Cua_PPT_May_Tram] @SO_PPT int, @MA_DV int = NULL
AS
BEGIN
    IF NOT EXISTS (SELECT so_phieu_thu FROM phieu_phu_thu WHERE so_phieu_thu = @SO_PPT)
        RAISERROR(N'Phiếu Phụ Thu với số phiếu [%d] không tồn tại HOẶC bạn không có quyền thêm Chi Tiết Phụ Thu cho chi nhánh khác!', 16, 1, @SO_PPT) 
    ELSE
    BEGIN
        IF @MA_DV IS NULL
        BEGIN
            SELECT [so_phieu_thu]
                ,DV. [ma_dich_vu]
				, [ten_dich_vu]
                ,[so_luong]
                ,[ma_nv]
                ,[ma_chi_nhanh]
                ,[don_gia_dv_hien_thoi]
            FROM [CSDLPT_BTL].[dbo].[chi_tiet_phu_thu] CT JOIN (select ma_dich_vu, ten_dich_vu FROM dich_vu) DV
			ON CT.ma_dich_vu = DV.ma_dich_vu
            WHERE so_phieu_thu = @SO_PPT
        END
        ELSE
        BEGIN
            IF NOT EXISTS (SELECT ma_dich_vu FROM dich_vu WHERE ma_dich_vu = @MA_DV)
                RAISERROR(N'Dịch Vụ với mã [%d] không tồn tại!', 16, 1, @MA_DV) 
            ELSE IF NOT EXISTS (SELECT ma_dich_vu FROM chi_tiet_phu_thu WHERE ma_dich_vu = @MA_DV and so_phieu_thu = @SO_PPT)
                RAISERROR(N'Không tồn tại CTPT với số phiếu thu = [%d] và mã dịch vụ = [%d]!', 16, 1, @SO_PPT, @MA_DV) 
            ELSE
            BEGIN
                SELECT [so_phieu_thu]
                ,DV. [ma_dich_vu]
				, [ten_dich_vu]
                    ,[so_luong]
                    ,[ma_nv]
                    ,[ma_chi_nhanh]
                    ,[don_gia_dv_hien_thoi]
            FROM [CSDLPT_BTL].[dbo].[chi_tiet_phu_thu] CT JOIN (select ma_dich_vu, ten_dich_vu FROM dich_vu) DV
			ON CT.ma_dich_vu = DV.ma_dich_vu
                WHERE so_phieu_thu = @SO_PPT and DV.ma_dich_vu = @MA_DV
            END
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Chi_Nhanh]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Xem_Chi_Nhanh] @MACN char(4) = null
as
begin
	IF(@MACN is null)
	begin
		SELECT [ma_chi_nhanh]
			,[ten_chi_nhanh]
			,[dia_chi]
			,[sdt_cn]
		FROM [CSDLPT_BTL].[dbo].[chi_nhanh]
		WHERE be_deleted = 0
	end
	else
	begin
		IF NOT EXISTS (select ma_chi_nhanh from chi_nhanh where ma_chi_nhanh = @MACN)
            RAISERROR(N'Chi nhánh có mã [%s] không tồn tại!', 16, 1, @MACN)
        ELSE IF EXISTS (select ma_chi_nhanh from chi_nhanh where ma_chi_nhanh = @MACN and be_deleted = 1)
		BEGIN
			DECLARE @TENCN nvarchar(50) = (select ten_chi_nhanh from chi_nhanh where ma_chi_nhanh = @MACN and be_deleted = 1)
            RAISERROR(N'Chi nhánh: [Mã chi nhánh: %s, Tên chi nhánh: %s] đã được xoá!', 16, 1, @MACN, @TENCN)
		END
        ELSE
		BEGIN
			SELECT [ma_chi_nhanh]
				,[ten_chi_nhanh]
				,[dia_chi]
				,[sdt_cn]
			FROM [CSDLPT_BTL].[dbo].[chi_nhanh]
			WHERE be_deleted = 0 and ma_chi_nhanh = @MACN
		END
	end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Chi_Nhanh_Da_Xoa]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Xem_Chi_Nhanh_Da_Xoa] @MACN char(4) = null
as
begin
	IF(@MACN is null)
	begin
		SELECT [ma_chi_nhanh]
			,[ten_chi_nhanh]
			,[dia_chi]
			,[sdt_cn]
		FROM [CSDLPT_BTL].[dbo].[chi_nhanh]
		WHERE be_deleted = 1
	end
	else
	begin
		IF NOT EXISTS (select ma_chi_nhanh from chi_nhanh where ma_chi_nhanh = @MACN)
            RAISERROR(N'Chi nhánh có mã [%s] không tồn tại!', 16, 1, @MACN)
        ELSE IF EXISTS (select ma_chi_nhanh from chi_nhanh where ma_chi_nhanh = @MACN and be_deleted = 0)
		BEGIN
			DECLARE @TENCN nvarchar(50) = (select ten_chi_nhanh from chi_nhanh where ma_chi_nhanh = @MACN and be_deleted = 0)
            RAISERROR(N'Chi nhánh: [Mã chi nhánh: %s, Tên chi nhánh: %s] chưa hề được xoá!', 16, 1, @MACN, @TENCN)
		END
        ELSE
		BEGIN
			SELECT [ma_chi_nhanh]
				,[ten_chi_nhanh]
				,[dia_chi]
				,[sdt_cn]
			FROM [CSDLPT_BTL].[dbo].[chi_nhanh]
			WHERE be_deleted = 1 and ma_chi_nhanh = @MACN
		END
	end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Chuc_Vu]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Xem_Chuc_Vu] @MACV char(4) = NULL
as
BEGIN
    if @MACV is NULL
    BEGIN
        SELECT [ma_chuc_vu]
            ,[ten_chuc_vu]
            ,[cach_tinh_luong]
            ,[luong]
            ,[be_deleted]
        FROM [CSDLPT_BTL].[dbo].[chuc_vu]
        WHERE be_deleted = 0
    END
    ELSE
    BEGIN
        IF NOT EXISTS (select ma_chuc_vu from chuc_vu where ma_chuc_vu = @MACV)
            RAISERROR(N'Chức vụ có mã [%s] không tồn tại!', 16, 1, @MACV)
        ELSE IF EXISTS (select ma_chuc_vu from chuc_vu where ma_chuc_vu = @MACV and be_deleted = 1)
		BEGIN
			DECLARE @TENCV nvarchar(30) = (select ten_chuc_vu from chuc_vu where ma_chuc_vu = @MACV and be_deleted = 1)
            RAISERROR(N'Chức vụ: [Mã chức vụ: %s, Tên chức vụ: %s] đã được xoá!', 16, 1, @MACV, @TENCV)
		END
        ELSE
		BEGIN
			SELECT [ma_chuc_vu]
				,[ten_chuc_vu]
				,[cach_tinh_luong]
				,[luong]
			FROM [CSDLPT_BTL].[dbo].[chuc_vu]
			WHERE ma_chuc_vu = @MACV and be_deleted = 0
		END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Chuc_Vu_Da_Xoa]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Xem_Chuc_Vu_Da_Xoa] @MACV char(4) = NULL
as
BEGIN
    if @MACV is NULL
    BEGIN
        SELECT [ma_chuc_vu]
            ,[ten_chuc_vu]
            ,[cach_tinh_luong]
            ,[luong]
        FROM [CSDLPT_BTL].[dbo].[chuc_vu]
        WHERE be_deleted = 1
    END
    ELSE
    BEGIN
		IF NOT EXISTS (select ma_chuc_vu from chuc_vu where ma_chuc_vu = @MACV)
            RAISERROR(N'Chức vụ có mã [%s] không tồn tại!', 16, 1, @MACV)
        ELSE IF EXISTS (select ma_chuc_vu from chuc_vu where ma_chuc_vu = @MACV and be_deleted = 0)
		BEGIN
			DECLARE @TENCV nvarchar(30) = (select ten_chuc_vu from chuc_vu where ma_chuc_vu = @MACV and be_deleted = 0)
            RAISERROR(N'Chức vụ: [Mã chức vụ: %s, Tên chức vụ: %s] chưa hề được xoá!', 16, 1, @MACV, @TENCV)
		END
        ELSE
		BEGIN
			SELECT [ma_chuc_vu]
				,[ten_chuc_vu]
				,[cach_tinh_luong]
				,[luong]
			FROM [CSDLPT_BTL].[dbo].[chuc_vu]
			WHERE ma_chuc_vu = @MACV and be_deleted = 1
		END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Dich_Vu]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Xem_Dich_Vu] @MaDV int = null
as
begin
	IF(@MaDV is null)
	begin
		SELECT [ma_dich_vu]
      ,[ten_dich_vu]
      ,[don_gia_theo_gio]
      ,[be_deleted]
      ,[don_gia_khuyen_mai]
		FROM [CSDLPT_BTL].[dbo].[dich_vu]
		WHERE be_deleted = 0
	end
	else
	begin
		IF NOT EXISTS (select ma_dich_vu from dich_vu where ma_dich_vu = @MaDV)
            RAISERROR(N'Dịch vụ có mã [%d] không tồn tại!', 16, 1, @MaDV)
        ELSE IF EXISTS (select ma_dich_vu from dich_vu where ma_dich_vu = @MaDV and be_deleted = 1)
		BEGIN
			DECLARE @TENDV nvarchar(50) = (select ten_dich_vu from dich_vu where ma_dich_vu = @MaDV and be_deleted = 1)
            RAISERROR(N'Dịch vụ: [Mã dịch vụ: %d, Tên dịch vụ: %s] đã được xoá!', 16, 1, @MaDV, @TENDV)
		END
        ELSE
		BEGIN
			SELECT [ma_dich_vu]
		  ,[ten_dich_vu]
		  ,[don_gia_theo_gio]
		  ,[don_gia_khuyen_mai]
			FROM [CSDLPT_BTL].[dbo].[dich_vu]
			WHERE be_deleted = 0 and ma_dich_vu = @MaDV
		END
	end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Dich_Vu_Da_Xoa]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sp_Xem_Dich_Vu_Da_Xoa] @MaDV int = null
as
begin
	IF(@MaDV is null)
	begin
		SELECT [ma_dich_vu]
      ,[ten_dich_vu]
      ,[don_gia_theo_gio]
      ,[don_gia_khuyen_mai]
		FROM [CSDLPT_BTL].[dbo].[dich_vu]
		WHERE be_deleted = 1
	end
	else
	begin
		IF NOT EXISTS (select ma_dich_vu from dich_vu where ma_dich_vu = @MaDV)
            RAISERROR(N'Dịch vụ có mã [%d] không tồn tại!', 16, 1, @MaDV)
        ELSE IF EXISTS (select ma_dich_vu from dich_vu where ma_dich_vu = @MaDV and be_deleted = 0)
		BEGIN
			DECLARE @TENDV nvarchar(50) = (select ten_dich_vu from dich_vu where ma_dich_vu = @MaDV and be_deleted = 0)
            RAISERROR(N'Dịch vụ: [Mã dịch vụ: %d, Tên dịch vụ: %s] chưa hề được xoá!', 16, 1, @MaDV, @TENDV)
		END
        ELSE
		BEGIN
			SELECT [ma_dich_vu]
		  ,[ten_dich_vu]
		  ,[don_gia_theo_gio]
		  ,[don_gia_khuyen_mai]
			FROM [CSDLPT_BTL].[dbo].[dich_vu]
			WHERE be_deleted = 1 and ma_dich_vu = @MaDV
		END
	end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Hoa_Don_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Xem_Hoa_Don_May_Tram]
    @SO_HD INT = NULL,
    @MA_CN CHAR(4) = NULL,
    @MA_NV NCHAR(12) = NULL,
    @MA_KH INT = NULL,
    @MA_KV CHAR(1) = NULL,
    @HINH_THUC_MUA BIT = NULL,
    @FROM_DATE DATETIME = NULL,
    @TO_DATE DATETIME = NULL,
    @FROM_PRICE FLOAT = NULL,
    @TO_PRICE FLOAT = NULL
AS
BEGIN
    IF @SO_HD IS NOT NULL
    BEGIN
        IF NOT EXISTS (select so_hd from hoa_don where so_hd = @SO_HD)
            RAISERROR(N'Hoá Đơn với số [%d] không tồn tại HOẶC không thuộc Chi Nhánh hiện tại!', 16, 1, @SO_HD)
        ELSE
        BEGIN
            SELECT HD.so_hd, HD.hinh_thuc_mua, HD.ngay_thanh_toan, HD.tong_tien, HD.thanh_toan,
                NV.ma_nv, NV.ten_nv,
                CN.ma_chi_nhanh, CN.ten_chi_nhanh, CN.dia_chi_chi_nhanh, CN.sdt_cn,
                KV.ma_khu_vuc, KV.ten_khu_vuc, KV.phi_kv,
                KH.ma_kh, KH.ten_kh, KH.da_tich_luy,
                ma_khuyen_mai
            FROM (SELECT so_hd, ma_chi_nhanh, ma_nv, ma_khuyen_mai, ma_khu_vuc, ma_kh, hinh_thuc_mua, ngay_thanh_toan, tong_tien, thanh_toan FROM hoa_don WHERE so_hd = @SO_HD) HD
            JOIN (SELECT ma_nv, ten_nv from nhan_vien) NV on HD.ma_nv = NV.ma_nv
            JOIN (SELECT ma_chi_nhanh, ten_chi_nhanh, dia_chi_chi_nhanh = dia_chi, sdt_cn FROM chi_nhanh) CN ON CN.ma_chi_nhanh = HD.ma_chi_nhanh
            JOIN (SELECT ma_khu_vuc, ten_khu_vuc, phi_kv = (SELECT '' + CAST((phi_kv - 1)*100 as nvarchar(max)) + '%') FROM khu_vuc) KV ON KV.ma_khu_vuc = HD.ma_khu_vuc
            JOIN (SELECT ma_kh, ten_kh, sdt, da_tich_luy = tich_luy FROM khach_hang) KH ON KH.ma_kh = HD.ma_kh
        END
    END
    ELSE
    BEGIN
        --------Tạo Biến Table xử lý
        DECLARE @SEARCH_HOA_DON TABLE (
            so_hd int,
            hinh_thuc_mua bit,
            ngay_thanh_toan datetime,
            tong_tien FLOAT,
            thanh_toan bit,
            ma_nv NCHAR(12),
            ten_nv NVARCHAR(80),
            ma_chi_nhanh CHAR(4),
            ten_chi_nhanh NVARCHAR(80),
            dia_chi_chi_nhanh NVARCHAR(100),
            sdt_cn CHAR(10),
            ma_khu_vuc CHAR(1),
            ten_khu_vuc NVARCHAR(12),
            phi_kv CHAR(4),
            ma_kh INT,
            ten_kh NVARCHAR(80),
            da_tich_luy float,
            ma_khuyen_mai TINYINT
        )
        --------CONFIGURE Hình thức mua
        IF @HINH_THUC_MUA IS NOT NULL
        BEGIN
            INSERT INTO @SEARCH_HOA_DON(so_hd, 
            hinh_thuc_mua, 
            ngay_thanh_toan,
            tong_tien,
            thanh_toan,
            ma_nv,
            ten_nv,
            ma_chi_nhanh,
            ten_chi_nhanh,
            dia_chi_chi_nhanh,
            sdt_cn,
            ma_khu_vuc,
            ten_khu_vuc,
            phi_kv,
            ma_kh,
            ten_kh,
            da_tich_luy,
			ma_khuyen_mai
            )
            SELECT HD.so_hd, HD.hinh_thuc_mua, HD.ngay_thanh_toan, HD.tong_tien, HD.thanh_toan,
                    NV.ma_nv, NV.ten_nv,
                    CN.ma_chi_nhanh, CN.ten_chi_nhanh, CN.dia_chi_chi_nhanh, CN.sdt_cn,
                    KV.ma_khu_vuc, KV.ten_khu_vuc, KV.phi_kv,
                    KH.ma_kh, KH.ten_kh, KH.da_tich_luy,
                    ma_khuyen_mai
            FROM (SELECT so_hd, ma_chi_nhanh, ma_nv, ma_khuyen_mai, ma_khu_vuc, ma_kh, hinh_thuc_mua, ngay_thanh_toan, tong_tien, thanh_toan FROM hoa_don 
                    WHERE hinh_thuc_mua = @HINH_THUC_MUA) HD
            JOIN (SELECT ma_nv, ten_nv from nhan_vien) NV on HD.ma_nv = NV.ma_nv
            JOIN (SELECT ma_chi_nhanh, ten_chi_nhanh, dia_chi_chi_nhanh = dia_chi, sdt_cn FROM chi_nhanh) CN ON CN.ma_chi_nhanh = HD.ma_chi_nhanh
            JOIN (SELECT ma_khu_vuc, ten_khu_vuc, phi_kv = (SELECT '' + CAST((phi_kv - 1)*100 as nvarchar(max)) + '%') FROM khu_vuc) KV ON KV.ma_khu_vuc = HD.ma_khu_vuc
            JOIN (SELECT ma_kh, ten_kh, sdt, da_tich_luy = tich_luy FROM khach_hang) KH ON KH.ma_kh = HD.ma_kh
        END
        ELSE
        BEGIN
            INSERT INTO @SEARCH_HOA_DON(so_hd, 
            hinh_thuc_mua, 
            ngay_thanh_toan,
            tong_tien,
            thanh_toan,
            ma_nv,
            ten_nv,
            ma_chi_nhanh,
            ten_chi_nhanh,
            dia_chi_chi_nhanh,
            sdt_cn,
            ma_khu_vuc,
            ten_khu_vuc,
            phi_kv,
            ma_kh,
            ten_kh,
            da_tich_luy,
			ma_khuyen_mai)
            SELECT HD.so_hd, HD.hinh_thuc_mua, HD.ngay_thanh_toan, HD.tong_tien, HD.thanh_toan,
                    NV.ma_nv, NV.ten_nv,
                    CN.ma_chi_nhanh, CN.ten_chi_nhanh, CN.dia_chi_chi_nhanh, CN.sdt_cn,
                    KV.ma_khu_vuc, KV.ten_khu_vuc, KV.phi_kv,
                    KH.ma_kh, KH.ten_kh, KH.da_tich_luy, ma_khuyen_mai
            FROM (SELECT so_hd, ma_chi_nhanh, ma_nv, ma_khuyen_mai, ma_khu_vuc, ma_kh, hinh_thuc_mua, ngay_thanh_toan, tong_tien, thanh_toan FROM hoa_don ) HD
            JOIN (SELECT ma_nv, ten_nv from nhan_vien) NV on HD.ma_nv = NV.ma_nv
            JOIN (SELECT ma_chi_nhanh, ten_chi_nhanh, dia_chi_chi_nhanh = dia_chi, sdt_cn FROM chi_nhanh) CN ON CN.ma_chi_nhanh = HD.ma_chi_nhanh
            JOIN (SELECT ma_khu_vuc, ten_khu_vuc, phi_kv = (SELECT '' + CAST((phi_kv - 1)*100 as nvarchar(max)) + '%') FROM khu_vuc) KV ON KV.ma_khu_vuc = HD.ma_khu_vuc
            JOIN (SELECT ma_kh, ten_kh, sdt, da_tich_luy = tich_luy FROM khach_hang) KH ON KH.ma_kh = HD.ma_kh
        END
				----LỌC THỜI GIAN
		IF @FROM_DATE IS NOT NULL
		BEGIN
			IF @FROM_DATE > CAST(GETDATE() + 1 as date)
				RAISERROR(N'Không thể truy vấn thời gian nhập từ tương lai!',16,1)
			ELSE 
				DELETE FROM @SEARCH_HOA_DON WHERE ngay_thanh_toan < @FROM_DATE
		END
		IF @TO_DATE IS NOT NULL
				BEGIN
			IF @TO_DATE > CAST(GETDATE() + 1 as date)
				RAISERROR(N'Không thể truy vấn thời gian nhập từ tương lai!',16,1)
			ELSE 
				DELETE FROM @SEARCH_HOA_DON WHERE ngay_thanh_toan > @TO_DATE
		END
		-----LỌC TỔNG PHỤ THU
		IF @FROM_PRICE IS NOT NULL
		BEGIN
			IF @FROM_PRICE < 0
				RAISERROR(N'Không thể truy vấn Tổng Tiền Thanh Toán < 0!',16,1)
			ELSE 
				DELETE FROM @SEARCH_HOA_DON WHERE tong_tien < @FROM_PRICE
		END
		IF @TO_PRICE IS NOT NULL
		BEGIN
			IF @TO_PRICE < 0
				RAISERROR(N'Không thể truy vấn Tổng Tiền Thanh Toán < 0!',16,1)
			ELSE 
				DELETE FROM @SEARCH_HOA_DON WHERE tong_tien > @TO_PRICE
		END
        --Lọc theo chi nhánh
        IF @MA_CN IS NOT NULL
        BEGIN
            IF NOT EXISTS (select ma_chi_nhanh from chi_nhanh where ma_chi_nhanh = @MA_CN)
                RAISERROR(N'Không tồn tại Chi Nhánh với mã [%s] HOẶC bạn không có quyền xem Hoá Đơn ở chi nhánh khác!', 16, 1, @MA_CN)
            ELSE
                DELETE FROM @SEARCH_HOA_DON WHERE ma_chi_nhanh <> @MA_CN
        END
        --Lọc theo Nhân Viên
        IF @MA_NV IS NOT NULL
        BEGIN
            IF NOT EXISTS (select ma_nv from nhan_vien where ma_nv = @MA_NV)
                RAISERROR(N'Không tồn tại Nhân Viên với mã [%s] HOẶC Nhân Viên này không làm việc ở Chi Nhánh hiện tại!', 16, 1, @MA_NV)
            ELSE
                DELETE FROM @SEARCH_HOA_DON WHERE ma_nv <> @MA_NV
        END
        --Lọc theo KHÁCH HÀNG
        IF @MA_KH IS NOT NULL
        BEGIN
            IF NOT EXISTS (SELECT ma_kh FROM (select ma_kh from khach_hang UNION select ma_kh from LINK1.CSDLPT_BTL.DBO.khach_hang UNION select ma_kh from LINK2.CSDLPT_BTL.DBO.khach_hang) KH where KH.ma_kh = @MA_NV)
                RAISERROR(N'Không tồn tại Khách Hàng với mã [%d]!', 16, 1, @MA_KH)
            ELSE
                DELETE FROM @SEARCH_HOA_DON WHERE ma_kh <> @MA_KH
        END
        --Lọc theo KHU VỰC
        IF @MA_KV IS NOT NULL
        BEGIN
            IF NOT EXISTS (select ma_khu_vuc from CN_KV where ma_khu_vuc = @MA_KV)
                RAISERROR(N'Không tồn tại Khu Vực với mã [%s] HOẶC Khu Vực này không có ở Chi Nhánh hiện tại!', 16, 1, @MA_KV)
            ELSE
                DELETE FROM @SEARCH_HOA_DON WHERE ma_khu_vuc <> @MA_KV
        END

        ---KẾT THÚC
        IF (SELECT COUNT(*) FROM @SEARCH_HOA_DON) = 0
            RAISERROR(N'Không tìm thấy dữ liệu phù hợp!', 16, 1)
        ELSE
            SELECT * FROM @SEARCH_HOA_DON
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Khach_Hang_Da_Xoa_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Xem_Khach_Hang_Da_Xoa_May_Tram] @MAKH int = null
AS
BEGIN
	IF @MAKH is NULL
	BEGIN
		SELECT [ma_kh]
			,[ma_chi_nhanh]
			,[ten_kh]
			,[sdt]
			,[tich_luy]
			,[ngay_tham_gia]
			,[dia_chi]
			,[gioi_tinh]
			,[ngay_sinh]
		FROM [CSDLPT_BTL].[dbo].[khach_hang]
		WHERE be_deleted = 1
		UNION
		SELECT [ma_kh]
			,[ma_chi_nhanh]
			,[ten_kh]
			,[sdt]
			,[tich_luy]
			,[ngay_tham_gia]
			,[dia_chi]
			,[gioi_tinh]
			,[ngay_sinh]
		FROM [LINK1].[CSDLPT_BTL].[dbo].[khach_hang]
		WHERE be_deleted = 1
		UNION
		SELECT [ma_kh]
			,[ma_chi_nhanh]
			,[ten_kh]
			,[sdt]
			,[tich_luy]
			,[ngay_tham_gia]
			,[dia_chi]
			,[gioi_tinh]
			,[ngay_sinh]
		FROM [LINK2].[CSDLPT_BTL].[dbo].[khach_hang]
		WHERE be_deleted = 1
	END
	ELSE
	BEGIN
		IF EXISTS (select ma_kh from khach_hang where ma_kh = @MAKH)
		BEGIN
			IF EXISTS (select ma_kh from khach_hang where ma_kh = @MAKH and be_deleted = 0)
				RAISERROR(N'Khách hàng với mã: [%d] chưa được xoá!', 16,1, @MAKH)
			ELSE
			BEGIN
				SELECT [ma_kh]
					,[ma_chi_nhanh]
					,[ten_kh]
					,[sdt]
					,[tich_luy]
					,[ngay_tham_gia]
					,[dia_chi]
					,[gioi_tinh]
					,[ngay_sinh]
				FROM [CSDLPT_BTL].[dbo].[khach_hang]
				WHERE be_deleted = 1 and ma_kh = @MAKH
			END
		END
		ELSE IF EXISTS(select ma_kh from LINK1.CSDLPT_BTL.dbo.khach_hang where ma_kh = @MAKH)
		BEGIN
			IF EXISTS (select ma_kh from LINK1.CSDLPT_BTL.dbo.khach_hang where ma_kh = @MAKH and be_deleted = 0)
				RAISERROR(N'Khách hàng với mã: [%d] chưa được xoá!', 16, 1, @MAKH)
			ELSE
			BEGIN
				SELECT [ma_kh]
					,[ma_chi_nhanh]
					,[ten_kh]
					,[sdt]
					,[tich_luy]
					,[ngay_tham_gia]
					,[dia_chi]
					,[gioi_tinh]
					,[ngay_sinh]
				FROM [LINK1].[CSDLPT_BTL].[dbo].[khach_hang]
				WHERE be_deleted = 1 and ma_kh = @MAKH
			END
		END
		ELSE IF EXISTS(select ma_kh from LINK2.CSDLPT_BTL.dbo.khach_hang where ma_kh = @MAKH)
		BEGIN
			IF EXISTS (select ma_kh from LINK2.CSDLPT_BTL.dbo.khach_hang where ma_kh = @MAKH and be_deleted = 0)
				RAISERROR(N'Khách hàng với mã: [%d] chưa được xoá!', 16, 1, @MAKH)
			ELSE
			BEGIN
				SELECT [ma_kh]
					,[ma_chi_nhanh]
					,[ten_kh]
					,[sdt]
					,[tich_luy]
					,[ngay_tham_gia]
					,[dia_chi]
					,[gioi_tinh]
					,[ngay_sinh]
				FROM [LINK2].[CSDLPT_BTL].[dbo].[khach_hang]
				WHERE be_deleted = 1 and ma_kh = @MAKH
			END
		END
		ELSE
			RAISERROR(N'Khách hàng với mã: [%d] không tồn tại!', 16,1, @MAKH)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Khach_Hang_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Xem_Khach_Hang_May_Tram] @MAKH int = null
AS
BEGIN
	IF @MAKH is NULL
	BEGIN
		SELECT [ma_kh]
			,[ma_chi_nhanh]
			,[ten_kh]
			,[sdt]
			,[tich_luy]
			,[ngay_tham_gia]
			,[dia_chi]
			,[gioi_tinh]
			,[ngay_sinh]
		FROM [CSDLPT_BTL].[dbo].[khach_hang]
		WHERE be_deleted = 0
		UNION
		SELECT [ma_kh]
			,[ma_chi_nhanh]
			,[ten_kh]
			,[sdt]
			,[tich_luy]
			,[ngay_tham_gia]
			,[dia_chi]
			,[gioi_tinh]
			,[ngay_sinh]
		FROM [LINK1].[CSDLPT_BTL].[dbo].[khach_hang]
		WHERE be_deleted = 0
		UNION
		SELECT [ma_kh]
			,[ma_chi_nhanh]
			,[ten_kh]
			,[sdt]
			,[tich_luy]
			,[ngay_tham_gia]
			,[dia_chi]
			,[gioi_tinh]
			,[ngay_sinh]
		FROM [LINK2].[CSDLPT_BTL].[dbo].[khach_hang]
		WHERE be_deleted = 0
	END
	ELSE
	BEGIN
		IF EXISTS (select ma_kh from khach_hang where ma_kh = @MAKH)
		BEGIN
			IF EXISTS (select ma_kh from khach_hang where ma_kh = @MAKH and be_deleted = 1)
				RAISERROR(N'Khách hàng với mã: [%d] đã được xoá!', 16,1, @MAKH)
			ELSE
			BEGIN
				SELECT [ma_kh]
					,[ma_chi_nhanh]
					,[ten_kh]
					,[sdt]
					,[tich_luy]
					,[ngay_tham_gia]
					,[dia_chi]
					,[gioi_tinh]
					,[ngay_sinh]
				FROM [CSDLPT_BTL].[dbo].[khach_hang]
				WHERE be_deleted = 0 and ma_kh = @MAKH
			END
		END
		ELSE IF EXISTS(select ma_kh from LINK1.CSDLPT_BTL.dbo.khach_hang where ma_kh = @MAKH)
		BEGIN
			IF EXISTS (select ma_kh from LINK1.CSDLPT_BTL.dbo.khach_hang where ma_kh = @MAKH and be_deleted = 1)
				RAISERROR(N'Khách hàng với mã: [%d] đã được xoá!', 16, 1, @MAKH)
			ELSE
			BEGIN
				SELECT [ma_kh]
					,[ma_chi_nhanh]
					,[ten_kh]
					,[sdt]
					,[tich_luy]
					,[ngay_tham_gia]
					,[dia_chi]
					,[gioi_tinh]
					,[ngay_sinh]
				FROM [LINK1].[CSDLPT_BTL].[dbo].[khach_hang]
				WHERE be_deleted = 0 and ma_kh = @MAKH
			END
		END
		ELSE IF EXISTS(select ma_kh from LINK2.CSDLPT_BTL.dbo.khach_hang where ma_kh = @MAKH)
		BEGIN
			IF EXISTS (select ma_kh from LINK2.CSDLPT_BTL.dbo.khach_hang where ma_kh = @MAKH and be_deleted = 1)
				RAISERROR(N'Khách hàng với mã: [%d] đã được xoá!', 16, 1, @MAKH)
			ELSE
			BEGIN
				SELECT [ma_kh]
					,[ma_chi_nhanh]
					,[ten_kh]
					,[sdt]
					,[tich_luy]
					,[ngay_tham_gia]
					,[dia_chi]
					,[gioi_tinh]
					,[ngay_sinh]
				FROM [LINK2].[CSDLPT_BTL].[dbo].[khach_hang]
				WHERE be_deleted = 0 and ma_kh = @MAKH
			END
		END
		ELSE
			RAISERROR(N'Khách hàng với mã: [%d] không tồn tại!', 16,1, @MAKH)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Khu_Vuc]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_Xem_Khu_Vuc] @MAKV char(1) = NULL
AS
BEGIN
    IF @MAKV is NULL
    BEGIN
        SELECT [ma_khu_vuc]
        ,[ten_khu_vuc]
        ,[phi_kv]
        FROM [CSDLPT_BTL].[dbo].[khu_vuc]
        WHERE be_deleted = 0
    END
    ELSE
    BEGIN
		IF NOT EXISTS (select ma_khu_vuc from khu_vuc where ma_khu_vuc = @MAKV)
            RAISERROR(N'Khu vực có mã [%s] không tồn tại!', 16, 1, @MAKV)
        ELSE IF EXISTS (select ma_khu_vuc from khu_vuc where ma_khu_vuc = @MAKV and be_deleted = 1)
		BEGIN
			DECLARE @TENKV nvarchar(50) = (select ten_khu_vuc from khu_vuc where ma_khu_vuc = @MAKV and be_deleted = 1)
            RAISERROR(N'Khu vực: [Mã khu vực: %s, Tên khu vực: %s] đã được xoá!', 16, 1, @MAKV, @TENKV)
		END
        SELECT [ma_khu_vuc]
        ,[ten_khu_vuc]
        ,[phi_kv]
        FROM [CSDLPT_BTL].[dbo].[khu_vuc]
        WHERE be_deleted = 0 and ma_khu_vuc = @MAKV
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Khu_Vuc_Cua_Chi_Nhanh]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_Xem_Khu_Vuc_Cua_Chi_Nhanh] @MA_CN char(4), @MA_KV char(1) = NULL
as
BEGIN
	IF NOT EXISTS (SELECT ma_chi_nhanh from chi_nhanh where ma_chi_nhanh = @MA_CN)
		RAISERROR(N'Không tồn tại Chi Nhánh với mã: [%s]!', 16,1, @MA_CN)
	ELSE
	BEGIN
		IF @MA_KV IS NULL
		BEGIN
			SELECT kv.ma_khu_vuc, kv.ten_khu_vuc, kv.phi_kv, kv.be_deleted FROM (select ma_chi_nhanh, ma_khu_vuc FROM CN_KV WHERE ma_chi_nhanh = @MA_CN) ck
							join (select ma_khu_vuc, ten_khu_vuc, phi_kv, be_deleted FROM khu_vuc) kv  on kv.ma_khu_vuc = ck.ma_khu_vuc
		END
		ELSE
		BEGIN
			SELECT kv.ma_khu_vuc, kv.ten_khu_vuc, kv.phi_kv, kv.be_deleted FROM (select ma_chi_nhanh, ma_khu_vuc FROM CN_KV WHERE ma_chi_nhanh = @MA_CN) ck
				join (select ma_khu_vuc, ten_khu_vuc, phi_kv, be_deleted FROM khu_vuc where ma_khu_vuc = @MA_KV) kv  on kv.ma_khu_vuc = ck.ma_khu_vuc
		END
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Khu_Vuc_Da_Xoa]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Xem_Khu_Vuc_Da_Xoa] @MAKV char(1) = NULL
AS
BEGIN
    IF @MAKV is NULL
    BEGIN
        SELECT [ma_khu_vuc]
        ,[ten_khu_vuc]
        ,[phi_kv]
        FROM [CSDLPT_BTL].[dbo].[khu_vuc]
        WHERE be_deleted = 1
    END
    ELSE
    BEGIN
		IF NOT EXISTS (select ma_khu_vuc from khu_vuc where ma_khu_vuc = @MAKV)
            RAISERROR(N'Khu vực có mã [%s] không tồn tại!', 16, 1, @MAKV)
        ELSE IF EXISTS (select ma_khu_vuc from khu_vuc where ma_khu_vuc = @MAKV and be_deleted = 0)
		BEGIN
			DECLARE @TENKV nvarchar(50) = (select ten_khu_vuc from khu_vuc where ma_khu_vuc = @MAKV and be_deleted = 0)
            RAISERROR(N'Khu vực: [Mã khu vực: %s, Tên khu vực: %s] chưa hề được xoá!', 16, 1, @MAKV, @TENKV)
		END
        ELSE
        SELECT [ma_khu_vuc]
        ,[ten_khu_vuc]
        ,[phi_kv]
        FROM [CSDLPT_BTL].[dbo].[khu_vuc]
        WHERE be_deleted = 1 and ma_khu_vuc = @MAKV
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Loai_Hinh_Chi]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Xem_Loai_Hinh_Chi] @MALC tinyint = NULL
AS
BEGIN
	IF @MALC is null
	BEGIN
		SELECT [ma_loai_chi]
      	,[ten_loai_chi]
		FROM [CSDLPT_BTL].[dbo].[loai_hinh_chi]
		WHERE be_deleted = 0
	END
	ELSE
	BEGIN
		IF NOT EXISTS (select ma_loai_chi from loai_hinh_chi where ma_loai_chi = @MALC)
			RAISERROR(N'Loại hình chi với mã: [%d] không tồn tại!', 16, 1, @MALC)
		ELSE IF EXISTS (SELECT ma_loai_chi from loai_hinh_chi WHERE ma_loai_chi = @MALC and be_deleted = 1)
			RAISERROR(N'Loại hình chi với mã: [%d] đã được xoá!', 16, 1, @MALC)
		ELSE
		BEGIN
			SELECT [ma_loai_chi]
			,[ten_loai_chi]
			FROM [CSDLPT_BTL].[dbo].[loai_hinh_chi]
			WHERE be_deleted = 0 and ma_loai_chi = @MALC
		END
	END	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Loai_Hinh_Chi_Da_Xoa]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_Xem_Loai_Hinh_Chi_Da_Xoa] @MALC tinyint = NULL
AS
BEGIN
	IF @MALC is null
	BEGIN
		SELECT [ma_loai_chi]
      	,[ten_loai_chi]
		FROM [CSDLPT_BTL].[dbo].[loai_hinh_chi]
		WHERE be_deleted = 1
	END
	ELSE
	BEGIN
		IF NOT EXISTS (select ma_loai_chi from loai_hinh_chi where ma_loai_chi = @MALC)
			RAISERROR(N'Loại hình chi với mã: [%d] không tồn tại!', 16, 1, @MALC)
		ELSE IF EXISTS (SELECT ma_loai_chi from loai_hinh_chi WHERE ma_loai_chi = @MALC and be_deleted = 0)
			RAISERROR(N'Loại hình chi với mã: [%d] chưa được xoá!', 16, 1, @MALC)
		ELSE
		BEGIN
			SELECT [ma_loai_chi]
			,[ten_loai_chi]
			FROM [CSDLPT_BTL].[dbo].[loai_hinh_chi]
			WHERE be_deleted = 1 and ma_loai_chi = @MALC
		END
	END	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Nguyen_Lieu]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Xem_Nguyen_Lieu] @Ma_NL smallint = null
as
begin
	IF(@Ma_NL is null)
	begin
		SELECT [ma_nl]
			  ,[ten_nl]
			  ,[don_vi_do]
		FROM [CSDLPT_BTL].[dbo].[nguyen_lieu]
		WHERE be_deleted = 0
	end
	else
	begin
		IF NOT EXISTS (select ma_nl from nguyen_lieu where ma_nl = @Ma_NL )
            RAISERROR(N'Nguyên liệu có mã [%d] không tồn tại!', 16, 1, @Ma_NL)
        ELSE IF EXISTS (select ma_nl from nguyen_lieu where ma_nl = @Ma_NL and be_deleted = 0)
            RAISERROR(N'Nguyên liệu có mã [%d] chưa hề được xoá!', 16, 1, @Ma_NL)
        ELSE
		SELECT [ma_nl]
			  ,[ten_nl]
			  ,[don_vi_do]
		FROM [CSDLPT_BTL].[dbo].[nguyen_lieu]
		WHERE be_deleted = 0 and ma_nl = @Ma_NL
	end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Nguyen_Lieu_Da_xoa]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Xem_Nguyen_Lieu_Da_xoa] @Ma_NL smallint = null
as
begin
	IF(@Ma_NL is null)
	begin
		SELECT [ma_nl]
			  ,[ten_nl]
			  ,[don_vi_do]
		FROM [CSDLPT_BTL].[dbo].[nguyen_lieu]
		WHERE be_deleted = 1
	end
	else
	begin
		IF NOT EXISTS (select ma_nl from nguyen_lieu where ma_nl = @Ma_NL )
            RAISERROR(N'Nguyên liệu có mã [%d] không tồn tại!', 16, 1, @Ma_NL)
        ELSE IF EXISTS (select ma_nl from nguyen_lieu where ma_nl = @Ma_NL and be_deleted = 0)
            RAISERROR(N'Nguyên liệu có mã [%d] chưa hề được xoá!', 16, 1, @Ma_NL)
        ELSE
        BEGIN
			SELECT [ma_nl]
				  ,[ten_nl]
				  ,[don_vi_do]
			FROM [CSDLPT_BTL].[dbo].[nguyen_lieu]
			WHERE be_deleted = 1 and ma_nl = @Ma_NL
		END
	end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Nguyen_Lieu_Kho_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Xem_Nguyen_Lieu_Kho_May_Tram] @MA_NLK SMALLINT = NULL,
                                        @MA_CN CHAR(4) = NULL
AS
BEGIN
    IF @MA_NLK IS NULL
    BEGIN
        IF @MA_CN IS NULL
        SELECT NL.ma_nl, ma_nl_kho, ma_chi_nhanh, ten_nl, don_vi_do, ton_kho, gia_von, be_deleted FROM (SELECT ma_nl, ten_nl, don_vi_do from nguyen_lieu) NL
                JOIN   (SELECT ma_nl, ma_nl_kho, ma_chi_nhanh, ton_kho, gia_von, be_deleted from nguyen_lieu_kho) NLK on NL.ma_nl = NLK.ma_nl_kho
        ELSE
        BEGIN
        IF NOT EXISTS (SELECT ma_chi_nhanh from chi_nhanh WHERE ma_chi_nhanh = @MA_CN)
            RAISERROR(N'Chi Nhánh với mã [%s] không tồn tại hoặc bạn không có quyền xem thông tin nguyên liệu kho tại chi nhánh khác!', 16, 1, @Ma_CN)
        ELSE
            SELECT NL.ma_nl, ma_nl_kho, ma_chi_nhanh, ten_nl, don_vi_do, ton_kho, gia_von, be_deleted FROM (SELECT ma_nl, ten_nl, don_vi_do from nguyen_lieu) NL
                JOIN   (SELECT ma_nl, ma_nl_kho, ma_chi_nhanh, ton_kho, gia_von, be_deleted from nguyen_lieu_kho WHERE ma_chi_nhanh = @MA_CN) NLK on NL.ma_nl = NLK.ma_nl_kho
        END
    END
    ELSE 
    BEGIN
        IF EXISTS (SELECT ma_nl_kho from nguyen_lieu_kho where ma_nl_kho = @MA_NLK)
            SELECT NL.ma_nl, ma_nl_kho, ma_chi_nhanh, ten_nl, don_vi_do, ton_kho, gia_von, be_deleted FROM (SELECT ma_nl, ten_nl, don_vi_do from nguyen_lieu) NL
                JOIN   (SELECT ma_nl, ma_nl_kho, ma_chi_nhanh, ton_kho, gia_von, be_deleted from nguyen_lieu_kho WHERE ma_nl_kho = @MA_NLK) NLK on NL.ma_nl = NLK.ma_nl_kho
        ELSE
            RAISERROR(N'Nguyên liệu kho với mã [%d] không tồn tại hoặc bạn không có quyền xem thông tin nguyên liệu kho tại chi nhánh khác!', 16, 1, @Ma_NLK)
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Nha_Cung_Cap_Da_Xoa_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Xem_Nha_Cung_Cap_Da_Xoa_May_Tram] @MA_NCC TINYINT = NULL
AS
BEGIN
    IF @MA_NCC is NULL
    BEGIN
        SELECT [ma_ncc]
            ,[ten_ncc]
            ,[sdt_ncc]
            ,[dia_chi_ncc]
            ,[ma_chi_nhanh]
        FROM [CSDLPT_BTL].[dbo].[nha_cung_cap]
        WHERE be_deleted = 1
    END
    ELSE
    BEGIN 
        IF NOT EXISTS (select ma_ncc from nha_cung_cap where ma_ncc = @MA_NCC)
            RAISERROR(N'Không tồn tại nhà cung cấp với mã: [%d]! Hoặc bạn không có quyền thay đổi thông tin nhà cung cấp ở chi nhánh khác!', 16, 1, @MA_NCC)
        ELSE IF (select be_deleted from nha_cung_cap where ma_ncc = @MA_NCC) = 0
            RAISERROR(N'Thông tin về nhà cung cấp với mã: [%d] chưa được xoá!', 16, 1, @MA_NCC)
        ELSE
        BEGIN
            SELECT [ma_ncc]
                ,[ten_ncc]
                ,[sdt_ncc]
                ,[dia_chi_ncc]
                ,[ma_chi_nhanh]
            FROM [CSDLPT_BTL].[dbo].[nha_cung_cap]
            WHERE be_deleted = 1 AND ma_ncc = @MA_NCC
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Nha_Cung_Cap_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Xem_Nha_Cung_Cap_May_Tram] @MA_NCC TINYINT = NULL
AS
BEGIN
    IF @MA_NCC is NULL
    BEGIN
        SELECT [ma_ncc]
            ,[ten_ncc]
            ,[sdt_ncc]
            ,[dia_chi_ncc]
            ,[ma_chi_nhanh]
        FROM [CSDLPT_BTL].[dbo].[nha_cung_cap]
        WHERE be_deleted = 0
    END
    ELSE
    BEGIN 
        IF NOT EXISTS (select ma_ncc from nha_cung_cap where ma_ncc = @MA_NCC)
            RAISERROR(N'Không tồn tại nhà cung cấp với mã: [%d]! Hoặc bạn không có quyền thay đổi thông tin nhà cung cấp ở chi nhánh khác!', 16, 1, @MA_NCC)
        ELSE IF (select be_deleted from nha_cung_cap where ma_ncc = @MA_NCC) = 1
            RAISERROR(N'Thông tin về nhà cung cấp với mã: [%d] đã được xoá!', 16, 1, @MA_NCC)
        ELSE
        BEGIN
            SELECT [ma_ncc]
                ,[ten_ncc]
                ,[sdt_ncc]
                ,[dia_chi_ncc]
                ,[ma_chi_nhanh]
            FROM [CSDLPT_BTL].[dbo].[nha_cung_cap]
            WHERE be_deleted = 0 AND ma_ncc = @MA_NCC
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Nhan_Vien_Da_Xoa_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_Xem_Nhan_Vien_Da_Xoa_May_Tram] @MA_NV CHAR(12) = NULL
AS
BEGIN
    IF @MA_NV IS NULL
    BEGIN
        SELECT [ma_nv]
        ,[ma_chi_nhanh]
        ,[ma_chuc_vu]
        ,[ten_nv]
        ,[cmnd]
        ,[gioi_tinh]
        ,[ngay_sinh]
        ,[dia_chi_nv]
        ,[sdt_nv]
        ,[thu_viec]
        ,[ngay_nhap_viec]
        ,[he_so_luong]
        ,[anh_dai_dien]
        ,[be_deleted]
        FROM [CSDLPT_BTL].[dbo].[nhan_vien]
        WHERE be_deleted = 1
    END
    ELSE
    BEGIN
        IF NOT EXISTS (SELECT ma_nv FROM nhan_vien where ma_nv = @MA_NV)
            RAISERROR(N'Nhân viên với mã: [%s] không tồn tại HOẶC bạn không có quyền XEM thông tin nhân viên ở chi nhánh khác!', 16, 1, @MA_NV)
        ELSE IF (SELECT be_deleted from nhan_vien where ma_nv = @MA_NV) = 0
            RAISERROR(N'Thông tin nhân viên với mã: [%s] chưa được xoá!', 16, 1, @MA_NV)
        ELSE
        BEGIN
            SELECT [ma_nv]
            ,[ma_chi_nhanh]
            ,[ma_chuc_vu]
            ,[ten_nv]
            ,[cmnd]
            ,[gioi_tinh]
            ,[ngay_sinh]
            ,[dia_chi_nv]
            ,[sdt_nv]
            ,[thu_viec]
            ,[ngay_nhap_viec]
            ,[he_so_luong]
            ,[anh_dai_dien]
            ,[be_deleted]
            FROM [CSDLPT_BTL].[dbo].[nhan_vien]
            WHERE be_deleted = 1 and ma_nv = @MA_NV
        END
    
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Nhan_Vien_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Xem_Nhan_Vien_May_Tram] @MA_NV CHAR(12) = NULL
AS
BEGIN
    IF @MA_NV IS NULL
    BEGIN
        SELECT [ma_nv]
        ,[ma_chi_nhanh]
        ,[ma_chuc_vu]
        ,[ten_nv]
        ,[cmnd]
        ,[gioi_tinh]
        ,[ngay_sinh]
        ,[dia_chi_nv]
        ,[sdt_nv]
        ,[thu_viec]
        ,[ngay_nhap_viec]
        ,[he_so_luong]
        ,[anh_dai_dien]
        ,[be_deleted]
        FROM [CSDLPT_BTL].[dbo].[nhan_vien]
        WHERE be_deleted = 0
    END
    ELSE
    BEGIN
        IF NOT EXISTS (SELECT ma_nv FROM nhan_vien where ma_nv = @MA_NV)
            RAISERROR(N'Nhân viên với mã: [%s] không tồn tại HOẶC bạn không có quyền XEM thông tin nhân viên ở chi nhánh khác!', 16, 1, @MA_NV)
        ELSE IF (SELECT be_deleted from nhan_vien where ma_nv = @MA_NV) = 1
            RAISERROR(N'Thông tin nhân viên với mã: [%s] đã được xoá!', 16, 1, @MA_NV)
        ELSE
        BEGIN
            SELECT [ma_nv]
            ,[ma_chi_nhanh]
            ,[ma_chuc_vu]
            ,[ten_nv]
            ,[cmnd]
            ,[gioi_tinh]
            ,[ngay_sinh]
            ,[dia_chi_nv]
            ,[sdt_nv]
            ,[thu_viec]
            ,[ngay_nhap_viec]
            ,[he_so_luong]
            ,[anh_dai_dien]
            ,[be_deleted]
            FROM [CSDLPT_BTL].[dbo].[nhan_vien]
            WHERE be_deleted = 0 and ma_nv = @MA_NV
        END
    
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Phan_Cong]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Xem_Phan_Cong] @MA_NV NCHAR(12) = NULL, @MA_CN CHAR(4) = NULL
AS
BEGIN
	IF @MA_NV IS NULL AND @MA_CN IS NULL
	BEGIN
		SELECT NV.ma_nv, NV.ten_nv, NV.anh_dai_dien, CN.ma_chi_nhanh, CN.ten_chi_nhanh, LLV.id,ngay_trong_tuan = (SELECT DBO.fn_Lay_Ten_Ngay_Trong_Tuan(LLV.ngay_trong_tuan)) , LLV.ca_trong_ngay, LLV.thuong_theo_ca, LLV.ghi_chu, LLV.gio_nhan_ca, LLV.gio_tan_ca  
			FROM (SELECT ma_nv, ten_nv, anh_dai_dien FROM nhan_vien WHERE ma_nv = @MA_NV) NV
					JOIN (SELECT ma_nv, ma_chi_nhanh, id FROM phan_cong) PC ON NV.ma_nv = PC.ma_nv
					JOIN (SELECT ma_chi_nhanh, ten_chi_nhanh FROM chi_nhanh) CN ON PC.ma_chi_nhanh = CN.ma_chi_nhanh
					JOIN (SELECT id, ngay_trong_tuan, ca_trong_ngay, thuong_theo_ca, ghi_chu, gio_nhan_ca, gio_tan_ca FROM lich_lam_viec_parttime_dlcd) LLV ON PC.id = LLV.id
	END
	ELSE
	BEGIN
		IF @MA_NV IS NOT NULL
		BEGIN
			SELECT NV.ma_nv, NV.ten_nv, NV.anh_dai_dien, CN.ma_chi_nhanh, CN.ten_chi_nhanh, LLV.id,ngay_trong_tuan = (SELECT DBO.fn_Lay_Ten_Ngay_Trong_Tuan(LLV.ngay_trong_tuan)) , LLV.ca_trong_ngay, LLV.thuong_theo_ca, LLV.ghi_chu, LLV.gio_nhan_ca, LLV.gio_tan_ca  
			FROM (SELECT ma_nv, ten_nv, anh_dai_dien FROM nhan_vien WHERE ma_nv = @MA_NV) NV
					JOIN (SELECT ma_nv, ma_chi_nhanh, id FROM phan_cong WHERE ma_nv = @MA_NV) PC ON NV.ma_nv = PC.ma_nv
					JOIN (SELECT ma_chi_nhanh, ten_chi_nhanh FROM chi_nhanh) CN ON PC.ma_chi_nhanh = CN.ma_chi_nhanh
					JOIN (SELECT id, ngay_trong_tuan, ca_trong_ngay, thuong_theo_ca, ghi_chu, gio_nhan_ca, gio_tan_ca FROM lich_lam_viec_parttime_dlcd) LLV ON PC.id = LLV.id
		END
		ELSE IF @MA_CN IS NOT NULL
		BEGIN
			SELECT NV.ma_nv, NV.ten_nv, NV.anh_dai_dien, CN.ma_chi_nhanh, CN.ten_chi_nhanh, LLV.id,ngay_trong_tuan = (SELECT DBO.fn_Lay_Ten_Ngay_Trong_Tuan(LLV.ngay_trong_tuan)) , LLV.ca_trong_ngay, LLV.thuong_theo_ca, LLV.ghi_chu, LLV.gio_nhan_ca, LLV.gio_tan_ca  
				FROM (SELECT ma_nv, ten_nv, anh_dai_dien FROM nhan_vien WHERE ma_nv = @MA_NV) NV
						JOIN (SELECT ma_nv, ma_chi_nhanh, id FROM phan_cong WHERE ma_chi_nhanh = @MA_CN) PC ON NV.ma_nv = PC.ma_nv
						JOIN (SELECT ma_chi_nhanh, ten_chi_nhanh FROM chi_nhanh WHERE ma_chi_nhanh = @MA_CN) CN ON PC.ma_chi_nhanh = CN.ma_chi_nhanh
						JOIN (SELECT id, ngay_trong_tuan, ca_trong_ngay, thuong_theo_ca, ghi_chu, gio_nhan_ca, gio_tan_ca FROM lich_lam_viec_parttime_dlcd) LLV ON PC.id = LLV.id
		END
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Phieu_Chi_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Xem_Phieu_Chi_May_Tram] 
    @SO_PC INT = NULL,
    @FROM_DATE DATETIME = NULL,
    @TO_DATE DATETIME = NULL,
    @MA_NV NCHAR(12) = NULL,
    @MA_CN CHAR(4) = NULL,
    @MA_LOAI_CHI TINYINT = NULL,
    @FROM_PRICE FLOAT = NULL,
    @TO_PRICE FLOAT = NULL
AS
BEGIN
    IF @SO_PC IS NOT NULL
    BEGIN
        IF NOT EXISTS (SELECT so_phieu_chi FROM phieu_chi WHERE so_phieu_chi = @SO_PC)
            RAISERROR(N'Không tồn tại Phiếu Chi với số phiếu = [%d] tại Chi Nhánh hiện tại!', 16, 1, @SO_PC)
        ELSE
        BEGIN
            SELECT PC.so_phieu_chi, 
                    LHC.ma_loai_chi, LHC.ten_loai_chi, 
                    PC.ngay_chi, PC.tong_tien_chi, 
                    NV.ma_nv, NV.ten_nv, 
                    CN.ma_chi_nhanh, CN.ten_chi_nhanh
            FROM (SELECT ma_nv, ten_nv FROM nhan_vien) NV 
            JOIN (SELECT so_phieu_chi, ma_nv, ma_loai_chi, ma_chi_nhanh, tong_tien_chi, ngay_chi FROM phieu_chi WHERE so_phieu_chi = @SO_PC) PC on PC.ma_nv = NV.ma_nv
            JOIN (SELECT ma_chi_nhanh, ten_chi_nhanh from chi_nhanh) CN on CN.ma_chi_nhanh = PC.ma_chi_nhanh
            JOIN (SELECT ma_loai_chi, ten_loai_chi FROM loai_hinh_chi) LHC on LHC.ma_loai_chi = PC.ma_loai_chi
        END
    END
    ELSE
    BEGIN
        ---Tạo biến table chứa dữ liệu query không điều kiện
        DECLARE @SEARCH_PC TABLE (
            so_phieu_chi int,
            ma_loai_chi TINYINT,
            ten_loai_chi NVARCHAR(30),
            ngay_chi DATETIME,
            tong_tien_chi FLOAT,
            ma_nv NCHAR(12),
            ten_nv NVARCHAR(80),
            ma_chi_nhanh CHAR(4),
            ten_chi_nhanh NVARCHAR(50)
        )
        INSERT INTO @SEARCH_PC(so_phieu_chi, ma_loai_chi, ten_loai_chi, ngay_chi, tong_tien_chi, ma_nv, ten_nv, ma_chi_nhanh, ten_chi_nhanh)
        SELECT PC.so_phieu_chi, 
                LHC.ma_loai_chi, LHC.ten_loai_chi, 
                PC.ngay_chi, PC.tong_tien_chi, 
                NV.ma_nv, NV.ten_nv, 
                CN.ma_chi_nhanh, CN.ten_chi_nhanh
        FROM (SELECT ma_nv, ten_nv FROM nhan_vien) NV 
        JOIN (SELECT so_phieu_chi, ma_nv, ma_loai_chi, ma_chi_nhanh, tong_tien_chi, ngay_chi FROM phieu_chi) PC on PC.ma_nv = NV.ma_nv
        JOIN (SELECT ma_chi_nhanh, ten_chi_nhanh from chi_nhanh) CN on CN.ma_chi_nhanh = PC.ma_chi_nhanh
        JOIN (SELECT ma_loai_chi, ten_loai_chi FROM loai_hinh_chi) LHC on LHC.ma_loai_chi = PC.ma_loai_chi

		----LỌC THỜI GIAN
		IF @FROM_DATE IS NOT NULL
		BEGIN
			IF @FROM_DATE > CAST(GETDATE() + 1 as date)
				RAISERROR(N'Không thể truy vấn thời gian nhập từ tương lai!',16,1)
			ELSE 
				DELETE FROM @SEARCH_PC WHERE ngay_chi < @FROM_DATE
		END
		IF @TO_DATE IS NOT NULL
				BEGIN
			IF @TO_DATE > CAST(GETDATE() + 1 as date)
				RAISERROR(N'Không thể truy vấn thời gian nhập từ tương lai!',16,1)
			ELSE 
				DELETE FROM @SEARCH_PC WHERE ngay_chi > @TO_DATE
		END
		-----LỌC TỔNG PHỤ THU
		IF @FROM_PRICE IS NOT NULL
		BEGIN
			IF @FROM_PRICE < 0
				RAISERROR(N'Không thể truy vấn Tổng Chi < 0!',16,1)
			ELSE 
				DELETE FROM @SEARCH_PC WHERE tong_tien_chi < @FROM_PRICE
		END
		IF @TO_PRICE IS NOT NULL
		BEGIN
			IF @TO_PRICE < 0
				RAISERROR(N'Không thể truy vấn Tổng Chi < 0!',16,1)
			ELSE 
				DELETE FROM @SEARCH_PC WHERE tong_tien_chi > @TO_PRICE
		END
        ---Lọc theo mã loại chi
        IF @MA_LOAI_CHI IS NOT NULL
        BEGIN
            IF NOT EXISTS (SELECT ma_loai_chi FROM loai_hinh_chi WHERE ma_loai_chi = @MA_LOAI_CHI)
                RAISERROR(N'Loại Hình Chi với mã loại chi: [%d] không tồn tại!', 16, 1, @MA_LOAI_CHI)
            ELSE
                DELETE FROM @SEARCH_PC WHERE ma_loai_chi <> @MA_LOAI_CHI
        END
        ---Lọc theo mã nhân viên
        IF @MA_NV IS NOT NULL
        BEGIN
            IF NOT EXISTS (SELECT ma_nv from nhan_vien WHERE ma_nv = @MA_NV)
                RAISERROR(N'Nhân Viên với mã nhân viên [%s] không tồn tại ở chi nhánh hiện tại!', 16, 1, @MA_NV)
            ELSE
               DELETE FROM @SEARCH_PC WHERE ma_nv <> @MA_NV 
        END
        ---Lọc theo mã chi nhánh
        IF @MA_CN IS NOT NULL
        BEGIN
            IF NOT EXISTS (SELECT ma_chi_nhanh from chi_nhanh WHERE ma_chi_nhanh = @MA_CN)
                RAISERROR(N'Chi Nhánh với mã chi nhánh [%s] không phải là Chi Nhánh hiện tại!', 16, 1, @MA_CN)
            ELSE
               DELETE FROM @SEARCH_PC WHERE ma_chi_nhanh <> @MA_CN 
        END
		IF (SELECT COUNT(*) FROM @SEARCH_PC) = 0
			RAISERROR(N'Không tìm thấy dữ liệu phù hợp!', 16, 1)
		ELSE
			SELECT * FROM @SEARCH_PC
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Phieu_Nhap_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Xem_Phieu_Nhap_May_Tram]     
	@SO_PN INT = NULL,
	@Ma_CN CHAR(4) = NULL,
    @Ma_NV CHAR(12) = NULL,
    @FROM_DATE DATETIME = NULL,
    @TO_DATE DATETIME = NULL,
    @FROM_TOTAL_PRICE FLOAT = NULL,
    @TO_TOTAL_PRICE FLOAT = NULL
AS
BEGIN
	IF @SO_PN IS NOT NULL
	BEGIN
		IF EXISTS (SELECT so_phieu_nhap from phieu_nhap where so_phieu_nhap = @SO_PN)
		BEGIN
			SELECT so_phieu_nhap, ngay_nhap, tong_tien_nhap, CN.ma_chi_nhanh, CN.ten_chi_nhanh, NV.ma_nv, NV.ten_nv FROM
			(SELECT so_phieu_nhap, ngay_nhap, ma_chi_nhanh, ma_nv, tong_tien_nhap 
			 FROM phieu_nhap 
			 WHERE so_phieu_nhap = @SO_PN
			) PPT
			JOIN (SELECT ma_chi_nhanh, ten_chi_nhanh FROM chi_nhanh) CN on CN.ma_chi_nhanh = PPT.ma_chi_nhanh
			JOIN (SELECT ma_nv, ten_nv FROM nhan_vien) NV on PPT.ma_nv = NV.ma_nv
		END
		ELSE
			RAISERROR(N'Không tồn tại Phiếu Nhập có số phiếu [%d]! HOẶC bạn không có quyền xem Phiếu Nhập ở Chi Nhánh khác!', 16,1, @SO_PN)
	END
	ELSE
	BEGIN
		DECLARE @LIST_PN TABLE(
			so_phieu_nhap INT NULL, 
			ngay_nhap DATETIME NULL, 
			tong_tien_nhap FLOAT NULL, 
			ma_chi_nhanh CHAR(4) NULL, 
			ten_chi_nhanh NVARCHAR(50) NULL, 
			ma_nv NCHAR(12) NULL, 
			ten_nv NVARCHAR(80) NULL
		)
		INSERT INTO @LIST_PN(so_phieu_nhap, ngay_nhap, tong_tien_nhap, ma_chi_nhanh, ten_chi_nhanh, ma_nv,ten_nv)
		SELECT so_phieu_nhap, ngay_nhap, tong_tien_nhap, CN.ma_chi_nhanh, CN.ten_chi_nhanh, NV.ma_nv, NV.ten_nv FROM
		(SELECT so_phieu_nhap, ngay_nhap, ma_chi_nhanh, ma_nv, tong_tien_nhap FROM phieu_nhap ) PPT
		JOIN (SELECT ma_chi_nhanh, ten_chi_nhanh FROM chi_nhanh) CN on CN.ma_chi_nhanh = PPT.ma_chi_nhanh
		JOIN (SELECT ma_nv, ten_nv FROM nhan_vien) NV on PPT.ma_nv = NV.ma_nv

		---------QUERY-------
		----LỌC THỜI GIAN
		IF @FROM_DATE IS NOT NULL
		BEGIN
			IF @FROM_DATE > GETDATE()
				RAISERROR(N'Không thể truy vấn thời gian nhập từ tương lai!',16,1)
			ELSE 
				DELETE FROM @LIST_PN WHERE ngay_nhap < @FROM_DATE
		END
		IF @TO_DATE IS NOT NULL
				BEGIN
			IF @TO_DATE > GETDATE()
				RAISERROR(N'Không thể truy vấn thời gian nhập từ tương lai!',16,1)
			ELSE 
				DELETE FROM @LIST_PN WHERE ngay_nhap > @TO_DATE
		END
		-----LỌC TỔNG PHỤ THU
		IF @FROM_TOTAL_PRICE IS NOT NULL
		BEGIN
			IF @FROM_TOTAL_PRICE < 0
				RAISERROR(N'Không thể truy vấn Tổng Tiền Nhập < 0!',16,1)
			ELSE 
				DELETE FROM @LIST_PN WHERE tong_tien_nhap < @FROM_TOTAL_PRICE
		END
		IF @TO_TOTAL_PRICE IS NOT NULL
		BEGIN
			IF @TO_TOTAL_PRICE < 0
				RAISERROR(N'Không thể truy vấn Tổng Tiền Nhập < 0!',16,1)
			ELSE 
				DELETE FROM @LIST_PN WHERE tong_tien_nhap > @TO_TOTAL_PRICE
		END
		--LỌC NHÂN VIÊN
		IF @MA_NV IS NOT NULL
		BEGIN
			IF NOT EXISTS (SELECT ma_nv FROM nhan_vien Where ma_nv = @MA_NV)
				RAISERROR(N'Không tồn tại Nhân Viên với mã [%s]! HOẶC nhân viên này thuộc Chi Nhánh khác!',16,1,@MA_NV)
			ELSE
				DELETE FROM @LIST_PN WHERE ma_nv <> @MA_NV
		END
		---LỌC CHI NHÁNH
		IF @MA_CN IS NOT NULL
		BEGIN
			IF NOT EXISTS (SELECT ma_chi_nhanh FROM chi_nhanh Where ma_chi_nhanh = @MA_CN)
				RAISERROR(N'Chi Nhánh với mã [%s] không phải là chi nhánh đăng nhập hiện tại! Không thể xem!',16,1,@MA_CN)
			ELSE
				DELETE FROM @LIST_PN WHERE ma_chi_nhanh <> @MA_CN
		END
		--CHECK NULL
		IF (SELECT COUNT(*) FROM @LIST_PN) = 0
			RAISERROR(N'Không có dữ liệu phù hợp!',16,1)
		ELSE
			SELECT * FROM @LIST_PN
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_Phieu_Phu_Thu]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Xem_Phieu_Phu_Thu]
	@SO_PPT INT = NULL,
	@MA_CN NVARCHAR(MAX) = NULL, 
	@MA_NV NVARCHAR(MAX) = NULL, 
	@FROM_DATE DATE = NULL, 
	@TO_DATE DATE = NULL, 
	@FROM_TOTAL_PRICE FLOAT = NULL,
	@TO_TOTAL_PRICE FLOAT = NULL
AS
BEGIN
	
	IF @SO_PPT IS NOT NULL
	BEGIN
		IF NOT EXISTS (SELECT so_phieu_thu FROM phieu_phu_thu WHERE	so_phieu_thu = @SO_PPT)
			RAISERROR(N'Phiếu Phụ Thu Với số phiếu [%d] không tồn tại! HOẶC bạn không có quyền xem Phiếu Phụ Thu ở chi nhánh khác!',16,1,@SO_PPT)
		ELSE
		BEGIN
			SELECT so_phieu_thu, ngay_thu, tong_phu_thu, CN.ma_chi_nhanh, CN.ten_chi_nhanh, NV.ma_nv, NV.ten_nv FROM
			(SELECT so_phieu_thu, ngay_thu, ma_chi_nhanh, ma_nv, tong_phu_thu FROM phieu_phu_thu where so_phieu_thu = @SO_PPT) PPT
			JOIN (SELECT ma_chi_nhanh, ten_chi_nhanh FROM chi_nhanh) CN on CN.ma_chi_nhanh = PPT.ma_chi_nhanh
			JOIN (SELECT ma_nv, ten_nv FROM nhan_vien) NV on PPT.ma_nv = NV.ma_nv
		END
	END
	ELSE
	BEGIN
	--	DECLARE 	@FROM_DATE DATE = NULL, 
	--@TO_DATE DATE = NULL, 
	--@FROM_TOTAL_PRICE FLOAT = NULL,
	--@TO_TOTAL_PRICE FLOAT = NULL,@MA_CN NVARCHAR(MAX) = NULL, 
	--@MA_NV NVARCHAR(MAX) = NULL
		---------QUERY-------
		DECLARE @LIST_PPT TABLE (
			so_phieu_thu int, 
			ngay_thu date, 
			tong_phu_thu float, 
			ma_chi_nhanh char(4),
			ten_chi_nhanh Nvarchar(50), 
			ma_nv NCHAR(12), 
			ten_nv NVARCHAR(80)
		)
		INSERT INTO @LIST_PPT(so_phieu_thu, ngay_thu, tong_phu_thu, ma_chi_nhanh, ten_chi_nhanh, ma_nv, ten_nv)
		SELECT so_phieu_thu, ngay_thu, tong_phu_thu, CN.ma_chi_nhanh, CN.ten_chi_nhanh, NV.ma_nv, NV.ten_nv FROM
		(SELECT so_phieu_thu, ngay_thu, ma_chi_nhanh, ma_nv, tong_phu_thu 
		FROM phieu_phu_thu
		) PPT
		JOIN (SELECT ma_chi_nhanh, ten_chi_nhanh FROM chi_nhanh) CN on CN.ma_chi_nhanh = PPT.ma_chi_nhanh
		JOIN (SELECT ma_nv, ten_nv FROM nhan_vien) NV on PPT.ma_nv = NV.ma_nv

		----LỌC THỜI GIAN
		IF @FROM_DATE IS NOT NULL
		BEGIN
			IF @FROM_DATE > CAST(GETDATE() + 1 as date)
				RAISERROR(N'Không thể truy vấn thời gian nhập từ tương lai!',16,1)
			ELSE 
				DELETE FROM @LIST_PPT WHERE ngay_thu < @FROM_DATE
		END
		IF @TO_DATE IS NOT NULL
				BEGIN
			IF @TO_DATE > CAST(GETDATE() + 1 as date)
				RAISERROR(N'Không thể truy vấn thời gian nhập từ tương lai!',16,1)
			ELSE 
				DELETE FROM @LIST_PPT WHERE ngay_thu > @TO_DATE
		END
		-----LỌC TỔNG PHỤ THU
		IF @FROM_TOTAL_PRICE IS NOT NULL
		BEGIN
			IF @FROM_TOTAL_PRICE < 0
				RAISERROR(N'Không thể truy vấn Tổng Phụ Thu < 0!',16,1)
			ELSE 
				DELETE FROM @LIST_PPT WHERE tong_phu_thu < @FROM_TOTAL_PRICE
		END
		IF @TO_TOTAL_PRICE IS NOT NULL
		BEGIN
			IF @TO_TOTAL_PRICE < 0
				RAISERROR(N'Không thể truy vấn Tổng Phụ Thu < 0!',16,1)
			ELSE 
				DELETE FROM @LIST_PPT WHERE tong_phu_thu > @TO_TOTAL_PRICE
		END
		--LỌC NHÂN VIÊN
		IF @MA_NV IS NOT NULL
		BEGIN
			IF NOT EXISTS (SELECT ma_nv FROM nhan_vien Where ma_nv = @MA_NV)
				RAISERROR(N'Không tồn tại Nhân Viên với mã [%s]! HOẶC nhân viên này thuộc Chi Nhánh khác!',16,1,@MA_NV)
			ELSE
				DELETE FROM @LIST_PPT WHERE ma_nv <> @MA_NV
		END
		---LỌC CHI NHÁNH
		IF @MA_CN IS NOT NULL
		BEGIN
			IF NOT EXISTS (SELECT ma_chi_nhanh FROM chi_nhanh Where ma_chi_nhanh = @MA_CN)
				RAISERROR(N'Chi Nhánh với mã [%s] không phải là chi nhánh đăng nhập hiện tại! Không thể xem!',16,1,@MA_CN)
			ELSE
				DELETE FROM @LIST_PPT WHERE ma_chi_nhanh <> @MA_CN
		END
		--CHECK NULL
		IF (SELECT COUNT(*) FROM @LIST_PPT) = 0
			RAISERROR(N'Không có dữ liệu phù hợp!',16,1)
		ELSE
			SELECT * FROM @LIST_PPT
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_San_Pham]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Xem_San_Pham] @MASP int = NULL
AS
BEGIN
    IF @MASP is NULL
    BEGIN
        SELECT [ma_sp]
            ,[ten_sp]
            ,[don_gia_theo_sp]
            ,[ghi_chu_cong_thuc]
            ,[ma_loai]
            ,[hinh_anh]
            ,[don_gia_khuyen_mai]
        FROM [CSDLPT_BTL].[dbo].[san_pham]
        WHERE be_deleted = 0
    END
    ELSE
    BEGIN
        IF NOT EXISTS (select ma_sp from san_pham where ma_sp = @MASP )
            RAISERROR(N'Sản phẩm có mã [%d] không tồn tại!', 16, 1, @MASP)
        ELSE IF EXISTS (select ma_sp from san_pham where ma_sp = @MASP and be_deleted = 1)
            RAISERROR(N'Sản phẩm có mã [%d] đã được xoá!', 16, 1, @MASP)
        ELSE
        BEGIN
            SELECT [ma_sp]
                ,[ten_sp]
                ,[don_gia_theo_sp]
                ,[ghi_chu_cong_thuc]
                ,[ma_loai]
                ,[hinh_anh]
                ,[don_gia_khuyen_mai]
            FROM [CSDLPT_BTL].[dbo].[san_pham]
            WHERE be_deleted = 0 and ma_sp = @MASP
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xem_San_Pham_Da_Xoa]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Xem_San_Pham_Da_Xoa] @MASP int = NULL
AS
BEGIN
    IF @MASP is NULL
    BEGIN
        SELECT [ma_sp]
            ,[ten_sp]
            ,[don_gia_theo_sp]
            ,[ghi_chu_cong_thuc]
            ,[ma_loai]
            ,[hinh_anh]
            ,[don_gia_khuyen_mai]
        FROM [CSDLPT_BTL].[dbo].[san_pham]
        WHERE be_deleted = 1
    END
    ELSE
    BEGIN
        IF NOT EXISTS (select ma_sp from san_pham where ma_sp = @MASP )
            RAISERROR(N'Sản phẩm có mã [%d] không tồn tại!', 16, 1, @MASP)
        ELSE IF EXISTS (select ma_sp from san_pham where ma_sp = @MASP and be_deleted = 0)
            RAISERROR(N'Sản phẩm có mã [%d] chưa hề được xoá!', 16, 1, @MASP)
        ELSE
        BEGIN
            SELECT [ma_sp]
                ,[ten_sp]
                ,[don_gia_theo_sp]
                ,[ghi_chu_cong_thuc]
                ,[ma_loai]
                ,[hinh_anh]
                ,[don_gia_khuyen_mai]
            FROM [CSDLPT_BTL].[dbo].[san_pham]
            WHERE be_deleted = 1 and ma_sp = @MASP
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_ca_lam_viec]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Xoa_ca_lam_viec]
	@Ngay_Trong_Tuan char(1),
	@Ca nchar(5)
AS
BEGIN
	IF NOT EXISTS (SELECT *
	from lich_lam_viec_parttime_dlcd
	WHERE ngay_trong_tuan = @Ngay_Trong_Tuan AND ca_trong_ngay = @Ca)
	BEGIN
		RAISERROR(N'Lịch làm việc này không tồn tại!', 16,1)
		RETURN
	END
	ELSE
	BEGIN
		Declare @ID int = (select id from lich_lam_viec_parttime_dlcd where ngay_trong_tuan = @Ngay_Trong_Tuan AND ca_trong_ngay = @Ca)
		if exists (select id from phan_cong where id = @ID)
			raiserror(N'Ca làm việc này: "Thứ %s Ca %s" hiện đang được phân công cho nhân viên part-time! Nếu muốn xoá vui lòng huỷ phân công rồi thử lại!', 16, 1, @Ngay_Trong_Tuan, @Ca)
		ELSE
		BEGIN
			BEGIN TRY
				DELETE 
				FROM lich_lam_viec_parttime_dlcd with(rowlock)
				WHERE ngay_trong_tuan = @Ngay_Trong_Tuan and ca_trong_ngay = @Ca
			END TRY
			BEGIN CATCH
				DECLARE @ErrMsg VARCHAR(max)
				ROLLBACK TRAN
				SELECT @ErrMsg = 'Lỗi: ' + ERROR_MESSAGE()
				RAISERROR(@ErrMsg, 16, 1)
			END CATCH
		END
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Cong_Thuc_Cho_San_Pham]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Xoa_Cong_Thuc_Cho_San_Pham] @MASP int,
                                                @MANL SMALLINT
AS
BEGIN
    IF NOT EXISTS (SELECT ma_sp, ma_nl from cong_thuc where ma_sp = @MASP and ma_nl = @MANL)
        RAISERROR(N'Mã nguyên liệu [%d] và mã sản phẩm đầu vào [%d] không tồn tại', 16, 1,@MANL, @MASP)
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN TRANSACTION
            BEGIN TRY
                DELETE FROM cong_thuc WITH(rowlock)
                WHERE ma_nl = @MANL and ma_sp = @MASP
                SELECT (N'Xoá công thức thành công!')
                COMMIT TRANSACTION
            END TRY
            BEGIN CATCH
                DECLARE @Err NVARCHAR(max) = ERROR_MESSAGE()
                ROLLBACK TRANSACTION
                RAISERROR(N'Lỗi: Xoá công thức thất bại. [%s]', 16,1,@Err)
            END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_CTHD_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Xoa_CTHD_May_Tram]
    @SO_HD int,
    @MA_SP int
AS
BEGIN
    IF NOT EXISTS (Select so_hd
    from chi_tiet_hoa_don
    Where so_hd = @SO_HD and ma_sp = @MA_SP)
        RAISERROR(N'Hoá Đơn với số [%d] không tồn chi tiết hoá đơn với mã sản phẩm [%d]! HOẶC bạn không có quyền thay đổi CTHĐ cho chi nhánh khác!', 16, 1, @SO_HD, @MA_SP)
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            DELETE FROM chi_tiet_hoa_don WITH(ROWLOCK)
            WHERE so_hd = @SO_HD and ma_sp = @MA_SP
            COMMIT TRANSACTION
            SELECT N'Xoá CTHĐ thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(MAX) = N'Lỗi xoá CTHĐ! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Chi_Nhanh]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--EXEC sp_suaCHINHANH N'CN4',N'Chi nhánh quận 8',N'18 Cô Lão',0903181494,0

CREATE PROC [dbo].[sp_Xoa_Chi_Nhanh]
	@MaCN char(4)
AS
begin
	IF NOT EXISTS (SELECT ma_chi_nhanh from chi_nhanh WHERE ma_chi_nhanh = @MaCN)
		RAISERROR(N'Mã chi nhánh này không tồn tại!', 16,1)
	ELSE IF EXISTS (SELECT ma_chi_nhanh from chi_nhanh WHERE ma_chi_nhanh = @MaCN and be_deleted = 1)
		RAISERROR(N'Chi nhánh này đã được xoá! Vui lòng thử lại!', 16,1)
	ELSE
	BEGIN
		begin transaction
		set transaction isolation level serializable
		BEGIN TRY
			update chi_nhanh with (updlock)
			set be_deleted = 1
			where ma_chi_nhanh = @MaCN
			COMMIT
		END TRY
		BEGIN CATCH
			DECLARE @ErrMsg VARCHAR(max)
			ROLLBACK
			SELECT @ErrMsg = N'Lỗi: ' + ERROR_MESSAGE()
			RAISERROR(@ErrMsg, 16, 1)
		END CATCH
	END
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Chi_Tiet_Phieu_Nhap_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Xoa_Chi_Tiet_Phieu_Nhap_May_Tram] @SO_PN INT,
                                                    @MA_NLK SMALLINT
AS
BEGIN
    IF NOT EXISTS (SELECT so_phieu_nhap FROM chi_tiet_phieu_nhap WHERE so_phieu_nhap = @SO_PN and ma_nl_kho = @MA_NLK)
        RAISERROR(N'Chi Tiết Phiếu Nhập với Số Phiếu Nhập = [%d] và Mã Nguyên Liệu Kho = [%d] không tồn tại! HOẶC bạn không có quyền thay đổi thông tin CTPN tại Chi Nhánh khác!', 16, 1, @SO_PN, @MA_NLK) 
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            DELETE FROM chi_tiet_phieu_nhap WITH(ROWLOCK)
            WHERE so_phieu_nhap = @SO_PN and ma_nl_kho = @MA_NLK
            COMMIT TRANSACTION
            SELECT N'Xoá CTPN thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(MAX) = N'Lỗi xoá CTPN! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Chi_Tiet_Phu_Thu_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Xoa_Chi_Tiet_Phu_Thu_May_Tram] @SO_PPT int, 
                                        @MA_DV int,
                                        @MA_NV char(12), 
                                        @MA_CN char(4)
AS
BEGIN
    IF NOT EXISTS (SELECT ma_chi_nhanh FROM chi_nhanh WHERE ma_chi_nhanh = @MA_CN)
        RAISERROR(N'Chi Nhánh với mã [%s] không tồn tại HOẶC bạn không có quyền thêm Chi Tiết Phụ Thu cho chi nhánh khác!', 16, 1, @MA_CN)
    ELSE IF NOT EXISTS (SELECT ma_nv FROM nhan_vien WHERE ma_nv = @MA_NV)
        RAISERROR(N'Nhân Viên với mã [%s] không tồn tại HOẶC bạn không có quyền thêm Chi Tiết Phụ Thu!', 16, 1, @MA_NV)
    ELSE IF NOT EXISTS (SELECT so_phieu_thu FROM phieu_phu_thu WHERE so_phieu_thu = @SO_PPT)
        RAISERROR(N'Phiếu Phụ Thu với số phiếu [%d] không tồn tại HOẶC bạn không có quyền thêm Chi Tiết Phụ Thu cho chi nhánh khác!', 16, 1, @SO_PPT) 
    ELSE IF NOT EXISTS (SELECT ma_dich_vu FROM dich_vu WHERE ma_dich_vu = @MA_DV)
        RAISERROR(N'Dịch Vụ với mã [%d] không tồn tại!', 16, 1, @MA_DV) 
    ELSE
    BEGIN     
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            DELETE FROM chi_tiet_phu_thu WITH(ROWLOCK) 
            WHERE so_phieu_thu = @SO_PPT and ma_dich_vu = @MA_DV and ma_nv = @Ma_NV and ma_chi_nhanh = @MA_CN
            COMMIT TRANSACTION
            SELECT N'Xoá Chi Tiết Phụ Thu thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(MAX) = N'Lỗi xoá CTPT! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Chuc_Vu]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Xoa_Chuc_Vu] @MACV char(4)
as
BEGIN
    if not exists (SELECT ma_chuc_vu from chuc_vu where ma_chuc_vu = @MACV)
        RAISERROR(N'Chức vụ với Mã chức vụ: [%s] không tồn tại!', 16, 1, @MACV)
    ELSE IF exists (SELECT ma_chuc_vu from chuc_vu where ma_chuc_vu = @MACV and be_deleted = 1)
        RAISERROR(N'Chức vụ với Mã chức vụ: [%s] đã được xoá!', 16, 1, @MACV)
    ELSE
    BEGIN   
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN TRANSACTION
        BEGIN TRY
            UPDATE chuc_vu with (updlock)
            set be_deleted = 1
            WHERE ma_chuc_vu = @MACV
            COMMIT TRANSACTION
        END TRY
        BEGIN CATCH
            DECLARE @Err NVARCHAR(max) = ERROR_MESSAGE()
            RAISERROR (N'Lỗi: [%s]', 16, 1, @Err)
            ROLLBACK TRANSACTION
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Dich_Vu]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Xoa_Dich_Vu]
	@MaDV int
AS
begin
	IF NOT EXISTS (SELECT ma_dich_vu from dich_vu WHERE ma_dich_vu = @MaDV)
		RAISERROR(N'Mã dịch vụ này không tồn tại!', 16,1)
	ELSE IF EXISTS (SELECT ma_dich_vu from dich_vu WHERE ma_dich_vu = @MaDV and be_deleted = 1)
		RAISERROR(N'Dịch vụ này đã được xoá! Vui lòng thử lại!', 16,1)
	ELSE
	BEGIN
		begin transaction
		set transaction isolation level serializable
		BEGIN TRY
			update dich_vu with (updlock)
			set be_deleted = 1
			where ma_dich_vu = @MaDV
			COMMIT
		END TRY
		BEGIN CATCH
			DECLARE @ErrMsg VARCHAR(max)
			ROLLBACK TRAN
			SELECT @ErrMsg = N'Lỗi: ' + ERROR_MESSAGE()
			RAISERROR(@ErrMsg, 16, 1)
		END CATCH
	END
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Hoa_Don_Da_Thanh_Toan_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---Đã thanh toán cũng xoá
CREATE PROC [dbo].[sp_Xoa_Hoa_Don_Da_Thanh_Toan_May_Tram] @SO_HD INT
AS
BEGIN
    IF NOT EXISTS (SELECT so_hd from hoa_don WHERE so_hd = @SO_HD)
        RAISERROR(N'Hoá Đơn với số [%d] không tồn tại tại chi nhánh này!', 16, 1, @SO_HD)
    ELSE IF EXISTS (SELECT so_hd from chi_tiet_hoa_don WHERE so_hd = @SO_HD)
        RAISERROR(N'Hoá Đơn với số [%d] đã có các chi tiết hoá đơn! Vui lòng chọn hình thức xoá hoàn toàn hoá đơn nếu cần thiết!', 16, 1, @SO_HD)
    ELSE 
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            DELETE hoa_don WITH(ROWLOCK)
            WHERE so_hd = @SO_HD
            COMMIT TRANSACTION
            SELECT N'Xoá Hoá Đơn (không có CTHĐ) thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(MAX) = N'Lỗi xoá Hoá Đơn (Không có CTHĐ)! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Hoa_Don_Da_Thanh_Toan_Va_CTHD_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_Xoa_Hoa_Don_Da_Thanh_Toan_Va_CTHD_May_Tram] @SO_HD INT
AS
BEGIN
    IF NOT EXISTS (SELECT so_hd from hoa_don WHERE so_hd = @SO_HD)
        RAISERROR(N'Hoá Đơn với số [%d] không tồn tại tại chi nhánh này!', 16, 1, @SO_HD)
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            DELETE FROM chi_tiet_hoa_don WITH(ROWLOCK)
            WHERE so_hd = @SO_HD

            DELETE hoa_don WITH(ROWLOCK)
            WHERE so_hd = @SO_HD
            COMMIT TRANSACTION
            SELECT N'Xoá Hoá Đơn + CTHĐ thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(MAX) = N'Lỗi xoá Hoá Đơn + CTHĐ! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Hoa_Don_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_Xoa_Hoa_Don_May_Tram] @SO_HD INT
AS
BEGIN
    IF NOT EXISTS (SELECT so_hd from hoa_don WHERE so_hd = @SO_HD)
        RAISERROR(N'Hoá Đơn với số [%d] không tồn tại tại chi nhánh này!', 16, 1, @SO_HD)
    ELSE IF EXISTS (SELECT so_hd from chi_tiet_hoa_don WHERE so_hd = @SO_HD)
        RAISERROR(N'Hoá Đơn với số [%d] đã có các chi tiết hoá đơn! Vui lòng chọn hình thức xoá hoàn toàn hoá đơn nếu cần thiết!', 16, 1, @SO_HD)
    ELSE IF (SELECT thanh_toan from hoa_don WHERE so_hd = @SO_HD) = 1
        RAISERROR(N'Hoá Đơn [%d] đã được thanh toán! Nếu cần thiết hãy chọn cách xoá khác!', 16, 1, @SO_HD)
    ELSE 
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            DELETE hoa_don WITH(ROWLOCK)
            WHERE so_hd = @SO_HD
            COMMIT TRANSACTION
            SELECT N'Xoá Hoá Đơn (không có CTHĐ) thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(MAX) = N'Lỗi xoá Hoá Đơn (Không có CTHĐ)! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Hoa_Don_Va_CTHD_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_Xoa_Hoa_Don_Va_CTHD_May_Tram] @SO_HD INT
AS
BEGIN
    IF NOT EXISTS (SELECT so_hd from hoa_don WHERE so_hd = @SO_HD)
        RAISERROR(N'Hoá Đơn với số [%d] không tồn tại tại chi nhánh này!', 16, 1, @SO_HD)
    ELSE IF (SELECT thanh_toan from hoa_don WHERE so_hd = @SO_HD) = 1
        RAISERROR(N'Hoá Đơn [%d] đã được thanh toán! Nếu cần thiết hãy chọn cách xoá khác!', 16, 1, @SO_HD)
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            DELETE FROM chi_tiet_hoa_don WITH(ROWLOCK)
            WHERE so_hd = @SO_HD

            DELETE hoa_don WITH(ROWLOCK)
            WHERE so_hd = @SO_HD
            COMMIT TRANSACTION
            SELECT N'Xoá Hoá Đơn + CTHĐ thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(MAX) = N'Lỗi xoá Hoá Đơn + CTHĐ! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Hoan_Toan_Chuc_Vu]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Xoa_Hoan_Toan_Chuc_Vu] @MACV char(4)
as
BEGIN
    if not exists (SELECT ma_chuc_vu from chuc_vu where ma_chuc_vu = @MACV)
        RAISERROR(N'Chức vụ với Mã chức vụ: [%s] không tồn tại!', 16, 1, @MACV)
    ELSE IF exists (SELECT ma_nv from nhan_vien where ma_chuc_vu = @MACV)
    BEGIN
        DECLARE @TENCV NVARCHAR(60) = (SELECT ten_chuc_vu from chuc_vu where ma_chuc_vu = @MACV)
        RAISERROR(N'Chức vụ: "Mã chức vụ: [%s], Tên chức vụ: [%s]" đang được gán cho một vài nhân viên! Không thể xoá!', 16, 1, @MACV, @TENCV)
    END
    ELSE
    BEGIN   
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN TRANSACTION
        BEGIN TRY
            DELETE chuc_vu with (rowlock)
            WHERE ma_chuc_vu = @MACV
            COMMIT TRANSACTION
        END TRY
        BEGIN CATCH
            DECLARE @Err NVARCHAR(max) = ERROR_MESSAGE()
            RAISERROR (N'Lỗi: [%s]', 16, 1, @Err)
            ROLLBACK TRANSACTION
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Hoan_Toan_Khach_Hang_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Xoa_Hoan_Toan_Khach_Hang_May_Tram]
    @MAKH int
AS
BEGIN
	DECLARE @ERR NVARCHAR(MAX)
	DECLARE @SDT char(10)
	IF EXISTS (select ma_kh from khach_hang where ma_kh = @MAKH)
	BEGIN 
		IF EXISTS (select ma_kh from hoa_don WHERE ma_kh = @MAKH)
			RAISERROR(N'Khách hàng với mã khách hàng: [%d] đã thực hiện thanh toán tại cửa hàng! Không thể xoá! Vui lòng chọn "Xoá khách hàng" hoặc "Chỉnh sửa thông tin khách hàng"', 16, 1, @MAKH)
		ELSE
		BEGIN
			set XACT_ABORT ON
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
			BEGIN TRY
				DELETE FROM khach_hang WITH(ROWLOCK)
				WHERE ma_kh = @MAKH
				COMMIT TRANSACTION
				SELECT N'Xoá vĩnh viễn khách hàng thành công!'
			END TRY
			BEGIN CATCH
				ROLLBACK TRANSACTION
				SET @ERR = ERROR_MESSAGE()
				RAISERROR(N'Lỗi tại: sp_Xoa_Hoan_Toan_Khach_Hang_May_Tram => Chi tiết: [%s]', 16, 1, @ERR)
			END CATCH
		END
	END
	ELSE IF EXISTS (select ma_kh from LINK1.CSDLPT_BTL.DBO.khach_hang where ma_kh = @MAKH)
	BEGIN 
		IF EXISTS (select ma_kh from LINK1.CSDLPT_BTL.DBO.hoa_don WHERE ma_kh = @MAKH)
			RAISERROR(N'Khách hàng với mã khách hàng: [%d] đã thực hiện thanh toán tại cửa hàng! Không thể xoá! Vui lòng chọn "Xoá khách hàng" hoặc "Chỉnh sửa thông tin khách hàng"', 16, 1, @MAKH)
		ELSE
		BEGIN
			set XACT_ABORT ON
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
			BEGIN TRY
				DELETE FROM LINK1.CSDLPT_BTL.DBO.khach_hang WITH(ROWLOCK)
				WHERE ma_kh = @MAKH
				COMMIT TRANSACTION
				SELECT N'Xoá vĩnh viễn khách hàng thành công!'
			END TRY
			BEGIN CATCH
				ROLLBACK TRANSACTION
				SET @ERR = ERROR_MESSAGE()
				RAISERROR(N'Lỗi tại: sp_Xoa_Hoan_Toan_Khach_Hang_May_Tram => Chi tiết: [%s]', 16, 1, @ERR)
			END CATCH
		END
	END
	ELSE IF EXISTS (select ma_kh from LINK2.CSDLPT_BTL.DBO.khach_hang where ma_kh = @MAKH)
	BEGIN 
		IF EXISTS (select ma_kh from LINK2.CSDLPT_BTL.DBO.hoa_don WHERE ma_kh = @MAKH)
			RAISERROR(N'Khách hàng với mã khách hàng: [%d] đã thực hiện thanh toán tại cửa hàng! Không thể xoá! Vui lòng chọn "Xoá khách hàng" hoặc "Chỉnh sửa thông tin khách hàng"', 16, 1, @MAKH)
		ELSE
		BEGIN
			set XACT_ABORT ON
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
			BEGIN TRY
				DELETE FROM LINK2.CSDLPT_BTL.DBO.khach_hang WITH(ROWLOCK)
				WHERE ma_kh = @MAKH
				COMMIT TRANSACTION
				SELECT N'Xoá vĩnh viễn khách hàng thành công!'
			END TRY
			BEGIN CATCH
				ROLLBACK TRANSACTION
				SET @ERR = ERROR_MESSAGE()
				RAISERROR(N'Lỗi tại: sp_Xoa_Hoan_Toan_Khach_Hang_May_Tram => Chi tiết: [%s]', 16, 1, @ERR)
			END CATCH
		END
	END
	ELSE
		RAISERROR(N'Khách hàng với mã khách hàng: [%d] không tồn tại! Vui lòng kiểm tra lại!', 16, 1, @MAKH)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Hoan_Toan_Khu_Vuc]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Xoa_Hoan_Toan_Khu_Vuc] @MAKV char(1)
AS
BEGIN
    IF not exists (SELECT ma_khu_vuc from khu_vuc WHERE ma_khu_vuc = @MAKV)
        RAISERROR(N'Mã khu vực đã nhập: [%s] không tồn tại! Vui lòng thử lại!', 16, 1, @MAKV)
    ELSE IF exists (SELECT ma_khu_vuc from CN_KV WHERE ma_khu_vuc = @MAKV)
    BEGIN
        DECLARE @TENKV NVARCHAR(12) = (SELECT ten_khu_vuc from khu_vuc where ma_khu_vuc = @MAKV)
        RAISERROR(N'Khu vực bạn muốn xoá: [Mã khu vực: "%s", Tên khu vực: "%s"] đang tồn tại ở 1 chi nhánh nào đó. Không thể xoá!', 16, 1, @MAKV, @TENKV)
    END
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN TRANSACTION
        BEGIN TRY
            DELETE FROM khu_vuc WITH(ROWLOCK)
            where ma_khu_vuc = @MAKV
            COMMIT TRANSACTION
        END TRY
        BEGIN CATCH
            DECLARE @E NVARCHAR(max) = ERROR_MESSAGE()
            ROLLBACK TRANSACTION
            RAISERROR(N'Lỗi giao tác => SP: sp_Phu_Hoi_Khu_Vuc. Chi tiết: %s', 16, 1, @E)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Hoan_Toan_Loai_Hinh_Chi]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Xoa_Hoan_Toan_Loai_Hinh_Chi]
	@MALC TINYINT
AS
BEGIN
	IF NOT EXISTS (select ma_loai_chi from loai_hinh_chi where ma_loai_chi = @MALC)
		RAISERROR(N'Loại hình chi với mã: [%d] không tồn tại!', 16, 1, @MALC)
    ELSE IF exists (select ma_loai_chi from phieu_chi where ma_loai_chi = @MALC)
        RAISERROR(N'Loại hình chi với mã: [%d] đã được gán vào một số phiếu chi! Vui lòng chọn cách "Xoá"!', 16, 1, @MALC)
	ELSE
	BEGIN
		set XACT_ABORT ON
		SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
		BEGIN TRANSACTION
		BEGIN TRY
            DELETE  FROM loai_hinh_chi WITH(ROWLOCK)
            where ma_loai_chi = @MALC
			COMMIT TRANSACTION
			SELECT N'Xoá hoàn toàn loại hình chi thành công!'
		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION
			DECLARE @ERR NVARCHAR(MAX) = ERROR_MESSAGE()
			RAISERROR(N'Lỗi tại: sp_Xoa_Hoan_Toan_Loai_Hinh_Chi => Chi tiết: [%s]', 16, 1, @ERR)
		END CATCH
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Hoan_Toan_Loai_San_Pham]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Xoa_Hoan_Toan_Loai_San_Pham]
	@Maloai tinyint
AS
begin
	IF NOT EXISTS (SELECT ma_loai from loai_san_pham WHERE ma_loai=@Maloai)
		RAISERROR(N'Loại sản phẩm này không tồn tại!', 16,1)
	ELSE IF exists (select ma_sp from san_pham where ma_loai = @Maloai)
		RAISERROR(N'Loại sản phẩm này đang được gán vào một số sản phẩm. Vui lòng thử lại!', 16,1)
	ELSE
	BEGIN
		begin transaction
		set transaction isolation level serializable
		BEGIN TRY
			delete from loai_san_pham with (rowlock)
			where ma_loai = @Maloai
			COMMIT
		END TRY
		BEGIN CATCH
			DECLARE @ErrMsg VARCHAR(max)
			ROLLBACK
			SELECT @ErrMsg = N'Lỗi: ' + ERROR_MESSAGE()
			RAISERROR(@ErrMsg, 16, 1)
		END CATCH
	END
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Hoan_Toan_Nguyen_Lieu]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Xoa_Hoan_Toan_Nguyen_Lieu]
	@Ma_nl smallint
AS
begin
	IF NOT EXISTS (SELECT ma_nl from nguyen_lieu WHERE ma_nl = @Ma_nl)
		RAISERROR(N'Mã nguyên liệu %s này không tồn tại!', 16, 1, @Ma_nl)
	ELSE IF exists (select ma_nl from cong_thuc where ma_nl = @Ma_nl)
		RAISERROR(N'Mã nguyên liệu [%s] này đang trong một số công thức. Vui lòng thử lại!', 16, 1, @Ma_nl)
	ELSE IF exists (select ma_nl from nguyen_lieu_kho where ma_nl = @Ma_nl)
		RAISERROR(N'Mã nguyên liệu [%s] này đang gán với một số nguyên liệu kho. Vui lòng thử lại!', 16, 1, @Ma_nl)
	ELSE
	BEGIN
		begin transaction
		set transaction isolation level serializable
		BEGIN TRY 
			delete from nguyen_lieu with(rowlock) where ma_nl = @Ma_nl 
			COMMIT
		END TRY
		BEGIN CATCH
			DECLARE @ErrMsg VARCHAR(max)
			ROLLBACK
			SELECT @ErrMsg = N'Lỗi: ' + ERROR_MESSAGE()
			RAISERROR(@ErrMsg, 16, 1)
		END CATCH
	END
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Hoan_Toan_Nha_Cung_Cap_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Xoa_Hoan_Toan_Nha_Cung_Cap_May_Tram] @MA_NCC TINYINT
AS
BEGIN
    IF NOT EXISTS (SELECT ma_ncc from nha_cung_cap where ma_ncc = @MA_NCC)
        RAISERROR(N'Không tồn tại nhà cung cấp với mã: [%d]! Hoặc bạn không có quyền thay đổi thông tin nhà cung cấp ở chi nhánh khác!', 16, 1, @MA_NCC)
    ELSE IF EXISTS (select ma_ncc from LINK0.CSDLPT_BTL.DBO.phieu_nhap where ma_ncc = @MA_NCC)
    BEGIN    
        DECLARE @TEN_NCC nvarchar(100) = (SELECT ten_ncc from nha_cung_cap where ma_ncc = @MA_NCC)
        RAISERROR(N'Đã có phiếu nhập từ nhà cung cấp: [Mã NCC: %d, Tên NCC: %s]. Không thể xoá vĩnh viễn!', 16, 1, @MA_NCC, @TEN_NCC)
    END
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN TRANSACTION
        BEGIN TRY
            DELETE FROM nha_cung_cap WITH(ROWLOCK)
            WHERE ma_ncc = @MA_NCC
            COMMIT TRANSACTION
            SELECT N'Xoá vĩnh viễn thông tin nhà cung cấp thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(max) = N'Lỗi: Tại sp_Phuc_Hoi_Nha_Cung_Cap! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Hoan_Toan_Nhan_Vien_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Xoa_Hoan_Toan_Nhan_Vien_May_Tram] @MA_NV CHAR(12)
AS
BEGIN
    IF NOT EXISTS (SELECT ma_nv from nhan_vien where ma_nv = @MA_NV)
        RAISERROR(N'Nhân viên với mã: [%s] không tồn tại HOẶC bạn không có quyền phục hồi thông tin nhân viên ở chi nhánh khác!', 16, 1, @MA_NV)
    ELSE IF EXISTS (SELECT ma_nv from hoa_don where ma_nv = @MA_NV)
        RAISERROR(N'Không thể xoá vĩnh viễn nhân viên có mã [%s]! Lý do: Nhân viên này đã thực hiện thanh toán hoá đơn!', 16, 1, @MA_NV)
    ELSE IF EXISTS (SELECT ma_nv from phieu_nhap where ma_nv = @MA_NV)
        RAISERROR(N'Không thể xoá vĩnh viễn nhân viên có mã [%s]! Lý do: Nhân viên này đã thực hiện lập phiếu nhập!', 16, 1, @MA_NV)
    ELSE IF EXISTS (SELECT ma_nv from phieu_phu_thu where ma_nv = @MA_NV)
        RAISERROR(N'Không thể xoá vĩnh viễn nhân viên có mã [%s]! Lý do: Nhân viên này đã thực hiện lập phiếu phụ thu!', 16, 1, @MA_NV)
    ELSE IF EXISTS (SELECT ma_nv from phieu_chi where ma_nv = @MA_NV)
        RAISERROR(N'Không thể xoá vĩnh viễn nhân viên có mã [%s]! Lý do: Nhân viên này đã thực hiện lập phiếu chi!', 16, 1, @MA_NV)
    ELSE IF EXISTS (SELECT ma_nv from phan_cong where ma_nv = @MA_NV)
        RAISERROR(N'Không thể xoá vĩnh viễn nhân viên có mã [%s]! Lý do: Nhân viên này đã được phân công!', 16, 1, @MA_NV)
    ELSE IF EXISTS (SELECT ma_nv from cham_cong where ma_nv = @MA_NV)
        RAISERROR(N'Không thể xoá vĩnh viễn nhân viên có mã [%s]! Lý do: Nhân viên này đã được chấm công!', 16, 1, @MA_NV)
    ELSE 
    BEGIN
        DECLARE @MA_CV NVARCHAR(MAX) = (SELECT ma_chuc_vu FROM nhan_vien where ma_nv = @MA_NV)
        DECLARE @TEN_CV NVARCHAR(MAX) = (SELECT ten_chuc_vu from chuc_vu WHERE ma_chuc_vu = @MA_CV)
        IF (SELECT DBO.fn_Check_Quyen_Them_Sua_Nhan_Vien_Theo_Chuc_Vu(@MA_CV)) = 0
            RAISERROR(N'Bạn không có quyền xoá thông tin nhân viên có Chức Vụ: [Mã chức vụ: "%s", Tên chức vụ: "%s"]!', 16, 1, @MA_CV, @TEN_CV)
        ELSE
        BEGIN
            BEGIN TRY
				BEGIN TRANSACTION SP_Xoa_Nhan_Vien
                DELETE FROM nhan_vien WITH (ROWLOCK)
                WHERE ma_nv = @MA_NV
                COMMIT TRANSACTION SP_Xoa_Nhan_Vien
                SELECT N'Xoá vĩnh viễn thông tin nhân viên thành công!'
            END TRY
            BEGIN CATCH
				IF(@@TRANCOUNT > 0)
					ROLLBACK TRAN
                DECLARE @ERROR NVARCHAR(MAX) = 'Lỗi: Xoá vĩnh viễn nhân viên. Chi tiết: ' + ERROR_MESSAGE()
                RAISERROR(@ERROR, 16,1)
            END CATCH
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Hoan_Toan_San_Pham]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Xoa_Hoan_Toan_San_Pham] @MASP int
AS
BEGIN
    IF NOT EXISTS (SELECT ma_sp from san_pham where ma_sp = @MASP)
        RAISERROR(N'Sản phẩm với mã [%d] không tồn tại!', 16, 1, @MASP)
    ELSE IF EXISTS (SELECT ma_sp from chi_tiet_hoa_don where ma_sp = @MASP)
    BEGIN
        RAISERROR(N'Sản phẩm: [Mã SP: %d] hiện tại đã được thanh toán! Không thể xoá!', 16, 1, @MASP)
    END
    ELSE IF EXISTS (SELECT ma_sp from cong_thuc where ma_sp = @MASP)
    BEGIN
        RAISERROR(N'Sản phẩm: [Mã SP: %d] hiện tại đã được thêm vào một vài công thức! Không thể xoá!', 16, 1, @MASP)
    END
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN TRANSACTION
            BEGIN TRY
                DELETE FROM san_pham WITH(rowlock)
                WHERE ma_sp = @MASP
                SELECT N'Xoá hoàn toàn sản phẩm thành công!'
                COMMIT TRANSACTION
            END TRY
            BEGIN CATCH
                DECLARE @Err NVARCHAR(max) = ERROR_MESSAGE()
                ROLLBACK TRANSACTION
                RAISERROR (N'Lỗi => sp_Xoa_Hoan_Toan_San_Pham: [%s]', 16, 1, @Err)
            END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Khach_Hang_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Xoa_Khach_Hang_May_Tram]
    @MAKH int
AS
BEGIN		
	DECLARE @ERR NVARCHAR(MAX)

    IF EXISTS (select ma_kh from khach_hang where ma_kh = @MAKH)
	BEGIN
		IF (select be_deleted from khach_hang where ma_kh = @MAKH) = 1
			RAISERROR(N'Khách hàng với mã khách hàng: [%d] đã được xoá!', 16, 1, @MAKH)
		ELSE
		BEGIN
			set XACT_ABORT ON
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
			BEGIN TRY
				UPDATE khach_hang WITH(UPDLOCK)
				set be_deleted = 1
				WHERE ma_kh = @MAKH
				COMMIT TRANSACTION
				SELECT N'Xoá khách hàng thành công!'
			END TRY
			BEGIN CATCH
				ROLLBACK TRANSACTION
				SET @ERR = ERROR_MESSAGE()
				RAISERROR(N'Lỗi tại: sp_Xoa_Khach_Hang_May_Tram => Chi tiết: [%s]', 16, 1, @ERR)
			END CATCH
		END
	END
	ELSE IF EXISTS (select ma_kh from LINK1.CSDLPT_BTL.DBO.khach_hang where ma_kh = @MAKH)
	BEGIN
		IF (select be_deleted from LINK1.CSDLPT_BTL.DBO.khach_hang where ma_kh = @MAKH) = 1
			RAISERROR(N'Khách hàng với mã khách hàng: [%d] đã được xoá!', 16, 1, @MAKH)
		ELSE
		BEGIN
			set XACT_ABORT ON
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
			BEGIN TRY
				UPDATE LINK1.CSDLPT_BTL.DBO.khach_hang WITH(UPDLOCK)
				set be_deleted = 1
				WHERE ma_kh = @MAKH
				COMMIT TRANSACTION
				SELECT N'Xoá khách hàng thành công!'
			END TRY
			BEGIN CATCH
				ROLLBACK TRANSACTION
				SET @ERR = ERROR_MESSAGE()
				RAISERROR(N'Lỗi tại: sp_Xoa_Khach_Hang_May_Tram => Chi tiết: [%s]', 16, 1, @ERR)
			END CATCH
		END
	END 
	ELSE IF EXISTS (select ma_kh from LINK2.CSDLPT_BTL.DBO.khach_hang where ma_kh = @MAKH)
	BEGIN
		IF (select be_deleted from LINK2.CSDLPT_BTL.DBO.khach_hang where ma_kh = @MAKH) = 1
			RAISERROR(N'Khách hàng với mã khách hàng: [%d] đã được xoá!', 16, 1, @MAKH)
		ELSE
		BEGIN
			set XACT_ABORT ON
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
			BEGIN TRANSACTION
			BEGIN TRY
				UPDATE LINK2.CSDLPT_BTL.DBO.khach_hang WITH(UPDLOCK)
				set be_deleted = 1
				WHERE ma_kh = @MAKH
				COMMIT TRANSACTION
				SELECT N'Xoá khách hàng thành công!'
			END TRY
			BEGIN CATCH
				ROLLBACK TRANSACTION
				SET @ERR = ERROR_MESSAGE()
				RAISERROR(N'Lỗi tại: sp_Xoa_Khach_Hang_May_Tram => Chi tiết: [%s]', 16, 1, @ERR)
			END CATCH
		END
	END
	ELSE
		RAISERROR(N'Khách hàng với mã khách hàng: [%d] không tồn tại! Vui lòng kiểm tra lại ',16, 1, @MAKH)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Khu_Vuc]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Xoa_Khu_Vuc] @MAKV char(1)
AS
BEGIN
    IF not exists (SELECT ma_khu_vuc from khu_vuc WHERE ma_khu_vuc = @MAKV)
        RAISERROR(N'Mã khu vực đã nhập: [%s] không tồn tại! Vui lòng thử lại!', 16, 1, @MAKV)
    ELSE IF exists (SELECT ma_khu_vuc from khu_vuc WHERE ma_khu_vuc = @MAKV and be_deleted = 1)
    BEGIN
        DECLARE @TENKV NVARCHAR(12) = (SELECT ten_khu_vuc from khu_vuc where ma_khu_vuc = @MAKV)
        RAISERROR(N'Khu vực bạn muốn xoá: [Mã khu vực: "%s", Tên khu vực: "%s"] đã được xoá! Vui lòng thử lại!', 16, 1, @MAKV, @TENKV)
    END
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN TRANSACTION
        BEGIN TRY
            UPDATE khu_vuc WITH(updlock)
            set be_deleted = 1
            where ma_khu_vuc = @MAKV
            COMMIT TRANSACTION
        END TRY
        BEGIN CATCH
            DECLARE @E NVARCHAR(max) = ERROR_MESSAGE()
            ROLLBACK TRANSACTION
            RAISERROR(N'Lỗi giao tác => SP: sp_Xoa_Khu_Vuc. Chi tiết: %s', 16, 1, @E)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Khu_Vuc_Cua_Chi_Nhanh]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_Xoa_Khu_Vuc_Cua_Chi_Nhanh] @MA_CN char(4), @MA_KV char(1)
as
BEGIN
	IF NOT EXISTS (SELECT ma_khu_vuc from khu_vuc where ma_khu_vuc = @MA_KV)
		RAISERROR(N'Không tồn tại Khu Vực với mã: [%s]!', 16,1, @MA_KV)
	ELSE IF NOT EXISTS (SELECT ma_chi_nhanh from chi_nhanh where ma_chi_nhanh = @MA_CN)
		RAISERROR(N'Không tồn tại Chi Nhánh với mã: [%s]!', 16,1, @MA_CN)
	ELSE
	BEGIN
		SET XACT_ABORT ON
		SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
		BEGIN DISTRIBUTED TRANSACTION
		BEGIN TRY
			DELETE FROM CN_KV with (ROWLOCK)
			WHERE ma_chi_nhanh = @MA_CN and ma_khu_vuc = @MA_KV
			COMMIT TRANSACTION
			SELECT N'Xoá Khu Vực của Chi Nhánh thành công!'
		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION
			DECLARE @ERR NVARCHAR(MAX) = 'Lỗi Xoá Khu Vực [' + @MA_KV + '] cho của nhánh [' + @MA_CN + ']! Chi tiết: ' + ERROR_MESSAGE() 
			RAISERROR(@ERR, 16, 1)
		END CATCH
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Khuyen_Mai]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_Xoa_Khuyen_Mai]
	@MaKM tinyint
AS
begin
	IF NOT EXISTS (SELECT ma_khuyen_mai from khuyen_mai WHERE ma_khuyen_mai = @MaKM)
	BEGIN
		RAISERROR(N'Khuyến mãi này không tồn tại!', 16,1)
	END
	ELSE IF exists (select * from hoa_don where ma_khuyen_mai = @MaKM)
		RAISERROR(N'Khuyến mãi này đang tồn tại trong một số hoá đơn! Không thể xoá!', 16,1)
	ELSE
	BEGIN
		begin transaction
		set transaction isolation level serializable
		BEGIN TRY
			delete from khuyen_mai with(rowlock)
			where ma_khuyen_mai = @MaKM
			COMMIT
		END TRY
		BEGIN CATCH
			DECLARE @ErrMsg VARCHAR(max)
			ROLLBACK
			SELECT @ErrMsg = N'Lỗi: ' + ERROR_MESSAGE()
			RAISERROR(@ErrMsg, 16, 1)
		END CATCH
	END
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Loai_Hinh_Chi]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Xoa_Loai_Hinh_Chi]
	@MALC TINYINT
AS
BEGIN
	IF NOT EXISTS (select ma_loai_chi
	from loai_hinh_chi
	where ma_loai_chi = @MALC)
		RAISERROR(N'Loại hình chi với mã: [%d] không tồn tại!', 16, 1, @MALC)
    ELSE IF exists (select ma_loai_chi from loai_hinh_chi where ma_loai_chi = @MALC and be_deleted = 1)
        RAISERROR(N'Loại hình chi với mã: [%d] đã được xoá!', 16, 1, @MALC)
	ELSE
	BEGIN
		set XACT_ABORT ON
		SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
		BEGIN TRANSACTION
		BEGIN TRY
            UPDATE loai_hinh_chi WITH(UPDLOCK)
            SET be_deleted = 1
            where ma_loai_chi = @MALC
			COMMIT TRANSACTION
			SELECT N'Xoá loại hình chi thành công!'
		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION
			DECLARE @ERR NVARCHAR(MAX) = ERROR_MESSAGE()
			RAISERROR(N'Lỗi tại: sp_Xoa_Loai_Hinh_Chi => Chi tiết: [%s]', 16, 1, @ERR)
		END CATCH
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Loai_San_Pham]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC sp_suaLOAISANPHAM 6,'thit heo',0;

CREATE PROC [dbo].[sp_Xoa_Loai_San_Pham]
	@Maloai tinyint
AS
begin
	IF NOT EXISTS (SELECT ma_loai from loai_san_pham WHERE ma_loai=@Maloai)
		RAISERROR(N'Loại sản phẩm này không tồn tại!', 16,1)
	ELSE IF EXISTS (SELECT ma_loai from loai_san_pham WHERE ma_loai = @Maloai and be_deleted = 1)
		RAISERROR(N'Loại sản phẩm này đã được xoá! Vui lòng phục hồi lại để sử dụng!', 16,1)
	ELSE
	BEGIN
		begin transaction
		set transaction isolation level serializable
		BEGIN TRY
			update loai_san_pham with (updlock)
			set be_deleted = 1
			where ma_loai = @Maloai
			COMMIT
		END TRY
		BEGIN CATCH
			DECLARE @ErrMsg VARCHAR(max)
			ROLLBACK
			SELECT @ErrMsg = N'Lỗi: ' + ERROR_MESSAGE()
			RAISERROR(@ErrMsg, 16, 1)
		END CATCH
	END
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Nguyen_Lieu]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Xoa_Nguyen_Lieu]
	@Ma_nl smallint
AS
begin
	IF NOT EXISTS (SELECT ma_nl from nguyen_lieu WHERE ma_nl = @Ma_nl)
		RAISERROR(N'Mã nguyên liệu này không tồn tại!', 16,1)
	ELSE IF EXISTS (SELECT ma_nl from nguyen_lieu WHERE ma_nl = @Ma_nl and be_deleted = 1)
		RAISERROR(N'Nguyên liệu này đã được xoá!', 16,1)
	ELSE
	BEGIN
		begin transaction
		set transaction isolation level serializable
		BEGIN TRY 
			update nguyen_lieu with(updlock)
			set be_deleted = 1
			where ma_nl = @Ma_nl
			COMMIT
		END TRY
		BEGIN CATCH
			DECLARE @ErrMsg VARCHAR(max)
			ROLLBACK
			SELECT @ErrMsg = N'Lỗi: ' + ERROR_MESSAGE()
			RAISERROR(@ErrMsg, 16, 1)
		END CATCH
	END
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Nguyen_Lieu_Kho_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Xoa_Nguyen_Lieu_Kho_May_Tram]   @MA_NLK SMALLINT
AS
BEGIN
    IF NOT EXISTS (SELECT ma_nl from nguyen_lieu_kho where ma_nl_kho = @MA_NLK)
        RAISERROR(N'Nguyên Liệu Kho với mã [%d] không tồn tại HOẶC bạn không có quyền thay đổi thông tin nguyên liệu kho ở Chi Nhánh khác!', 16, 1, @MA_NLK)
    ELSE IF (SELECT be_deleted from nguyen_lieu_kho where ma_nl_kho = @MA_NLK) = 1
        RAISERROR(N'Nguyên Liệu Kho vỡi mã [%d] đã được xoá!', 16, 1, @MA_NLK)
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            UPDATE nguyen_lieu_kho WITH(UPDLOCK)
            set be_deleted = 1
            WHERE ma_nl_kho = @MA_NLK
            COMMIT TRANSACTION
            SELECT N'Xoá Nguyên Liệu Kho thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(MAX) = N'Lỗi xoá Nguyên Liệu Kho! Chi tiết: ' + ERROR_MESSAGE();
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Nha_Cung_Cap_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Xoa_Nha_Cung_Cap_May_Tram] @MA_NCC TINYINT
AS
BEGIN
    IF NOT EXISTS (SELECT ma_ncc from nha_cung_cap where ma_ncc = @MA_NCC)
        RAISERROR(N'Không tồn tại nhà cung cấp với mã: [%d]! Hoặc bạn không có quyền thay đổi thông tin nhà cung cấp ở chi nhánh khác!', 16, 1, @MA_NCC)
    ELSE IF (select be_deleted from nha_cung_cap where ma_ncc = @MA_NCC) = 1
        RAISERROR(N'Nhà cung cấp với mã: [%d] đã được xoá!', 16, 1, @MA_NCC)
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN TRANSACTION
        BEGIN TRY
            UPDATE nha_cung_cap WITH(UPDLOCK)
            SET be_deleted = 1
            WHERE ma_ncc = @MA_NCC
            COMMIT TRANSACTION
            SELECT N'Xoá thông tin nhà cung cấp với mã [' + @MA_NCC + '] thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(max) = N'Lỗi: Tại sp_Xoa_Nha_Cung_Cap! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Nhan_Vien_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Xoa_Nhan_Vien_May_Tram] @MA_NV CHAR(12)
AS
BEGIN
    IF NOT EXISTS (SELECT ma_nv from nhan_vien where ma_nv = @MA_NV)
        RAISERROR(N'Nhân viên với mã: [%s] không tồn tại HOẶC bạn không có quyền xoá thông tin nhân viên ở chi nhánh khác!', 16, 1, @MA_NV)
    ELSE IF (SELECT be_deleted from nhan_vien where ma_nv = @MA_NV) = 1
        RAISERROR(N'Thông tin nhân viên có mã [%s] đã được xoá!', 16, 1, @MA_NV)
    ELSE 
    BEGIN
        DECLARE @MA_CV NVARCHAR(MAX) = (SELECT ma_chuc_vu FROM nhan_vien where ma_nv = @MA_NV)
        DECLARE @TEN_CV NVARCHAR(MAX) = (SELECT ten_chuc_vu from chuc_vu WHERE ma_chuc_vu = @MA_CV)
        IF (SELECT DBO.fn_Check_Quyen_Them_Sua_Nhan_Vien_Theo_Chuc_Vu(@MA_CV)) = 0
            RAISERROR(N'Bạn không có quyền xoá thông tin nhân viên có Chức Vụ: [Mã chức vụ: "%s", Tên chức vụ: "%s"]!', 16, 1, @MA_CV, @TEN_CV)
        ELSE
        BEGIN
            SET XACT_ABORT ON
            SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
            BEGIN DISTRIBUTED TRANSACTION
            BEGIN TRY
                UPDATE nhan_vien WITH (UPDLOCK)
                set be_deleted = 1
                WHERE ma_nv = @MA_NV
                COMMIT TRANSACTION
                SELECT N'Xoá thông tin nhân viên thành công!'
            END TRY
            BEGIN CATCH
                ROLLBACK TRANSACTION
                DECLARE @ERROR NVARCHAR(MAX) = 'Lỗi: ' + ERROR_MESSAGE()
                RAISERROR(@ERROR, 16,1)
            END CATCH
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Phan_Cong_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Xoá/Huỷ phân công nhân viên
CREATE PROC [dbo].[sp_Xoa_Phan_Cong_May_Tram]
	@MA_NV NChAR(12),
	@ID TINYINT
AS
BEGIN
	if not exists (select * from phan_cong where ma_nv = @MA_NV and id = @ID)
	BEGIN
		RAISERROR(N'Thông tin của Phân Công này không tồn tại!', 16, 1)
		RETURN
	END
	ELSE
	BEGIN
		SET XACT_ABORT ON
		SET TRANSACTION ISOLATION LEVEL serializable
		BEGIN DISTRIBUTED TRANSACTION
		BEGIN TRY
			DELETE 
			FROM phan_cong WITH(ROWLOCK)
			WHERE ma_nv = @MA_NV and id = @ID
			COMMIT TRANSACTION
			SELECT N'Xoá thông tin Phân Công thành công!'
		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION
			DECLARE @ErrMsg VARCHAR(max) = N'Lỗi xoá phân công: ' + ERROR_MESSAGE()
			RAISERROR(@ErrMsg, 16, 1)
		END CATCH
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Phieu_Chi_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Xoa_Phieu_Chi_May_Tram] @SO_PC INT
AS
BEGIN
    DECLARE @TO_STRING NVARCHAR(max)
    IF NOT EXISTS (SELECT so_phieu_chi from phieu_chi WHERE so_phieu_chi = @SO_PC)
        RAISERROR(N'Phiếu Chi với số phiếu [%d] không tồn tại!', 16, 1, @SO_PC) 
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            DELETE FROM phieu_chi WITH(ROWLOCK)
            WHERE so_phieu_chi = @SO_PC
            COMMIT TRANSACTION
            SELECT N'Xoá Phiếu Chi thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(MAX) = N'Lỗi xoá Phiếu Chi! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Phieu_Nhap_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Xoa_Phieu_Nhap_May_Tram] @SO_PN int
AS
BEGIN
    IF NOT EXISTS (SELECT so_phieu_nhap from phieu_nhap WHERE so_phieu_nhap = @SO_PN)
        RAISERROR(N'Phiếu Nhập với số phiếu nhập [%d] không tồn tại!', 16, 1, @SO_PN)
    ELSE IF EXISTS (SELECT so_phieu_nhap FROM chi_tiet_phieu_nhap WHERE so_phieu_nhap = @SO_PN)
        RAISERROR(N'Phiếu Nhập với số phiếu nhập [%d] hiện có các CTPN! Nếu muốn xoá toàn thông tin liên quan, hãy "Xoá toàn bộ thông tin Phiếu Nhập"!', 16, 1, @SO_PN)
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            DELETE FROM phieu_nhap WITH (ROWLOCK)
            WHERE so_phieu_nhap = @SO_PN
            COMMIT TRANSACTION
            SELECT N'Xoá Phiếu Nhập thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(MAX) = N'Lỗi xoá Phiếu Nhập! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1) 
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Phieu_Nhap_Va_CTPN_May_Tram]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Xoa_Phieu_Nhap_Va_CTPN_May_Tram] @SO_PN int
AS
BEGIN
    IF NOT EXISTS (SELECT so_phieu_nhap from phieu_nhap WHERE so_phieu_nhap = @SO_PN)
        RAISERROR(N'Phiếu Nhập với số phiếu nhập [%d] không tồn tại!', 16, 1, @SO_PN)
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION
        BEGIN TRY
            DELETE FROM chi_tiet_phieu_nhap WITH (ROWLOCK) WHERE so_phieu_nhap = @SO_PN
            DELETE FROM phieu_nhap WITH (ROWLOCK) WHERE so_phieu_nhap = @SO_PN
            COMMIT TRANSACTION
            SELECT N'Xoá Phiếu Nhập và các thông tin liên quan thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(MAX) = N'Lỗi xoá Phiếu Nhập! Chi tiết: ' + ERROR_MESSAGE()
            RAISERROR(@ERR, 16, 1) 
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Phieu_Phu_Thu]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Xoa_Phieu_Phu_Thu] @SO_PPT int
AS
BEGIN
    IF NOT EXISTS (SELECT so_phieu_thu FROM phieu_phu_thu WHERE so_phieu_thu = @SO_PPT)
        RAISERROR(N'Phiếu Phụ Thu với số phiếu = [%d] không tồn tại!', 16, 1, @SO_PPT)
    ELSE IF EXISTS(SELECT so_phieu_thu FROM chi_tiet_phu_thu WHERE so_phieu_thu = @SO_PPT)
        RAISERROR(N'Phiếu Phụ Thu có số phiếu [%d] có chứa vài chi tiết phụ thu! Nếu thực sự muốn xoá, Hãy chọn "Xoá tất cả thông tin của Phiếu Phụ Thu"!', 16, 1, @SO_PPT)
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION 
        BEGIN TRY
            DELETE FROM phieu_phu_thu WITH(ROWLOCK) WHERE so_phieu_thu = @SO_PPT
            COMMIT TRANSACTION
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(max) = N'Lỗi Xoá Phiếu Phụ Thu! Chi tiết: ' + ERROR_MESSAGE();
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_Phieu_Phu_Thu_Va_Chi_Tiet_Phu_Thu_Cua_No]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Xoa_Phieu_Phu_Thu_Va_Chi_Tiet_Phu_Thu_Cua_No] @SO_PPT int
AS
BEGIN
    IF NOT EXISTS (SELECT so_phieu_thu FROM phieu_phu_thu WHERE so_phieu_thu = @SO_PPT)
        RAISERROR(N'Phiếu Phụ Thu với số phiếu = [%d] không tồn tại!', 16, 1, @SO_PPT)
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN DISTRIBUTED TRANSACTION 
        BEGIN TRY
            DELETE FROM chi_tiet_phu_thu WITH (ROWLOCK) WHERE so_phieu_thu = @SO_PPT
            DELETE FROM phieu_phu_thu WITH(ROWLOCK) WHERE so_phieu_thu = @SO_PPT
            COMMIT TRANSACTION
            SELECT N'Xoá Phiếu Phụ Thu kèm các thông tin liên quan thành công!'
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
            DECLARE @ERR NVARCHAR(max) = N'Lỗi Xoá Phiếu Phụ Thu! Chi tiết: ' + ERROR_MESSAGE();
            RAISERROR(@ERR, 16, 1)
        END CATCH
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Xoa_San_Pham]    Script Date: 22/01/19 9:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Xoa_San_Pham] @MASP int
AS
BEGIN
    IF NOT EXISTS (SELECT ma_sp from san_pham where ma_sp = @MASP)
        RAISERROR(N'Sản phẩm với mã [%d] không tồn tại!', 16, 1, @MASP)
    ELSE IF EXISTS (SELECT ma_sp from san_pham where ma_sp = @MASP and be_deleted = 1)
    BEGIN
        DECLARE @TENSP NVARCHAR(80) = (SELECT ten_sp from san_pham where ma_sp = @MASP)
        RAISERROR(N'Sản phẩm: [Mã SP: %d, Tên SP: %s] đã được xoá!', 16, 1, @MASP, @TENSP)
    END
    ELSE
    BEGIN
        SET XACT_ABORT ON
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
        BEGIN TRANSACTION
            BEGIN TRY
                UPDATE san_pham WITH(updlock)
                set be_deleted = 1
                WHERE ma_sp = @MASP
                SELECT N'Xoá sản phẩm thành công!'
                COMMIT TRANSACTION
            END TRY
            BEGIN CATCH
                DECLARE @Err NVARCHAR(max) = ERROR_MESSAGE()
                ROLLBACK TRANSACTION
                RAISERROR (N'Lỗi => sp_Xoa_San_Pham: [%s]', 16, 1, @Err)
            END CATCH
    END
END
GO
USE [master]
GO
ALTER DATABASE [CSDLPT_BTL] SET  READ_WRITE 
GO
------------------------------------------------------
-------------Database role các trạm-----------------
use CSDLPT_BTL
GO
------Quản lý chi nhánh
create role QuanLyChiNhanh
GO
grant select, insert, update, delete on nhan_vien to QuanLyChiNhanh
grant select, insert, update, delete on hoa_don to QuanLyChiNhanh
grant select, insert, update, delete on chi_tiet_hoa_don to QuanLyChiNhanh
grant select, insert, update, delete on phieu_nhap to QuanLyChiNhanh
grant select, insert, update, delete on chi_tiet_phieu_nhap to QuanLyChiNhanh
grant select, insert, update, delete on phieu_chi to QuanLyChiNhanh
grant select, insert, update, delete on phieu_phu_thu to QuanLyChiNhanh
grant select, insert, update, delete on chi_tiet_phu_thu to QuanLyChiNhanh
grant select, insert, update, delete on phan_cong to QuanLyChiNhanh
grant select, insert, update, delete on khu_vuc to QuanLyChiNhanh
grant select, insert, update, delete on nha_cung_cap to QuanLyChiNhanh
grant select, insert, update, delete on khach_hang to QuanLyChiNhanh
grant select, update, delete on cham_cong to QuanLyChiNhanh
grant select on CN_KV to QuanLyChiNhanh
grant select on lich_lam_viec_parttime_dlcd to QuanLyChiNhanh
grant select on chi_nhanh to QuanLyChiNhanh
grant select on chuc_vu to QuanLyChiNhanh
grant select on dich_vu to QuanLyChiNhanh
grant select on san_pham to QuanLyChiNhanh
grant select on nguyen_lieu to QuanLyChiNhanh
grant select on nguyen_lieu_kho to QuanLyChiNhanh
--Sercurityadmin
---------Thủ Kho
create role ThuKho
GO
grant select, insert, update on nguyen_lieu_kho to ThuKho
grant select, insert, update, delete on phieu_nhap to ThuKho
grant select, insert, update, delete on chi_tiet_phieu_nhap to ThuKho
grant select, insert, update on nha_cung_cap to ThuKho
grant select on nguyen_lieu to ThuKho
grant select on chi_nhanh to ThuKho
grant select on hoa_don to ThuKho
grant select on chi_tiet_hoa_don to ThuKho
-------Thu Ngan
create role ThuNgan
GO
grant select on san_pham to ThuNgan
grant select on Backup_doanh_thu to ThuNgan
grant select, insert, update, delete on hoa_don to ThuNgan
grant select, insert, update, delete on chi_tiet_hoa_don to ThuNgan
grant select, insert, update, delete on phieu_phu_thu to ThuNgan
grant select, insert, update, delete on chi_tiet_phu_thu to ThuNgan
grant select, insert, update, delete on khach_hang to ThuNgan
grant select, insert, update, delete on phieu_chi to ThuNgan
grant select on khu_vuc to ThuNgan
grant select on CN_KV to ThuNgan
grant select on khuyen_mai to ThuNgan
grant select on dich_vu to ThuNgan
grant select on san_pham to ThuNgan
grant select on nhan_vien to ThuNgan
grant select on chi_nhanh to ThuNgan
GO
--Sercurityadmin
--
------Nhan vien parttime
create role NV_Parttime
GO
grant select, insert, update on cham_cong to NV_Parttime
grant select on san_pham to NV_Parttime
grant select on cong_thuc to NV_Parttime
grant select on nguyen_lieu to NV_Parttime
grant select on loai_san_pham to NV_Parttime
grant select on phan_cong to NV_Parttime
grant select on nguyen_lieu_kho to NV_Parttime
grant select on nhan_vien to NV_Parttime
grant select on chi_nhanh to NV_Parttime
go
--
---Khách hàng:
create role KhachHang
go
grant select on khach_hang to KhachHang
grant select on loai_san_pham to KhachHang
grant select on san_pham to KhachHang
grant select on dich_vu to KhachHang
GO
---- NHAN SU CHI NHANH
create role NhanSuChiNhanh
GO
grant select, insert, update, delete on nhan_vien to NhanSuChiNhanh
grant select, insert, update, delete on cham_cong to NhanSuChiNhanh
grant select, insert, update, delete on phan_cong to NhanSuChiNhanh
grant select on lich_lam_viec_parttime_dlcd to NhanSuChiNhanh
grant select on chuc_vu to NhanSuChiNhanh
grant select on chi_nhanh to NhanSuChiNhanh
----------------------------------------------
GO
sp_addrolemember 'db_securityadmin','QuanLyChiNhanh'
go
sp_addrolemember 'db_securityadmin','ThuNgan'
go
sp_addrolemember 'db_accessadmin','ThuNgan'
go
sp_addrolemember 'db_accessadmin','QuanLyChiNhanh'
go
sp_addrolemember 'db_securityadmin','NhanSuChiNhanh'
go
sp_addrolemember 'db_accessadmin','NhanSuChiNhanh'
go

-------------------------GRANT FOR STORE PROCEDURE
USE CSDLPT_BTL
GO
GRANT EXECUTE ON OBJECT::sp_Phuc_Hoi_Khach_Hang_May_Tram To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_CTHD_Cua_Hoa_Don_May_Tram To ThuNgan, ThuKho, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Doi_Mat_Khau_Login To ThuNgan, ThuKho, QuanLyChiNhanh, NhanSuChiNhanh, KhachHang, NV_Parttime
GRANT EXECUTE ON OBJECT::sp_Khoa_Login To NhanSuChiNhanh, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Lay_Danh_Sach_Khu_vuc_De_Thanh_Toan_Hoa_Don To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Lay_DS_Chuc_Vu_Khi_Them_Sua_Nhan_Vien To NhanSuChiNhanh, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Lay_DS_Database_Role To ThuNgan, ThuKho, QuanLyChiNhanh, NhanSuChiNhanh, KhachHang, NV_Parttime
GRANT EXECUTE ON OBJECT::sp_Lay_DS_Danh_Muc_Quan_Ly_Theo_Login_Name To ThuNgan, ThuKho, QuanLyChiNhanh, NhanSuChiNhanh, KhachHang, NV_Parttime, KhachHang
GRANT EXECUTE ON OBJECT::sp_Lay_Thong_Tin_NV_Tu_Login To ThuNgan, ThuKho, QuanLyChiNhanh, NhanSuChiNhanh, NV_Parttime
GRANT EXECUTE ON OBJECT::sp_Lay_Thong_Tin_KH_Tu_Login To KhachHang
GRANT EXECUTE ON OBJECT::sp_Mo_Khoa_Login To NhanSuChiNhanh, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Phan_cong_NV_Parttime_May_Tram To NhanSuChiNhanh, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Phuc_Hoi_Khach_Hang_May_Tram To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Phuc_Hoi_Nha_Cung_Cap_May_Tram To ThuKho, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Phuc_Hoi_Nhan_Vien_May_Tram To NhanSuChiNhanh, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Sua_Chi_Tiet_Phieu_Nhap_May_Tram To ThuKho, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Sua_Hoa_Don_May_Tram To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Sua_Khach_Hang_May_Tram To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Sua_Nha_Cung_Cap_May_Tram To ThuKho, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Sua_Nhan_Vien_May_Tram To NhanSuChiNhanh, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Sua_Phieu_Chi_May_Tram To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Sua_SL_Chi_Tiet_Phu_Thu_May_Tram To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Sua_So_Luong_San_Pham_CTHD_May_Tram to ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Thanh_Toan_Hoa_Don_May_Tram To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Them_Chi_Tiet_Hoa_Don_May_Tram To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Them_Chi_Tiet_Phieu_Nhap_May_Tram To ThuKho, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Them_Chi_Tiet_Phu_Thu_May_Tram To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Them_Hoa_Don_May_Tram To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Them_Khach_Hang_May_Tram To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Them_Nha_Cung_Cap_May_Tram To ThuKho, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Them_Nhan_Vien_May_Tram To NhanSuChiNhanh, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Them_Phieu_Chi_May_Tram To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Them_Phieu_Nhap_May_Tram To ThuKho, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Them_Phieu_Phu_Thu To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xem_cac_ca_lam_viec To ThuNgan, ThuKho, QuanLyChiNhanh, NhanSuChiNhanh, KhachHang, NV_Parttime
GRANT EXECUTE ON OBJECT::sp_Xem_Cac_Khuyen_Mai To ThuNgan, ThuKho, QuanLyChiNhanh, NhanSuChiNhanh, KhachHang, NV_Parttime
GRANT EXECUTE ON OBJECT::sp_Xem_Cac_Loai_San_Pham To ThuNgan, ThuKho, QuanLyChiNhanh, NhanSuChiNhanh, KhachHang, NV_Parttime
GRANT EXECUTE ON OBJECT::sp_Xem_Cong_Thuc_Cua_San_Pham To ThuNgan, ThuKho, QuanLyChiNhanh, NhanSuChiNhanh, KhachHang, NV_Parttime
GRANT EXECUTE ON OBJECT::sp_Xem_CTPN_Cua_Phieu_Nhap_May_Tram To ThuKho, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xem_CTPT_Cua_PPT_May_Tram To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xem_Chi_Nhanh To ThuNgan, ThuKho, QuanLyChiNhanh, NhanSuChiNhanh, KhachHang, NV_Parttime
GRANT EXECUTE ON OBJECT::sp_Xem_Chuc_Vu To NhanSuChiNhanh, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xem_Dich_Vu To ThuNgan, ThuKho, QuanLyChiNhanh, NhanSuChiNhanh, KhachHang, NV_Parttime
GRANT EXECUTE ON OBJECT::sp_Xem_Hoa_Don_May_Tram To ThuNgan, QuanLyChiNhanh, ThuKho
GRANT EXECUTE ON OBJECT::sp_Xem_Khach_Hang_Da_Xoa_May_Tram To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xem_Khach_Hang_May_Tram To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xem_Khu_Vuc To ThuNgan, ThuKho, QuanLyChiNhanh, NhanSuChiNhanh, KhachHang, NV_Parttime
GRANT EXECUTE ON OBJECT::sp_Xem_Khu_Vuc_Cua_Chi_Nhanh To ThuNgan, ThuKho, QuanLyChiNhanh, NhanSuChiNhanh, KhachHang, NV_Parttime
GRANT EXECUTE ON OBJECT::sp_Xem_Loai_Hinh_Chi To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xem_Nguyen_Lieu To ThuNgan, ThuKho, QuanLyChiNhanh, NhanSuChiNhanh, KhachHang, NV_Parttime
GRANT EXECUTE ON OBJECT::sp_Xem_Nha_Cung_Cap_Da_Xoa_May_Tram To ThuKho, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xem_Nha_Cung_Cap_May_Tram To ThuKho, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xem_Nhan_Vien_Da_Xoa_May_Tram To NhanSuChiNhanh, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xem_Nhan_Vien_May_Tram To NhanSuChiNhanh, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xem_Phan_Cong To ThuNgan, ThuKho, QuanLyChiNhanh, NhanSuChiNhanh, KhachHang, NV_Parttime
GRANT EXECUTE ON OBJECT::sp_Xem_Phieu_Chi_May_Tram To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xem_Phieu_Nhap_May_Tram To ThuKho, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xem_Phieu_Phu_Thu To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xem_San_Pham To ThuNgan, ThuKho, QuanLyChiNhanh, NhanSuChiNhanh, KhachHang, NV_Parttime
GRANT EXECUTE ON OBJECT::[dbo].[sp_Xoa_CTHD_May_Tram] To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xoa_Chi_Tiet_Phieu_Nhap_May_Tram To ThuKho, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xoa_Chi_Tiet_Phu_Thu_May_Tram To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xoa_Hoa_Don_Da_Thanh_Toan_May_Tram To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xoa_Hoa_Don_Da_Thanh_Toan_Va_CTHD_May_Tram To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xoa_Hoa_Don_May_Tram To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xoa_Hoa_Don_Va_CTHD_May_Tram To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xoa_Hoan_Toan_Khach_Hang_May_Tram To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xoa_Hoan_Toan_Nha_Cung_Cap_May_Tram To ThuKho, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xoa_Hoan_Toan_Nhan_Vien_May_Tram To NhanSuChiNhanh, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xoa_Khach_Hang_May_Tram To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xoa_Nha_Cung_Cap_May_Tram To ThuKho, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xoa_Nhan_Vien_May_Tram To NhanSuChiNhanh, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xoa_Phan_Cong_May_Tram To NhanSuChiNhanh, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xoa_Phieu_Chi_May_Tram To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xoa_Phieu_Nhap_May_Tram To ThuKho, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xoa_Phieu_Nhap_Va_CTPN_May_Tram To ThuKho, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xoa_Phieu_Phu_Thu To ThuNgan, QuanLyChiNhanh
GRANT EXECUTE ON OBJECT::sp_Xoa_Phieu_Phu_Thu_Va_Chi_Tiet_Phu_Thu_Cua_No To ThuNgan, QuanLyChiNhanh
-----------------------------------------------------------------------------------