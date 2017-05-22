USE [MobileShop]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 05/22/2017 21:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles] 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'9d35b977-8d12-4c12-9237-bb1f2fa714a6', N'Admin')
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 05/22/2017 21:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201705081716340_InitialCreate', N'DoAn_Mobileshop.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E2F70FE83A0A7738AD4CAE5EC621BD82D5227E909BAB9609D2DCE5B404BB443AC44AA12954D50F497F5E1FCA4F3173AD4CD122FBAD88AED140B2C2272F8CD70382487C3A1FFFFE7FFC63F3E07BEF584A398303AB18F4687B685A9CB3C4297133BE18BEF3ED83FFEF08F6FC6175EF06CFD5AD09D083A6849E389FDC87978EA38B1FB8803148F02E2462C660B3E7259E0208F39C78787DF3B47470E06081BB02C6BFC29A19C0438FD80CF29A32E0E7982FC6BE6613FCECBA16696A25A3728C071885C3CB1CFD9197DB86673E2E3F89185A3AC856D9DF904813433EC2F6C0B51CA38E220EBE9E718CF78C4E872164201F2EF5F420C740BE4C738EFC3E98ABC6B770E8F45779C55C302CA4D62CE829E804727B97E1CB9F95A5AB64BFD81062F40D3FC45F43AD5E2C4BEF2705AF489F9A00099E1E9D48F04F1C4BE2E599CC5E10DE6A3A2E12883BC8C00EE2B8BBE8CAA880756E77607A53D1D8F0EC5BF036B9AF83C89F084E28447C83FB0EE92B94FDC5FF0CB3DFB82E9E4E468BE38F9F0EE3DF24EDEFF1B9FBCABF614FA0A74B50228BA8B588823900D2FCAFEDB96536FE7C80DCB6695369956C096606AD8D6357AFE88E9923FC2A439FE605B97E4197B45496E5C9F298199048D7894C0E74DE2FB68EEE3B2DE69E429FE6FE07AFCEEFD205C6FD01359A6432FF1878913C1BCFA84FDB4367E246136BD6AE3FD90935D462C10DF75FBCA6A1F662C895CD1196624B947D112F3BA74636765BC9D4C5A400D6FD605EAFE9BB69054356F2DA9E8D03A33A160B1EDD950C8FBBA7C3B5BDC5918C2E0A5A62534D26470FA0D6B24211C5812DDCA848EBA9A1085AEFD9D57C48B00117F8025B10317F04816240A70D9CB9F181820A2BD65BE43710C2B82F71F143F36880E7F0E20FA0CBB4904863AE328085F9DDBDD23A3F82609E6C2FEB7C76BB0A1B9FFCA2E91CB59744145AB8DF13E32F70B4BF805F5CE11C79FB95B008ACF7B12740718449C33D7C5717C09C68CBD290387BB00BCA2FCE4B8379C58A476ED924C7D4402BD4F222DA70F05E9CA2FD15328BE89814CE79F3489FA912D09ED266A416A1635A368153527EB2BAA00EB26694E69163425689533A31ACCE34B476878972F85DD7F9F6FB3CDDBB41654D438831512FF8C298E6019F3EE10E738A2AB11E8B26EECC25948874F307DF5BD29E5F42BF293A159AD351BD24560F8D990C2EEFF6C48C584E227E209AFA4C341A82006F84EF4FA3356FB9C9324DBF674A87573DBCCB7B30698A6CB591C3397A4B3401302CB031875F9C187B3DAA319596FE48808740C0C9D882D0F4AA06FB66C54B7F41CFB9863EBCCCD42845314BBC853D5081DF27A0856ECA81AC1569191BA70DF2A3CC1D271241A2171088A61A612CAD56941A84B42E4B76A496AD9710B137D2F79C835E738C454306CD54417E6FA408810A0E4230D4A9B86C64EC5E29A0DD1E0B59AC6BCCD855D8DBB129FD88A4DB6F8CE06BBCCFDB75731CC668D6DC1389B55D2450063506F17069A9F55BA1A807C70D93703954E4C0603CD5DAAAD18685D633B30D0BA4ADE9C816647D4AEE32F9D57F7CD3CEB07E5ED6FEB8DEADA816DD6F4B167A699F99ED086430B1CA9E6793E1795F8996B0E6720677E3E8B7357573611013EC3BC1EB259F9BB5A3FD46906918DA8097065682DA0F975A002A44CA81EC215B1BC46E9722FA2076C11776B84CDD77E09B662032A76F55AB44268BE3C958DB3D3E9A3EC59690D8A91773A2C54703406212F5EF58E77508A292EAB2AA68B2FDCC71BAE742C1F8C0605B578AE0625159D195C4B8569B66B49E790F571C936D292E43E19B4547466702DE536DAAE248D53D0C32DD84845F52D7CA0C956443ACADDA6AC1B3B59C6545E30760CA955E36B1486842E2BA956798935CBF2ACA6DFCDFA271F051986E3C69A1CA452DA921367115A62A9165883A497248AF939E2688E449C67EA050A99766F352CFF05CBEAF6A90E62B10F14D4E2EFAC85E112BFB6DFAA0E498E7309BD0C84579386D23536A06F6E89F437E4A34813BD9F323F09A8D9C932B7CEEEF0AAEDB3121561EC48F22B4E94A231C5D5ADABBFD3E0A81363C0812AFD98F507CB0C615279E18556956EF24CCD2845A0AA8A620A5EED6CF04C0E4DEF0193FDC5FEE3D58AF03AF32B4F52A902E4453D312A790E0A58A5AE3B6A3D15A58A59AFE98E28E59B5421A5AA1E5256B34A6A42562BD6C23368544FD19D839A475245576BBB236B324AAAD09AEA35B03532CB75DD5135492755604D7577EC55068ABC90EEF10E663CC56CB4856587DDCDF63003C6EBAC8AC36C81953BFD2A50A5B827567E6BAF80E5E57B6951C613DF461695C53936B32803867905AADD88D717A0C66B7C3366ED9ABBB6C8375DF39BF1FAD9EDAB5A8772E893494AEEE5E14F3AE48DF30357FB231BE5049691D856A146D8E05F628E83912018CD7EF3A73EC162392F08AE11250B1CF32CB5C38603E207E98DCEFEBC9771E2D8F3350756D3A399FA986D214B8B3EA1C87D44919A33B1C19B9215A8128EBEA21E7E9ED8BFA7AD4ED3C886F82B2D3EB0AEE2CF94FC9640C57D9460EB0F350774981CFBE603D79EBE88E8AED5ABFF3E644D0FACDB0866CCA97528E9729D11AEBF93E8254DD6740369D67E3DF1762754ED498216559A10EBBF4098133EC8EB8342CA7F06E8F95F7D45D3BE30D80851F38A6028BC4154687A25B00E96F18580079F3C7D21D0AFB3FA1703EB88667C2D40687F30F9AD40F765A868B9C3AD46732EDAC69294EAB935D77AA3C4CB5DEF4D4A4AF646135D4DBBEE01B7416AF51A96F1C6B29207DB1D3549C78361EFD2B45F3DD3785F928B57691FBBCD29DE661A71C315D1DF2A7B780FF2DD34F93BBBCF11DEB6AD9962B97B9E68D92F1378CF8C2DCFEADA7DBEEFB68DCD14E6DD7363EB95D5BB67B6B6ABFD73C796D6790BDD798EAE9A6E64B893D1C582DB7270B3C0399CF0E70C8C20F328B3A793FAA4AFA684D516862B12335373B699CC5899380A5F85A2996DBFBEE61B7E6367739A66B6861CCD26DEF9FADFC83BA769E66DC87CDC45F6B036F75097D1DDB28E352544BDA56CE15A4F5A92D3DB7CD6C60BF6B7941C3C88526AB3C77047FC7672810751C99053A747EEAF7ADD0B7B67E5971761FF8EC97205217E879162B7B66B96345774C18ACD5B92A820912234D798230FB6D4B38893057239548B1873FAF63B8DDB899B8E39F6AEE86DC2C38443977130F76B012FE10434F14F139CEB328F6FC3F4674C86E8028849446CFE96FE9410DF2BE5BED4C4840C10C2BBC823BA622CB988EC2E5F4AA41B463B02E5EA2B9DA27B1C843E80C5B774869EF03AB281F97DC44BE4BEAC22802690F681A8AB7D7C4ED03242419C63ACDAC327D8B0173CFFF017602F997C80540000, N'6.1.3-40302')
/****** Object:  Table [dbo].[TinhTrang]    Script Date: 05/22/2017 21:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TinhTrang](
	[MaTinhTrang] [int] NOT NULL,
	[TenTinhTrang] [varchar](50) NULL,
 CONSTRAINT [pk_TinhTrang] PRIMARY KEY CLUSTERED 
(
	[MaTinhTrang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TinhTrang] ([MaTinhTrang], [TenTinhTrang]) VALUES (1, N'Ð?t hàng')
INSERT [dbo].[TinhTrang] ([MaTinhTrang], [TenTinhTrang]) VALUES (2, N'Ðang giao hàng')
INSERT [dbo].[TinhTrang] ([MaTinhTrang], [TenTinhTrang]) VALUES (3, N'Thanh toán')
INSERT [dbo].[TinhTrang] ([MaTinhTrang], [TenTinhTrang]) VALUES (4, N'H?y')
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 05/22/2017 21:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSanXuat] [int] NOT NULL,
	[TenNhaSanXuat] [varchar](50) NULL,
	[BiXoa] [tinyint] NULL,
 CONSTRAINT [pk_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [BiXoa]) VALUES (0, N'SAMSUNG', 1)
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [BiXoa]) VALUES (1, N'SAMSUNG', 0)
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [BiXoa]) VALUES (2, N'APPLE', 0)
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [BiXoa]) VALUES (3, N'OPPO', 0)
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [BiXoa]) VALUES (4, N'SONY', 0)
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [BiXoa]) VALUES (5, N'HUAWEI', 0)
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [BiXoa]) VALUES (6, N'NOKIA', 0)
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [BiXoa]) VALUES (7, N'ASUS', 0)
/****** Object:  Table [dbo].[LoaiTaiKhoan]    Script Date: 05/22/2017 21:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiTaiKhoan](
	[MaLoaiTaiKhoan] [int] NOT NULL,
	[LoaiTaiKhoan] [varchar](50) NOT NULL,
 CONSTRAINT [pk_LoaiTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTaiKhoan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTaiKhoan], [LoaiTaiKhoan]) VALUES (1, N'user')
INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTaiKhoan], [LoaiTaiKhoan]) VALUES (2, N'admin')
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 05/22/2017 21:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [int] NOT NULL,
	[TenLoaiSanPham] [varchar](50) NULL,
	[BiXoa] [tinyint] NULL,
 CONSTRAINT [pk_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [BiXoa]) VALUES (0, N'FA', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [BiXoa]) VALUES (1, N'SamSung', 0)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [BiXoa]) VALUES (2, N'iphone', 0)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [BiXoa]) VALUES (3, N'OPPO', 0)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [BiXoa]) VALUES (4, N'SONY', 0)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [BiXoa]) VALUES (5, N'HUAWEI', 0)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [BiXoa]) VALUES (6, N'ASUS', 0)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [BiXoa]) VALUES (7, N'NOKIA', 0)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [BiXoa]) VALUES (10, N'Galaxy S8 Plus', 0)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [BiXoa]) VALUES (15, NULL, 0)
/****** Object:  Table [dbo].[GioHang]    Script Date: 05/22/2017 21:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [nvarchar](128) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GioHang] ON
INSERT [dbo].[GioHang] ([Id], [MaTaiKhoan], [MaSanPham], [SoLuong]) VALUES (1, N'133d636d-e306-4902-8b9e-421a5fbc045a', 1, 10)
INSERT [dbo].[GioHang] ([Id], [MaTaiKhoan], [MaSanPham], [SoLuong]) VALUES (7, N'133d636d-e306-4902-8b9e-421a5fbc045a', 3, 9)
INSERT [dbo].[GioHang] ([Id], [MaTaiKhoan], [MaSanPham], [SoLuong]) VALUES (8, N'e93e1469-15b3-4ca0-acc1-f5d1948d9544', 1, 9)
INSERT [dbo].[GioHang] ([Id], [MaTaiKhoan], [MaSanPham], [SoLuong]) VALUES (9, N'e93e1469-15b3-4ca0-acc1-f5d1948d9544', 1, 1)
SET IDENTITY_INSERT [dbo].[GioHang] OFF
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 05/22/2017 21:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers] 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'133d636d-e306-4902-8b9e-421a5fbc045a', N'14ck1@gmail.com', 0, N'ADJGFEKGHuZE+DEm5ebfmC7gYiiLhA+ttcL535PKiDLahGmTZ9GWa60BVyRkbAVKag==', N'33f85811-a40a-44ce-a60f-5846528283b8', NULL, 0, 0, NULL, 1, 0, N'14ck1@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'91b23453-df85-49bb-93e3-4d90bf20b113', N'mychikhtn@gmail.com', 0, N'ALoGCZprPCVEhkj4nXviYo5AepBOPDAojApdcufYgcAJ3D9/vpyDBigS3TWfTE5YQQ==', N'7b8e0ae1-08a7-45bc-bd62-4b2b99a2e3da', NULL, 0, 0, NULL, 1, 0, N'mychikhtn@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'e93e1469-15b3-4ca0-acc1-f5d1948d9544', N'hachi@gmail.com', 0, N'AGAsBUIvHJsZ+5QrIX14PwrkT5K1P/eJUpSjKnWP+NbCBDHCut11uy7jxfwYdqb5wg==', N'224e05da-86b5-4d14-aa37-a961fdf09895', NULL, 0, 0, NULL, 1, 0, N'hachi@gmail.com')
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 05/22/2017 21:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 05/22/2017 21:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 05/22/2017 21:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 05/22/2017 21:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTaiKhoan] [int] NOT NULL,
	[TenTaiKhoan] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[TenHienThi] [varchar](100) NULL,
	[NgaySinh] [date] NULL,
	[BiXoa] [tinyint] NULL,
	[MaLoaiTaiKhoan] [int] NOT NULL,
	[NoiSong] [varchar](100) NULL,
 CONSTRAINT [pk_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [TenHienThi], [NgaySinh], [BiXoa], [MaLoaiTaiKhoan], [NoiSong]) VALUES (1, N'trctoan', N'e10adc3949ba59abbe56e057f20f883e', N'Tr?n Công To?n', CAST(0x541F0B00 AS Date), 0, 1, N'H? Chí Minh')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [TenHienThi], [NgaySinh], [BiXoa], [MaLoaiTaiKhoan], [NoiSong]) VALUES (2, N'admin', N'0192023a7bbd73250516f069df18b500', N'Lý Nam Du', CAST(0x061C0B00 AS Date), 0, 2, N'H? Chí Minh')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [TenHienThi], [NgaySinh], [BiXoa], [MaLoaiTaiKhoan], [NoiSong]) VALUES (3, N'ChiuLee', N'f7d8160ec84ec37fb6a72768d9ae7866', N'Lê Van Chiu', CAST(0xF91B0B00 AS Date), 0, 1, N'Hà N?i')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [TenHienThi], [NgaySinh], [BiXoa], [MaLoaiTaiKhoan], [NoiSong]) VALUES (4, N'HaChi', N'77d7c854015841b3892b803252426fd7', N'Chi Hà Th? M?', CAST(0x9B1E0B00 AS Date), 0, 1, N'Ðà N?ng')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [TenHienThi], [NgaySinh], [BiXoa], [MaLoaiTaiKhoan], [NoiSong]) VALUES (5, N'dungthuy', N'e5484520b896b2f8749d489e72ede084', N'Hoàng Thùy Dung', CAST(0xA5210B00 AS Date), 0, 1, N'Hà N?i')
/****** Object:  Table [dbo].[SanPham]    Script Date: 05/22/2017 21:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [varchar](50) NULL,
	[MoTa] [text] NULL,
	[XuatXu] [varchar](50) NULL,
	[MaNhaSanXuat] [int] NOT NULL,
	[GiaBan] [int] NULL,
	[NgayNhap] [datetime] NULL,
	[SoLuongBan] [int] NULL,
	[SoLuongTon] [int] NULL,
	[MaLoaiSanPham] [int] NOT NULL,
	[SoLuongXem] [int] NULL,
	[HinhAnh] [varchar](100) NULL,
	[BiXoa] [tinyint] NULL,
 CONSTRAINT [pk_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (1, N'iPhone 7 plus', N'Màn hình: 5.6", Retina HD HÐH: iOS 10 CPU: Apple A10 Fusion 4 nhân RAM: 3GB, ROM: 32GB Camera: 2x12 MP, Selfie: 7 MP PIN: 2900 mAh, SIM: 1SIM', N'Made in china', 2, 27990000, CAST(0x0000A6D600000000 AS DateTime), 10, 25, 2, 33, N'iphone_7_plus_256.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (2, N'iPhone 7 128GB', N'Màn hình: 4.7", Retina HD HÐH: iOS 10 CPU: Apple A10 Fusion 4 nhân RAM: 2GB, ROM: 128GB Camera: 12 MP, Selfie: 7 MP PIN: 1960 mAh, SIM: 1SIM', N'Made in China', 2, 21690000, CAST(0x0000A6DB00000000 AS DateTime), 7, 15, 2, 33, N'iphone_7_plus_128.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (3, N'iPhone 7 Plus64GB', N'Màn hình: 5.6", Retina HD HÐH: iOS 10 CPU: Apple A10 Fusion 4 nhân RAM: 3GB, ROM: 32GB Camera: 2x12 MP, Selfie: 7 MP PIN: 2900 mAh, SIM: 1SIM', N'Made in China', 2, 23290000, CAST(0x0000A6DA00000000 AS DateTime), 4, 13, 2, 30, N'iphone_7_plus_32.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (4, N'iPhone SE 64GB', N'Màn hình: 5.5", Retina HD HÐH: iOS 10 CPU: Apple A10 Fusion 4 nhân RAM: 3GB, ROM: 256GB Camera: 2x12 MP, Selfie: 7 MP PIN: 2900 mAh, SIM: 1SIM', N'Made in China', 2, 11990000, CAST(0x0000A6E900000000 AS DateTime), 3, 8, 2, 34, N'iphone_se_64.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (5, N'SamSung Galaxy 7', N'Màn hình: 5.5", Quad HD HÐH: Android 6.0 (Marshmallow) CPU: Exynos 8890 8 nhân RAM: 4 GB, ROM: 32 GB Camera: 12 MP, Selfie: 5 MP PIN: 3600 mAh, SIM: 2 SIM', N'Made in VietNam', 1, 15990000, CAST(0x0000A6EB00000000 AS DateTime), 5, 15, 1, 68, N'samsung_galaxy_s7_edge.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (6, N'SamSung Galaxy 5', N'Màn hình: 5.7", Quad HD HÐH: Android 6.0 (Marshmallow) CPU: Exynos 7420 8 nhân RAM: 4 GB, ROM: 32 GB Camera: 16 MP, Selfie: 5 MP PIN: 3000 mAh, SIM: 1 SIM', N'Made in Vietnam', 1, 12490000, CAST(0x0000A6DA00000000 AS DateTime), 7, 19, 1, 42, N'samsung_galaxy_note_5.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (7, N'Samsung Galaxy A9 Pro', N'Màn hình: 6", Full HD HÐH: Android 6.0 (Marshmallow) CPU:Snapdragon 652 8 nhân RAM: 4 GB, ROM: 32 GB Camera: 16 MP, Selfie: 8 MP PIN: 5000 mAh, SIM: 2 SIM', N'Made in Vietnam', 1, 10990000, CAST(0x0000A6E900000000 AS DateTime), 7, 15, 1, 41, N'samsung_galaxy_a9_pro.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (8, N'Samsung Galaxy J7 Prime', N'Màn hình: 5.5", Quad HD HÐH: Android 6.0 (Marshmallow) CPU: Exynos 8890 8 nhân RAM: 4 GB, ROM: 32 GB Camera: 12 MP, Selfie: 5 MP PIN: 3600 mAh, SIM: 2 SIM', N'Made in Vietnam', 1, 62900000, CAST(0x0000A6E000000000 AS DateTime), 3, 9, 1, 25, N'samsung_galaxy_j7_prime.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (9, N'Samsung Galaxy A3 2016', N'Màn hình: 5.5", HD HÐH: Android 5.1 (Lollipop) CPU: Exynos 7580 8 nhân RAM: 1.5 GB, ROM: 16 GB Camera: 13 MP, Selfie: 5 MP PIN: 3000 mAh, SIM: 2 SIM', N'Made in Vietnam', 1, 5390000, CAST(0x0000A6E800000000 AS DateTime), 2, 11, 1, 33, N'samsung_galaxy_a3_2016.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (10, N'Samsung Galaxy 7', N'Màn hình: 4.7", Full HD HÐH: Android 5.1 (Lollipop) CPU: Exynos 7578 4 nhân RAM: 1.5 GB, ROM: 16 GB Camera: 13 MP, Selfie: 5 MP PIN: 2300 mAh, SIM: 2 SIM', N'Made in Vietnam', 1, 4068000, CAST(0x0000A6E600000000 AS DateTime), 3, 12, 1, 23, N'samsung_galaxy_j7.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (11, N'OPPO F1 Plus', N'Màn hình: 5.5", Full HD HÐH: Android 5.1 (Lollipop) CPU: Helio P10 8 nhân RAM: 4 GB, ROM: 64 GB Camera: 13 MP, Selfie: 16 MP PIN: 2850 mAh, SIM: 2 SIM', N'Made in China ', 3, 9990000, CAST(0x0000A6E800000000 AS DateTime), 8, 16, 3, 45, N'oppo_f1_plus.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (12, N'OPPO F1s', N'Màn hình: 5.5", HD HÐH: Android 5.1 (Lollipop) CPU: Mediatek MT6750 8 nhân RAM: 3 GB, ROM: 32 GB Camera: 13 MP, Selfie: 16 MP PIN: 3075 mAh, SIM: 2 SIM', N'Made in China', 3, 5990000, CAST(0x0000A6E700000000 AS DateTime), 4, 19, 3, 40, N'oppo_f1s.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (13, N'OPPO A39 (Neo 9s)', N'Màn hình: 5.2", HD HÐH: Android 5.1 (Lollipop) CPU: MT6750, 8 nhân RAM: 3 GB, ROM: 32 GB Camera: 13 MP, Selfie: 5 MP PIN: 2900 mAh, SIM: 2 SIM', N'Made in China', 3, 4690000, CAST(0x0000A6DC00000000 AS DateTime), 3, 9, 3, 26, N'oppo_a39_neo_9.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (14, N'OPPO A37 (Neo 9)', N'Màn hình: 5", HD HÐH: Android 5.1 (Lollipop) CPU: Snapdragon 410 4 nhân RAM: 2 GB, ROM: 16 GB Camera: 8 MP, Selfie: 5 MP PIN: 2630 mAh, SIM: 2 SIM', N'Made in China', 3, 3690000, CAST(0x0000A6E100000000 AS DateTime), 2, 9, 3, 25, N'oppo_a37_neo_9.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (15, N'OPPO Neo 7', N'Màn hình: 5", qHD HÐH: Android 5.1 (Lollipop) CPU: MTK 6582 4 nhân RAM: 1 GB, ROM: 16 GB Camera: 8 MP, Selfie: 5 MP PIN: 2420 mAh, SIM: 2 SIM', N'Made in China', 3, 3290000, CAST(0x0000A6E100000000 AS DateTime), 2, 8, 3, 18, N'oppo_neo_7.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (16, N'OPPO Neo 7s', N'Màn hình: 5", qHD HÐH: Android 5.1 (Lollipop) CPU: Snapdragon 410 4 nhân RAM: 1 GB, ROM: 16 GB Camera: 8 MP, Selfie: 5 MP PIN: 2420 mAh, SIM: 2 SIM', N'Made in China', 3, 3290000, CAST(0x0000A6E400000000 AS DateTime), 2, 10, 3, 18, N'oppo_neo_7s.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (17, N'Sony Xperia XZ', N'Màn hình: 5.2", Full HD HÐH: Android 6.0 (Marshmallow) CPU: MTK 6582 4 nhân RAM: 3 GB, ROM: 64 GB Camera: 23 MP, Selfie: 13 MP PIN: 2900 mAh, SIM: 2 SIM', N'Made in Vietnam', 4, 14990000, CAST(0x0000A6E400000000 AS DateTime), 8, 20, 4, 28, N'sony_xperia_xz.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (18, N'Sony Xperia Dual', N'Màn hình: 5.2", Full HD HÐH: Android 6.0 (Marshmallow) CPU: Snapdragon 650 6 nhân RAM: 3 GB, ROM: 64 GB Camera: 23 MP, Selfie: 13 MP PIN: 2620 mAh, SIM: 2 SIM', N'Made in Vietnam', 4, 10990000, CAST(0x0000A6D900000000 AS DateTime), 3, 24, 4, 32, N'sony_xperia_z5.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (19, N'Sony Xperia XA Ultra 123', N'Màn hình: 5.2", Full HD HÐH: Android 6.0 (Marshmallow) CPU: Snapdragon 810 4 nhân RAM: 3 GB, ROM: 32 GB Camera: 23 MP, Selfie: 5 MP PIN: 2900 mAh, SIM: 2 SIM', N'Made in Vietnam', 4, 9990000, CAST(0x0000A6EA00000000 AS DateTime), 4, 12, 4, 21, N'sony_xperia_x.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (20, N'Sony Xperia XA Ultra Selif', N'Màn hình: 5", HD HÐH: Android 6.0 (Marshmallow) CPU: Helio P10 8 nhân RAM: 2 GB, ROM: 16 GB Camera: 13 MP, Selfie: 8 MP PIN: 2300 mAh, SIM: 2 SIM', N'Made in Vietnam', 4, 7490000, CAST(0x0000A6E900000000 AS DateTime), 2, 10, 4, 30, N'sony_xperia_xa_ultra.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (21, N'Sony Xperia M5 E12', N'Màn hình: 6", Full HD HÐH: Android 6.0 (Marshmallow) CPU: Helio P10 8 nhân RAM: 3 GB, ROM: 16 GB Camera: 21.5 MP, Selfie: 16 MP PIN: 2700 mAh, SIM: 2 SIM', N'Made in Vietnam', 4, 6990000, CAST(0x0000A6E800000000 AS DateTime), 2, 10, 4, 15, N'sony_xperia_m5_single.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (22, N'Sony Xperia  XA E13', N'Màn hình: 5", Full HD HÐH: Android 5.0 (Lollipop) CPU: Helio x10 8 nhân RAM: 3 GB, ROM: 16 GB Camera: 21.5 MP, Selfie: 13 MP PIN: 2600 mAh, SIM: 1 SIM', N'Made in Vietnam', 4, 6990000, CAST(0x0000A6EB00000000 AS DateTime), 3, 14, 4, 56, N'sony_xperia_xa.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (23, N'ASUS Zenfone ZE', N'Màn hình: 5.5",Full HD HÐH: Android 6.0 (Marshmallow) CPU: Snapdragon 625 8 nhân RAM: 4 GB, ROM: 64 GB Camera: 16 MP, Selfie: 8 MP PIN: 3000 mAh, SIM: 2 SIM', N'Made in USA', 7, 8990000, CAST(0x0000A6E900000000 AS DateTime), 6, 16, 6, 45, N'asus_zenfone_3_ze552kl.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (24, N'ASUS Zenfone MX ', N'Màn hình: 5.5",Full HD HÐH: Android 6.0 (Marshmallow) CPU: Qualcomm Snapdragon 430 8 nhân RAM: 3 GB, ROM: 32 GB Camera: 16 MP, Selfie: 8 MP PIN: 4100 mAh, SIM: 2 SIM', N'Made in USA', 7, 5490000, CAST(0x0000A6E000000000 AS DateTime), 5, 13, 6, 16, N'asus_zenfone_3_max_zc553kl.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (25, N'ASUS Zenfone 3x', N'Màn hình: 5.2",HD HÐH: Android 6.0 (Marshmallow) CPU: 4 nhân RAM: 3 GB, ROM: 32 GB Camera: 13 MP, Selfie: 5 MP PIN: 4100 mAh, SIM: 2 SIM', N'Made in USA', 7, 4490000, CAST(0x0000A6DD00000000 AS DateTime), 4, 18, 6, 25, N'asus_zenfone_3_max.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (26, N'ASUS Zenfone xl', N'Màn hình: 5.5",Full HD HÐH: Android 5 CPU: 8 nhân RAM: 3 GB Camera: 13.0 MP PIN: 3000 mAh, SIM: 2 SIM', N'Made in USA', 7, 3490000, CAST(0x0000A6DB00000000 AS DateTime), 3, 12, 6, 15, N'asus_zenfone_selfie.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (27, N'HUAWEI GR5 MN', N'Màn hình: 5.2", Full HD HÐH: Android 6.0 CPU: HiSilicon Kirin 655 8 nhân RAM: 2GB, ROM: 16GB Camera: 13 MP, Selfie: 8 MP PIN: 3000 mAh, SIM: 2 SIM', N'Made in China', 5, 3990000, CAST(0x0000A6DC00000000 AS DateTime), 5, 14, 5, 32, N'huawei_gr5_mini.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (28, N'HUAWEI Y6 II', N'Màn hình: 5", Full HD HÐH: Android 4.4(Kitkat) CPU: MTK 6582 8 nhân RAM: 1GB, ROM: 8GB Camera: 8 MP, Selfie: 2 MP PIN: 1700 mAh, SIM: 2 SIM', N'Made in China', 5, 2990000, CAST(0x0000A6CF00000000 AS DateTime), 4, 23, 5, 12, N'huawei_y6_ii.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (29, N'HUAWEI Y5 II', N'Màn hình: 5.2", Full HD HÐH: Android 6.0 CPU: HiSilicon Kirin 655 8 nhân RAM: 2GB, ROM: 16GB Camera: 13 MP, Selfie: 8 MP PIN: 3000 mAh, SIM: 2 SIM', N'Made in China', 5, 2190000, CAST(0x0000A6D900000000 AS DateTime), 2, 12, 5, 25, N'huawei_y5_ii.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (30, N'HUAWEI Y541', N'Màn hình: 5", Full HD HÐH: Android 5.1 (Lollipop) CPU: MTK 6582 8 nhân RAM: 1GB, ROM: 8GB Camera: 8 MP, Selfie: 2 MP PIN: 2200 mAh, SIM: 2 SIM', N'Made in China', 5, 1272000, CAST(0x0000A6D600000000 AS DateTime), 5, 14, 5, 14, N'huawei_y541_10.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (31, N'NOKIA LUMIA 730', N'Màn hình: 5.2", Full HD HÐH: Windows Phone 8.1 CPU: MTK 6582 8 nhân RAM: 1GB, ROM: 8GB Camera: 8 MP, Selfie: 2 MP PIN: 1700 mAh, SIM: 2 SIM', N'Made in Vietnam', 6, 2290000, CAST(0x0000A6DA00000000 AS DateTime), 4, 21, 7, 23, N'nokia_lumia_730_dual.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [XuatXu], [MaNhaSanXuat], [GiaBan], [NgayNhap], [SoLuongBan], [SoLuongTon], [MaLoaiSanPham], [SoLuongXem], [HinhAnh], [BiXoa]) VALUES (32, N'NOKIA LUMIA 641', N'<p>M&agrave;n h&igrave;nh: 5&quot;, Full HD H&ETH;H: Windows Phone 8.1 CPU: MTK 6582 8 nh&acirc;n RAM: 1GB, ROM: 8GB Camera: 8 MP, Selfie: 2 MP PIN: 1700 mAh, SIM: 2 SIM</p>
', N'Made in Vietnam', 1, 1890000, CAST(0x0000A6D600000000 AS DateTime), 3, 21, 1, 25, N'microsoft_lumia_640.jpg', 0)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 05/22/2017 21:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[MaTaiKhoan] [nvarchar](128) NOT NULL,
	[TenTaiKhoan] [nvarchar](2048) NULL,
	[NoiDung] [nvarchar](2048) NOT NULL,
	[TinhTrang] [int] NOT NULL,
	[Ngay] [datetime] NOT NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBinhLuan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BinhLuan] ON
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (7, 1, N'91b23453-df85-49bb-93e3-4d90bf20b113', N'mychikhtn@gmail.com', N'pp', 1, CAST(0x0000A76E01337DC9 AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (10, 26, N'91b23453-df85-49bb-93e3-4d90bf20b113', N'mychikhtn@gmail.com', N'Thông minh đẹp, gọn nhẹ', 1, CAST(0x0000A76E0138DBC8 AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (11, 1, N'133d636d-e306-4902-8b9e-421a5fbc045a', N'14ck1@gmail.com', N'asd', 1, CAST(0x0000A77500AAF2A5 AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (12, 24, N'133d636d-e306-4902-8b9e-421a5fbc045a', N'14ck1@gmail.com', N'đẹp, lạ thông minh', 1, CAST(0x0000A77500AB1AFD AS DateTime))
SET IDENTITY_INSERT [dbo].[BinhLuan] OFF
/****** Object:  View [dbo].[v_GioHang]    Script Date: 05/22/2017 21:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_GioHang]
AS
SELECT     dbo.GioHang.*, dbo.SanPham.TenSanPham
FROM         dbo.GioHang INNER JOIN
                      dbo.SanPham ON dbo.GioHang.MaSanPham = dbo.SanPham.MaSanPham
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GioHang"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SanPham"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 126
               Right = 402
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_GioHang'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_GioHang'
GO
/****** Object:  View [dbo].[v_ChiTietSanPham]    Script Date: 05/22/2017 21:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_ChiTietSanPham]
AS
SELECT     s.MaSanPham, s.TenSanPham, s.MoTa, s.XuatXu, s.MaNhaSanXuat, s.GiaBan, s.NgayNhap, s.SoLuongBan, s.SoLuongTon, s.MaLoaiSanPham, s.SoLuongXem, s.HinhAnh, s.BiXoa, 
                      n.TenNhaSanXuat
FROM         dbo.SanPham AS s INNER JOIN
                      dbo.NhaSanXuat AS n ON s.MaNhaSanXuat = n.MaNhaSanXuat
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "s"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 204
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "n"
            Begin Extent = 
               Top = 6
               Left = 242
               Bottom = 111
               Right = 408
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_ChiTietSanPham'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_ChiTietSanPham'
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 05/22/2017 21:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDonDatHang] [varchar](10) NOT NULL,
	[NgayLap] [datetime] NULL,
	[TongThanhTien] [int] NULL,
	[MaTaiKhoan] [int] NOT NULL,
	[MaTinhTrang] [int] NOT NULL,
 CONSTRAINT [pk_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDonDatHang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayLap], [TongThanhTien], [MaTaiKhoan], [MaTinhTrang]) VALUES (N'100001', CAST(0x0000A6E200000000 AS DateTime), 27990000, 1, 2)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayLap], [TongThanhTien], [MaTaiKhoan], [MaTinhTrang]) VALUES (N'100002', CAST(0x0000A6E200000000 AS DateTime), 22290000, 1, 3)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayLap], [TongThanhTien], [MaTaiKhoan], [MaTinhTrang]) VALUES (N'100003', CAST(0x0000A6EB00000000 AS DateTime), 12490000, 3, 3)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayLap], [TongThanhTien], [MaTaiKhoan], [MaTinhTrang]) VALUES (N'100004', CAST(0x0000A6E800000000 AS DateTime), 10990000, 4, 2)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayLap], [TongThanhTien], [MaTaiKhoan], [MaTinhTrang]) VALUES (N'100117003', CAST(0x0000A6F701857BD0 AS DateTime), 10990000, 1, 3)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayLap], [TongThanhTien], [MaTaiKhoan], [MaTinhTrang]) VALUES (N'110117001', CAST(0x0000A6F8015427B0 AS DateTime), 18980000, 4, 2)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayLap], [TongThanhTien], [MaTaiKhoan], [MaTinhTrang]) VALUES (N'110117002', CAST(0x0000A6F80172896C AS DateTime), 25980000, 2, 2)
/****** Object:  Table [dbo].[ChiTietDonDatHang]    Script Date: 05/22/2017 21:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietDonDatHang](
	[MaChiTietDDH] [varchar](10) NOT NULL,
	[MaDonDatHang] [varchar](10) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[GiaBan] [int] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [pk_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[MaChiTietDDH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDonDatHang], [MaSanPham], [GiaBan], [SoLuong]) VALUES (N'1001170030', N'100117003', 10, 10990000, 1)
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDonDatHang], [MaSanPham], [GiaBan], [SoLuong]) VALUES (N'10100001', N'100001', 1, 27990000, 1)
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDonDatHang], [MaSanPham], [GiaBan], [SoLuong]) VALUES (N'10100002', N'100002', 4, 22290000, 1)
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDonDatHang], [MaSanPham], [GiaBan], [SoLuong]) VALUES (N'10100003', N'100003', 9, 12490000, 1)
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDonDatHang], [MaSanPham], [GiaBan], [SoLuong]) VALUES (N'10100004', N'100004', 10, 10990000, 1)
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDonDatHang], [MaSanPham], [GiaBan], [SoLuong]) VALUES (N'1101170010', N'110117001', 22, 9990000, 1)
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDonDatHang], [MaSanPham], [GiaBan], [SoLuong]) VALUES (N'1101170020', N'110117002', 8, 15990000, 1)
/****** Object:  Default [DF__TinhTrang__TenTi__239E4DCF]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[TinhTrang] ADD  DEFAULT (NULL) FOR [TenTinhTrang]
GO
/****** Object:  Default [DF__NhaSanXua__TenNh__15502E78]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[NhaSanXuat] ADD  DEFAULT (NULL) FOR [TenNhaSanXuat]
GO
/****** Object:  Default [DF__NhaSanXua__BiXoa__164452B1]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[NhaSanXuat] ADD  DEFAULT ('0') FOR [BiXoa]
GO
/****** Object:  Default [DF__LoaiTaiKh__LoaiT__1273C1CD]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[LoaiTaiKhoan] ADD  DEFAULT (NULL) FOR [LoaiTaiKhoan]
GO
/****** Object:  Default [DF__LoaiSanPh__TenLo__07020F21]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[LoaiSanPham] ADD  DEFAULT (NULL) FOR [TenLoaiSanPham]
GO
/****** Object:  Default [DF__LoaiSanPh__BiXoa__07F6335A]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[LoaiSanPham] ADD  DEFAULT ('0') FOR [BiXoa]
GO
/****** Object:  Default [DF__TaiKhoan__TenTai__0AD2A005]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[TaiKhoan] ADD  DEFAULT (NULL) FOR [TenTaiKhoan]
GO
/****** Object:  Default [DF__TaiKhoan__MatKha__0BC6C43E]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[TaiKhoan] ADD  DEFAULT (NULL) FOR [MatKhau]
GO
/****** Object:  Default [DF__TaiKhoan__TenHie__0CBAE877]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[TaiKhoan] ADD  DEFAULT (NULL) FOR [TenHienThi]
GO
/****** Object:  Default [DF__TaiKhoan__NgaySi__0DAF0CB0]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[TaiKhoan] ADD  DEFAULT (NULL) FOR [NgaySinh]
GO
/****** Object:  Default [DF__TaiKhoan__BiXoa__0EA330E9]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[TaiKhoan] ADD  DEFAULT ('0') FOR [BiXoa]
GO
/****** Object:  Default [DF__TaiKhoan__NoiSon__0F975522]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[TaiKhoan] ADD  DEFAULT (NULL) FOR [NoiSong]
GO
/****** Object:  Default [DF__SanPham__TenSanP__1920BF5C]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF__SanPham__TenSanP__1920BF5C]  DEFAULT (NULL) FOR [TenSanPham]
GO
/****** Object:  Default [DF__SanPham__XuatXu__1A14E395]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF__SanPham__XuatXu__1A14E395]  DEFAULT (NULL) FOR [XuatXu]
GO
/****** Object:  Default [DF__SanPham__GiaBan__1B0907CE]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF__SanPham__GiaBan__1B0907CE]  DEFAULT (NULL) FOR [GiaBan]
GO
/****** Object:  Default [DF__SanPham__NgayNha__1BFD2C07]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF__SanPham__NgayNha__1BFD2C07]  DEFAULT (NULL) FOR [NgayNhap]
GO
/****** Object:  Default [DF__SanPham__SoLuong__1CF15040]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF__SanPham__SoLuong__1CF15040]  DEFAULT (NULL) FOR [SoLuongBan]
GO
/****** Object:  Default [DF__SanPham__SoLuong__1DE57479]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF__SanPham__SoLuong__1DE57479]  DEFAULT (NULL) FOR [SoLuongTon]
GO
/****** Object:  Default [DF__SanPham__SoLuong__1ED998B2]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF__SanPham__SoLuong__1ED998B2]  DEFAULT (NULL) FOR [SoLuongXem]
GO
/****** Object:  Default [DF__SanPham__HinhAnh__1FCDBCEB]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF__SanPham__HinhAnh__1FCDBCEB]  DEFAULT (NULL) FOR [HinhAnh]
GO
/****** Object:  Default [DF__SanPham__BiXoa__20C1E124]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF__SanPham__BiXoa__20C1E124]  DEFAULT ('0') FOR [BiXoa]
GO
/****** Object:  Default [DF_BinhLuan_TinhTrang]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[BinhLuan] ADD  CONSTRAINT [DF_BinhLuan_TinhTrang]  DEFAULT ((1)) FOR [TinhTrang]
GO
/****** Object:  Default [DF_BinhLuan_Ngay]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[BinhLuan] ADD  CONSTRAINT [DF_BinhLuan_Ngay]  DEFAULT (getdate()) FOR [Ngay]
GO
/****** Object:  Default [DF__DonDatHan__NgayL__03317E3D]    Script Date: 05/22/2017 21:57:27 ******/
ALTER TABLE [dbo].[DonDatHang] ADD  DEFAULT (NULL) FOR [NgayLap]
GO
/****** Object:  Default [DF__DonDatHan__TongT__0425A276]    Script Date: 05/22/2017 21:57:27 ******/
ALTER TABLE [dbo].[DonDatHang] ADD  DEFAULT (NULL) FOR [TongThanhTien]
GO
/****** Object:  Default [DF__ChiTietDo__GiaBa__7F60ED59]    Script Date: 05/22/2017 21:57:27 ******/
ALTER TABLE [dbo].[ChiTietDonDatHang] ADD  DEFAULT (NULL) FOR [GiaBan]
GO
/****** Object:  Default [DF__ChiTietDo__SoLuo__00551192]    Script Date: 05/22/2017 21:57:27 ******/
ALTER TABLE [dbo].[ChiTietDonDatHang] ADD  DEFAULT (NULL) FOR [SoLuong]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_TaiKhoan_LoaiTaiKhoan]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_LoaiTaiKhoan] FOREIGN KEY([MaLoaiTaiKhoan])
REFERENCES [dbo].[LoaiTaiKhoan] ([MaLoaiTaiKhoan])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_LoaiTaiKhoan]
GO
/****** Object:  ForeignKey [FK_SanPham_LoaiSanPham]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
/****** Object:  ForeignKey [FK_SanPham_NhaSanXuat]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNhaSanXuat])
REFERENCES [dbo].[NhaSanXuat] ([MaNhaSanXuat])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
/****** Object:  ForeignKey [FK_BinhLuan_AspNetUsers]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_AspNetUsers] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_AspNetUsers]
GO
/****** Object:  ForeignKey [FK_BinhLuan_SanPham]    Script Date: 05/22/2017 21:57:26 ******/
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_SanPham]
GO
/****** Object:  ForeignKey [FK_DonDatHang_TaiKhoan]    Script Date: 05/22/2017 21:57:27 ******/
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_TaiKhoan] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_TaiKhoan]
GO
/****** Object:  ForeignKey [FK_DonDatHang_TinhTrang]    Script Date: 05/22/2017 21:57:27 ******/
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_TinhTrang] FOREIGN KEY([MaTinhTrang])
REFERENCES [dbo].[TinhTrang] ([MaTinhTrang])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_TinhTrang]
GO
/****** Object:  ForeignKey [FK_ChiTietDonDatHang_DonDatHang]    Script Date: 05/22/2017 21:57:27 ******/
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang] FOREIGN KEY([MaDonDatHang])
REFERENCES [dbo].[DonDatHang] ([MaDonDatHang])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang]
GO
/****** Object:  ForeignKey [FK_ChiTietDonDatHang_SanPham]    Script Date: 05/22/2017 21:57:27 ******/
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_SanPham]
GO
