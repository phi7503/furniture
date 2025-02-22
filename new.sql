USE [master]
GO
/****** Object:  Database [Assgn_PRJ_WEB_Ban_Noi_That1]    Script Date: 8/19/2024 11:13:41 PM ******/
CREATE DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Assgn_PRJ_WEB_Ban_Noi_That1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Assgn_PRJ_WEB_Ban_Noi_That1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Assgn_PRJ_WEB_Ban_Noi_That1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Assgn_PRJ_WEB_Ban_Noi_That1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Assgn_PRJ_WEB_Ban_Noi_That1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET ARITHABORT OFF 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET  MULTI_USER 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET QUERY_STORE = ON
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Assgn_PRJ_WEB_Ban_Noi_That1]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 8/19/2024 11:13:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
	[firstName] [varchar](255) NULL,
	[lastName] [varchar](255) NULL,
	[address] [varchar](max) NULL,
	[phone] [varchar](255) NULL,
	[active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 8/19/2024 11:13:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 8/19/2024 11:13:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 8/19/2024 11:13:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productName] [nvarchar](255) NULL,
	[productImage] [nvarchar](255) NULL,
	[productPrice] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/19/2024 11:13:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [nvarchar](255) NULL,
	[create_date] [date] NULL,
	[shipping_id] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 8/19/2024 11:13:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 8/19/2024 11:13:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [firstName], [lastName], [address], [phone], [active]) VALUES (1, N'admin', N'1', 1, 1, N'1', N'1', N'12', N'1', 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [firstName], [lastName], [address], [phone], [active]) VALUES (2, N'user', N'1', 0, 0, N'hieu', N'le', N'ha noi', N'90190909', 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [firstName], [lastName], [address], [phone], [active]) VALUES (3, N'hieu', N'1', 0, 0, N'hieu', N'le', NULL, NULL, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [firstName], [lastName], [address], [phone], [active]) VALUES (4, N'hieu1', N'12', 0, 0, N'hieu1', N'le', N'ha noi', N'090190909', 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'Living Room Furniture')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'Bedroom Furniture')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'Dining Room Furniture')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'Office Furniture')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (2, 21, N'King Size Bed Frame', N'https://m.media-amazon.com/images/I/81etcPmRyZL._AC_UF894,1000_QL80_.jpg', 200, 2)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (3, 21, N'Modern Sectional Sofa', N'https://m.media-amazon.com/images/I/81ChSl78TEL.jpg', 250, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (4, 22, N'Modern Sectional Sofa', N'https://m.media-amazon.com/images/I/81ChSl78TEL.jpg', 250, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (5, 23, N'Nightstand with Drawers', N'https://m.media-amazon.com/images/I/91StNDFIHUL.jpg', 300, 100)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (6, 24, N'Nightstand with Drawers', N'https://m.media-amazon.com/images/I/91StNDFIHUL.jpg', 300, 99)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (7, 25, N'Nightstand with Drawers', N'https://m.media-amazon.com/images/I/91StNDFIHUL.jpg', 300, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (8, 26, N'Nightstand with Drawers', N'https://m.media-amazon.com/images/I/91StNDFIHUL.jpg', 300, 92)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (9, 27, N'Nightstand with Drawers', N'https://m.media-amazon.com/images/I/91StNDFIHUL.jpg', 300, 0)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (10, 27, N'Wooden Bookshelf', N'https://eurekaergonomic.com/cdn/shop/files/ERK-HOBC-01BBbookshelfwithcabinet_1_ad53b97b-1bf4-49c1-9589-3ee22de78330.jpg?v=1713410596', 400, 99)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (11, 28, N'Floor Lamp', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC3090y05v3upp82QUIp3YlsVdoGwDN2aXRQ&s', 150, 100)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (12, 29, N'Wardrobe Closet', N'https://i5.walmartimages.com/seo/Hitow-4-Door-Wardrobe-Armoire-with-Hutch-Shelves-and-Drawers-White-Closet-Storage-Cabinet-with-Clothing-Rod-for-Bedroom-93-3-H_d70375b0-e30d-456f-906d-8ad0ef303497.3cf28bf40b8d771f7a5408c252e45006.jpeg', 240, 13)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (13, 30, N'Wardrobe Closet', N'https://i5.walmartimages.com/seo/Hitow-4-Door-Wardrobe-Armoire-with-Hutch-Shelves-and-Drawers-White-Closet-Storage-Cabinet-with-Clothing-Rod-for-Bedroom-93-3-H_d70375b0-e30d-456f-906d-8ad0ef303497.3cf28bf40b8d771f7a5408c252e45006.jpeg', 240, 10)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (14, 31, N'Wardrobe Closet', N'https://i5.walmartimages.com/seo/Hitow-4-Door-Wardrobe-Armoire-with-Hutch-Shelves-and-Drawers-White-Closet-Storage-Cabinet-with-Clothing-Rod-for-Bedroom-93-3-H_d70375b0-e30d-456f-906d-8ad0ef303497.3cf28bf40b8d771f7a5408c252e45006.jpeg', 240, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (15, 32, N'Wardrobe Closet', N'https://i5.walmartimages.com/seo/Hitow-4-Door-Wardrobe-Armoire-with-Hutch-Shelves-and-Drawers-White-Closet-Storage-Cabinet-with-Clothing-Rod-for-Bedroom-93-3-H_d70375b0-e30d-456f-906d-8ad0ef303497.3cf28bf40b8d771f7a5408c252e45006.jpeg', 240, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (16, 33, N'Wardrobe Closet', N'https://i5.walmartimages.com/seo/Hitow-4-Door-Wardrobe-Armoire-with-Hutch-Shelves-and-Drawers-White-Closet-Storage-Cabinet-with-Clothing-Rod-for-Bedroom-93-3-H_d70375b0-e30d-456f-906d-8ad0ef303497.3cf28bf40b8d771f7a5408c252e45006.jpeg', 240, 74)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (17, 34, N'Modern Sectional Sofa', N'https://m.media-amazon.com/images/I/81ChSl78TEL.jpg', 250, 100)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (18, 35, N'King Size Bed Frame', N'https://m.media-amazon.com/images/I/81etcPmRyZL._AC_UF894,1000_QL80_.jpg', 200, 100)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (19, 1, 290, N'hang de vo', CAST(N'2022-04-23' AS Date), 19)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (20, 1, 250, N'', CAST(N'2024-07-15' AS Date), 1)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (21, 1, 650, N'', CAST(N'2024-07-15' AS Date), 2)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (22, 2, 250, N'', CAST(N'2024-07-15' AS Date), 3)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (23, 1, 30000, N'', CAST(N'2024-07-16' AS Date), 4)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (24, 1, 29700, N'321', CAST(N'2024-07-16' AS Date), 5)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (25, 1, 300, N'', CAST(N'2024-07-16' AS Date), 6)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (26, 1, 27600, N'', CAST(N'2024-07-16' AS Date), 7)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (27, 3, 39600, N'', CAST(N'2024-07-16' AS Date), 8)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (28, 4, 15000, N'', CAST(N'2024-07-16' AS Date), 10)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (29, 4, 3120, N'', CAST(N'2024-07-16' AS Date), 11)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (30, 4, 2400, N'', CAST(N'2024-07-16' AS Date), 12)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (31, 1, 240, NULL, CAST(N'2024-07-16' AS Date), 13)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (32, 1, 240, NULL, CAST(N'2024-07-16' AS Date), 14)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (33, 4, 17760, N'', CAST(N'2024-07-16' AS Date), 15)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (34, 1, 25000, N'', CAST(N'2024-07-16' AS Date), 16)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (35, 1, 20000, N'', CAST(N'2024-07-18' AS Date), 17)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (1, N'King Size Bed Frame', N'https://m.media-amazon.com/images/I/81etcPmRyZL._AC_UF894,1000_QL80_.jpg', 200.0000, N'Majestic Comfort for Your Bedroom', N'The King Size Bed Frame is the epitome of majestic comfort for your bedroom. Crafted from high-quality materials, this bed frame features a sturdy hardwood construction that ensures durability and stability. The headboard is upholstered in luxurious fabric, adding a touch of elegance to the overall design. The slatted base provides excellent support for your mattress, promoting proper airflow and extending the life of your bedding. The bed frame is available in various finishes, including classic walnut, sleek black, and modern white, allowing you to choose the perfect match for your bedroom decor. Additionally, the frame is designed with easy assembly in mind, with all necessary hardware included. The King Size Bed Frame is not only a statement piece but also a practical addition to your bedroom, providing a comfortable and stylish foundation for a restful night', 2, 1, 0)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (2, N'Modern Sectional Sofa', N'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1nvUnJ.img?w=720&h=480&m=6', 250.0000, N'Contemporary Comfort in Your Living Room', N' The Modern Sectional Sofa is the epitome of contemporary comfort and style. Crafted with high-quality materials, this sofa features a sleek design that fits seamlessly into any living room decor. The sectional design allows for versatile seating arrangements, perfect for entertaining guests or relaxing with family. The plush cushions are filled with high-density foam, providing superior comfort and support. The upholstery is available in a variety of colors and fabrics, including luxurious velvet and durable linen. Additionally, the sofa includes adjustable headrests and reclining options, making it easy to find your perfect lounging position. The sturdy hardwood frame ensures longevity and stability, while the metal legs add a touch of modern elegance. Easy to assemble and maintain, the Modern Sectional Sofa is the perfect addition to elevate your living room experience.', 1, 1, 2131)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (3, N'Nightstand with Drawers', N'https://m.media-amazon.com/images/I/91StNDFIHUL.jpg', 300.0000, N'Stylish and Functional Bedside Companion', N'The Nightstand with Drawers is a stylish and functional bedside companion for your bedroom. Made from solid wood, this nightstand features a sleek design with clean lines and a smooth finish. The two spacious drawers provide ample storage for your nighttime essentials, such as books, glasses, and personal items. The top surface is perfect for a lamp, alarm clock, or decorative objects, adding a personal touch to your bedside area. Available in various finishes, including cherry, oak, and espresso, this nightstand can complement any bedroom decor. The drawers are designed with easy-glide mechanisms, ensuring smooth operation, and are equipped with elegant metal handles for a sophisticated look. The Nightstand with Drawers combines practicality with style, making it an essential piece of furniture for any bedroom.', 2, 1, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (4, N'Glass Coffee Table', N'https://images-na.ssl-images-amazon.com/images/I/91cTZVQORnL.jpg', 210.0000, N'Sleek and Stylish Centerpiece', N'The Glass Coffee Table is a sleek and stylish centerpiece for any modern living room. Featuring a tempered glass top and a chic metal frame, this table exudes sophistication and elegance. The clear glass surface allows the beauty of your decor to shine through, creating an open and airy feel in your living space. The metal frame is available in a variety of finishes, including brushed nickel and gold, allowing you to match it with your existing decor. The minimalist design is perfect for showcasing your favorite coffee table books, decorative objects, or fresh flowers. Additionally, the table is designed with rounded edges for added safety, making it a great choice for homes with children. Easy to clean and maintain, the Glass Coffee Table is both functional and aesthetically pleasing, making it a must-have for any contemporary home.', 1, 1, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (5, N'Wardrobe Closet', N'https://i5.walmartimages.com/seo/Hitow-4-Door-Wardrobe-Armoire-with-Hutch-Shelves-and-Drawers-White-Closet-Storage-Cabinet-with-Clothing-Rod-for-Bedroom-93-3-H_d70375b0-e30d-456f-906d-8ad0ef303497.3cf28bf40b8d771f7a5408c252e45006.jpeg', 240.0000, N'Elegant Storage Solution for Your Clothes', N'The Wardrobe Closet offers an elegant storage solution for your clothes and accessories. Made from high-quality materials, this wardrobe features a classic design with a modern twist. The spacious interior includes a hanging rod, adjustable shelves, and multiple drawers, providing ample space for all your clothing items. The mirrored doors add a touch of sophistication while also serving a practical purpose, allowing you to check your outfit before heading out. The wardrobe is available in various finishes, including white, black, and natural wood, allowing you to choose the perfect match for your bedroom decor. The sturdy construction ensures durability and stability, while the sleek design adds a touch of elegance to your space. The Wardrobe Closet is the perfect addition to any bedroom, combining style and functionality in one beautiful piece of furniture.', 2, 1, 3232)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (6, N'Wooden Bookshelf', N'https://eurekaergonomic.com/cdn/shop/files/ERK-HOBC-01BBbookshelfwithcabinet_1_ad53b97b-1bf4-49c1-9589-3ee22de78330.jpg?v=1713410596', 400.0000, N'Elegant Storage Solution', N'The Wooden Bookshelf offers an elegant storage solution for your living room. Made from solid wood, this bookshelf features a classic design with clean lines and a rich finish. The five spacious shelves provide ample room for books, decorative items, and personal treasures. The sturdy construction ensures that the bookshelf can support a significant amount of weight, making it ideal for avid readers and collectors alike. Available in various wood finishes, including walnut, oak, and cherry, this bookshelf can complement any interior style. The back panel is designed with a decorative pattern, adding an extra touch of elegance to the overall design. Whether placed against a wall or used as a room divider, the Wooden Bookshelf is a versatile piece that combines functionality with timeless beauty.', 1, 1, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (7, N'Floor Lamp', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC3090y05v3upp82QUIp3YlsVdoGwDN2aXRQ&s', 150.0000, N'Illuminate Your Space with Style', N'The Floor Lamp is the perfect way to illuminate your living room with style. Featuring a tall, slender design, this lamp fits easily into any corner or beside your favorite reading chair. The adjustable arm and shade allow you to direct light where it''s needed most, whether you''re reading, working, or relaxing. The base is crafted from sturdy metal, ensuring stability and durability, while the lampshade is available in a variety of colors and fabrics to suit your taste. The built-in dimmer switch allows you to control the brightness, creating the perfect ambiance for any occasion. Energy-efficient LED bulbs provide long-lasting illumination, making this lamp both eco-friendly and cost-effective. The Floor Lamp combines modern design with practical functionality, making it an essential addition to any living room.', 1, 1, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (8, N' Area Rug', N'https://m.media-amazon.com/images/I/61PKtRSQDdL._AC_.jpg', 170.0000, N'Add Warmth and Texture to Your Living Room', N'The Area Rug is designed to add warmth and texture to your living room. Made from high-quality materials, this rug features a soft, plush pile that feels luxurious underfoot. The intricate pattern and rich colors create a focal point that enhances the overall aesthetic of your space. Available in various sizes and shapes, the Area Rug can fit seamlessly into any living room layout. The durable construction ensures that the rug can withstand daily wear and tear, making it ideal for high-traffic areas. Additionally, the rug is easy to clean and maintain, with stain-resistant fibers that keep it looking fresh and new. Whether placed under a coffee table, in front of a sofa, or in the center of the room, the Area Rug adds a touch of elegance and comfort to your home.', 1, 1, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (9, N'Dressing Table with Mirror', N'https://m.media-amazon.com/images/I/91bAapQDifL._AC_UF894,1000_QL80_.jpg', 220.0000, N'Elegant Vanity for Your Beauty Routine', N'The Dressing Table with Mirror is an elegant vanity for your beauty routine. Crafted from high-quality materials, this dressing table features a classic design with a modern touch. The spacious tabletop provides ample space for all your beauty essentials, while the built-in drawers offer additional storage for your makeup, jewelry, and accessories. The large mirror is framed with elegant detailing, adding a touch of sophistication to the overall design. Available in various finishes, including white, black, and natural wood, this dressing table can complement any bedroom decor. The sturdy construction ensures durability, while the sleek design adds a touch of elegance to your space. Whether you''re getting ready for a night out or simply enjoying your daily beauty routine, the Dressing Table with Mirror is the perfect addition to your bedroom.', 2, 1, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (10, N'Extendable Dining Table', N'https://m.media-amazon.com/images/I/81SnMSgzUtL._AC_UF894,1000_QL80_.jpg', 340.0000, N'Versatile Dining Solution for Every Occasion', N'The Extendable Dining Table is a versatile dining solution for every occasion. Made from high-quality materials, this table features a sturdy construction that ensures durability and stability. The extendable design allows you to adjust the table size to accommodate more guests, making it perfect for family gatherings and dinner parties. The table is available in various finishes, including natural wood, espresso, and white, allowing you to choose the perfect match for your dining room decor. The sleek design and clean lines add a touch of elegance to your space, while the smooth surface is easy to clean and maintain. The Extendable Dining Table is not only a practical addition to your dining room but also a stylish centerpiece that enhances the overall aesthetic of your home.', 3, 1, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (11, N'Upholstered Dining Chairs', N'https://m.media-amazon.com/images/I/71MwKeIgveL.jpg', 440.0000, N'Comfortable Seating for Your Dining Room', N' The Upholstered Dining Chairs offer comfortable seating for your dining room. Crafted from high-quality materials, these chairs feature a sturdy wooden frame and plush cushioning. The upholstery is available in a variety of fabrics and colors, allowing you to customize the look to match your dining room decor. The ergonomic design provides excellent support, ensuring comfort during long meals and gatherings. The chairs are designed with elegant detailing, including tufted backs and nailhead trim, adding a touch of sophistication to your space. The Upholstered Dining Chairs are easy to assemble and maintain, making them a practical and stylish addition to your dining room. Whether you''re hosting a formal dinner party or enjoying a casual meal with family, these chairs provide the perfect blend of comfort and style.', 3, 1, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (12, N' Executive Desk', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnS4WCCvuhdKMNg0o40bYTYEfrT5Xb_DK6RQ&s', 300.0000, N'Stylish and Functional Workspace', N'The Executive Desk offers a stylish and functional workspace for your home office. Made from high-quality materials, this desk features a sturdy construction that ensures durability and stability. The spacious tabletop provides ample room for your computer, paperwork, and office supplies, while the built-in drawers and cabinets offer additional storage for your essentials. The desk is available in various finishes, including walnut, cherry, and black, allowing you to choose the perfect match for your office decor. The sleek design and clean lines add a touch of elegance to your space, while the ergonomic design ensures comfort during long hours of work. The Executive Desk is not only a practical addition to your home office but also a stylish centerpiece that enhances the overall aesthetic of your workspace.', 4, 1, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (13, N'China Cabinet', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA5uA3ULZcA1_JMIFagopp_Jb82FFVAasQiQ&s', 200.0000, N'Elegant Display and Storage for Your Dining Room', N'The China Cabinet is an elegant display and storage solution for your dining room. Made from high-quality materials, this cabinet features a classic design with a modern twist. The spacious interior includes adjustable shelves and glass doors, providing ample space to showcase your finest china, glassware, and decorative items. The lower section includes drawers and cabinets for additional storage, perfect for keeping your dining essentials organized and easily accessible. Available in various finishes, including cherry, oak, and espresso, this cabinet can complement any dining room decor. The sturdy construction ensures durability and stability, while the elegant detailing adds a touch of sophistication to your space. The China Cabinet is the perfect addition to any dining room, combining style and functionality in one beautiful piece of furniture.', 3, 1, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (14, N'Ergonomic Office Chair', N'https://images-na.ssl-images-amazon.com/images/I/71aGX3PevYL.jpg', 150.0000, N'Ultimate Comfort for Your Workday', N'The Ergonomic Office Chair provides the ultimate comfort for your workday. Crafted from high-quality materials, this chair features a sturdy construction that ensures durability and stability. The adjustable height, tilt, and armrests allow you to customize the chair to your preferred seating position, ensuring maximum comfort and support. The breathable mesh back and cushioned seat provide excellent ventilation and cushioning, making it ideal for long hours of work. The chair is available in various colors and finishes, allowing you to choose the perfect match for your office decor. The sleek design and ergonomic features make this chair a practical and stylish addition to your home office. Whether you''re working on important projects or simply browsing the internet, the Ergonomic Office Chair provides the comfort and support you need to stay productive and focused.', 4, 1, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (15, N'Dining Bench', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQNrOs_vn5LHiCE1C2_pJiYzVlXp0i6mQMKg&s', 400.0000, N' Versatile Seating Solution for Your Dining Room', N'The Dining Bench is a versatile seating solution for your dining room. Made from high-quality materials, this bench features a sturdy construction that ensures durability and stability. The simple yet elegant design allows it to fit seamlessly into any dining room decor. The bench is available in various finishes, including natural wood, white, and espresso, allowing you to choose the perfect match for your space. The spacious seat provides comfortable seating for multiple guests, making it perfect for family gatherings and dinner parties. The Dining Bench is easy to assemble and maintain, making it a practical and stylish addition to your dining room. Whether paired with a dining table or used as standalone seating, this bench adds a touch of elegance and versatility to your home.

', 3, 1, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (16, N'Chandelier', N'https://italianconceptusa.com/cdn/shop/products/25252-856078.jpg?v=1656132052&width=2048', 350.0000, N' Illuminate Your Dining Room with Elegance', N'The Chandelier is the perfect way to illuminate your dining room with elegance. Featuring a stunning design with crystal accents and a polished metal frame, this chandelier adds a touch of sophistication to your space. The adjustable chain allows you to customize the height to fit your ceiling, ensuring the perfect placement over your dining table. The chandelier is available in various finishes, including chrome, gold, and black, allowing you to choose the perfect match for your dining room decor. The multiple light fixtures provide ample illumination, creating a warm and inviting ambiance for your meals and gatherings. The Chandelier is easy to install and maintain, making it a practical and stylish addition to your dining room. Whether you''re hosting a formal dinner party or enjoying a casual meal with family, this chandelier enhances the overall aesthetic of your home.', 3, 1, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (17, N'Bookshelf with Adjustable Shelves', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp97H0PGS-cJXjREKhxfpfUhIBIR0ECPLRMQ&s', 250.0000, N'Versatile Storage Solution for Your Office', N' The Bookshelf with Adjustable Shelves offers a versatile storage solution for your office. Made from high-quality materials, this bookshelf features a sturdy construction that ensures durability and stability. The adjustable shelves allow you to customize the storage space to fit your needs, whether you''re storing books, office supplies, or decorative items. The bookshelf is available in various finishes, including white, black, and natural wood, allowing you to choose the perfect match for your office decor. The sleek design and clean lines add a touch of elegance to your space, while the open shelves provide easy access to your essentials. The Bookshelf with Adjustable Shelves is easy to assemble and maintain, making it a practical and stylish addition to your home office. Whether used as a standalone piece or paired with other office furniture, this bookshelf enhances the overall aesthetic of your workspace.', 4, 1, 100)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (18, N'Filing Cabinet', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRfC-cyabWG7WdMDxmhG--4UiJAFWYemrcuQ&s', 150.0000, N'Efficient Storage for Your Important Documents', N'The Filing Cabinet offers efficient storage for your important documents. Made from high-quality materials, this cabinet features a sturdy construction that ensures durability and stability. The multiple drawers provide ample space for your files, folders, and paperwork, keeping your office organized and clutter-free. The drawers are designed with smooth-glide mechanisms, ensuring easy operation, and are equipped with secure locks to keep your documents safe. The cabinet is available in various finishes, including white, black, and natural wood, allowing you to choose the perfect match for your office decor. The sleek design and clean lines add a touch of elegance to your space, while the compact size makes it easy to fit into any office layout. The Filing Cabinet is a practical and stylish addition to your home office, providing the storage and organization you need to stay productive and efficient.

', 4, 1, 100)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipping] ON 

INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1, N'hieu', N'12345678', N'12321')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (2, N'hieu', N'12345678', N'12321')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (3, N'hieu', N'12345678', N'12321')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (4, N'hieu', N'12345678', N'12321')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (5, N'hieu', N'12345678', N'12321')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (6, N'hieu', N'12345678', N'12321')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (7, N'hieu', N'12345678', N'12321')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (8, N'hieu', N'12345678', N'12321')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (9, N'hieu', N'12345678', N'12321')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (10, N'hieu le', N'90190909', N'ha noi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (11, N'hieu le', N'90190909', N'ha noi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (12, N'hieu le', N'90190909', N'ha noi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (13, NULL, NULL, NULL)
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (14, NULL, NULL, NULL)
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (15, N'hieu le', N'90190909', N'ha noi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (16, N'hieu le', N'90190909', N'ha noi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (17, N'hieu le', N'90190909', N'ha noi')
SET IDENTITY_INSERT [dbo].[Shipping] OFF
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_product] FOREIGN KEY([AccountID])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Account]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_Category] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cid])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_Category]
GO
USE [master]
GO
ALTER DATABASE [Assgn_PRJ_WEB_Ban_Noi_That1] SET  READ_WRITE 
GO
