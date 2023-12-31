USE [BookShopsOnline]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 8/18/2023 1:01:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[AccountID] [varchar](10) NOT NULL,
	[Username] [varchar](25) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Phone] [varchar](15) NULL,
	[Role] [varchar](10) NOT NULL,
	[Salt] [varchar](24) NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 8/18/2023 1:01:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[AuthorID] [varchar](10) NOT NULL,
	[AuthorName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 8/18/2023 1:01:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [varchar](10) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 8/18/2023 1:01:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [varchar](10) NOT NULL,
	[AccountID] [varchar](10) NOT NULL,
	[CustomerName] [nvarchar](50) NOT NULL,
	[DOB] [date] NULL,
	[Address] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 8/18/2023 1:01:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[DiscountID] [int] IDENTITY(1,1) NOT NULL,
	[DiscountCODE] [varchar](255) NULL,
	[CustomerID] [varchar](10) NULL,
	[ProductID] [varchar](10) NULL,
	[IsContinue] [int] NULL,
	[DiscountValue] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DiscountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 8/18/2023 1:01:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[CustomerID] [varchar](10) NOT NULL,
	[FeedbackDate] [date] NOT NULL,
	[Description] [nchar](10) NOT NULL,
	[ProductID] [varchar](10) NOT NULL,
	[Ratting] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 8/18/2023 1:01:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderID] [varchar](10) NOT NULL,
	[ProductID] [varchar](10) NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/18/2023 1:01:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [varchar](10) NOT NULL,
	[CustomerID] [varchar](10) NOT NULL,
	[OrderDate] [date] NOT NULL,
	[Ship] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NOT NULL,
	[PaymentMethod] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProAu]    Script Date: 8/18/2023 1:01:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProAu](
	[ProductID] [varchar](10) NOT NULL,
	[AuthorID] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 8/18/2023 1:01:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [varchar](10) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ImagePath] [varchar](100) NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[UnitInStock] [int] NOT NULL,
	[IsContinue] [bit] NOT NULL,
	[Ratting] [tinyint] NULL,
	[CategoryID] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reports]    Script Date: 8/18/2023 1:01:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reports](
	[ReportID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[CustomerName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Insurance] [nvarchar](50) NULL,
	[Descriptions] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[AccountID] [varchar](10) NULL,
	[Time] [date] NULL,
 CONSTRAINT [PK_Reports] PRIMARY KEY CLUSTERED 
(
	[ReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([AccountID], [Username], [Password], [Email], [Phone], [Role], [Salt]) VALUES (N'1', N'minhvu', N'2d00fde196884cbfd731ba1ff54d79e9', N'minmin@gmail.com', N'1234567891', N'1', N'BbLUGtTdfLUUuDMgJyg76Q==')
INSERT [dbo].[Accounts] ([AccountID], [Username], [Password], [Email], [Phone], [Role], [Salt]) VALUES (N'acc1', N'user', N'663bc06fa538a5e4e8b61fe9808c34fa', N'lmaolmao@yahoo.com', N'1234567890', N'user', N'vBh8S+6lVrnKP0JIHz3WOg==')
INSERT [dbo].[Accounts] ([AccountID], [Username], [Password], [Email], [Phone], [Role], [Salt]) VALUES (N'acc2', N'admin', N'e91eaa44089412832870e25ef8091cba', N'admin@yahoo.com', N'1234567789', N'admin', N'n0+Ldq0lKSJlre9vk+SlJA==')
INSERT [dbo].[Accounts] ([AccountID], [Username], [Password], [Email], [Phone], [Role], [Salt]) VALUES (N'HE38', N'minhvu123', N'bfc769017d2ab3e1cb3c95bc6aa5cb16', N'vudmhe140017@fpt.edu.vn', N'0818180399', N'1', N'A0NFFsPKExd7HlIithrQGA==')
GO
INSERT [dbo].[Authors] ([AuthorID], [AuthorName]) VALUES (N'1', N'J.K Rowling')
INSERT [dbo].[Authors] ([AuthorID], [AuthorName]) VALUES (N'2', N'J.K Rowling')
INSERT [dbo].[Authors] ([AuthorID], [AuthorName]) VALUES (N'3', N'To Hoai')
INSERT [dbo].[Authors] ([AuthorID], [AuthorName]) VALUES (N'4', N'Clare Chase')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (N'1', N'Story')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (N'2', N'Book')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (N'3', N'Novel')
GO
INSERT [dbo].[ProAu] ([ProductID], [AuthorID]) VALUES (N'1', N'1')
INSERT [dbo].[ProAu] ([ProductID], [AuthorID]) VALUES (N'2', N'2')
INSERT [dbo].[ProAu] ([ProductID], [AuthorID]) VALUES (N'3', N'3')
INSERT [dbo].[ProAu] ([ProductID], [AuthorID]) VALUES (N'4', N'4')
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [ImagePath], [CreatedDate], [Description], [UnitPrice], [UnitInStock], [IsContinue], [Ratting], [CategoryID]) VALUES (N'1', N'Harry Potter', N'./public/image/b.png', CAST(N'2022-01-18' AS Date), N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 10.0000, 20, 1, 2, N'1')
INSERT [dbo].[Products] ([ProductID], [ProductName], [ImagePath], [CreatedDate], [Description], [UnitPrice], [UnitInStock], [IsContinue], [Ratting], [CategoryID]) VALUES (N'10', N'lmao11', N'./public/image/265536323_321658666395849_6058386015852848153_n.png', CAST(N'2022-03-15' AS Date), N'sdsadds', 77.0000, 77, 1, 5, N'3')
INSERT [dbo].[Products] ([ProductID], [ProductName], [ImagePath], [CreatedDate], [Description], [UnitPrice], [UnitInStock], [IsContinue], [Ratting], [CategoryID]) VALUES (N'2', N'Harry Potter2', N'./public/image/hp2.png', CAST(N'2022-01-17' AS Date), N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 20.0000, 30, 1, 3, N'1')
INSERT [dbo].[Products] ([ProductID], [ProductName], [ImagePath], [CreatedDate], [Description], [UnitPrice], [UnitInStock], [IsContinue], [Ratting], [CategoryID]) VALUES (N'3', N'De Men Phuu Luu Ky', N'./public/image/demen.jpg', CAST(N'2022-01-20' AS Date), N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 30.0000, 10, 1, 4, N'2')
INSERT [dbo].[Products] ([ProductID], [ProductName], [ImagePath], [CreatedDate], [Description], [UnitPrice], [UnitInStock], [IsContinue], [Ratting], [CategoryID]) VALUES (N'4', N'Death Comes To Call', N'./public/image/death.jpg', CAST(N'2022-02-05' AS Date), N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 50.0000, 15, 1, 5, N'3')
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Accounts]
GO
ALTER TABLE [dbo].[Discount]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Discount]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Customer]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Products]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customer]
GO
ALTER TABLE [dbo].[ProAu]  WITH CHECK ADD  CONSTRAINT [FK_ProAu_Authors] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[Authors] ([AuthorID])
GO
ALTER TABLE [dbo].[ProAu] CHECK CONSTRAINT [FK_ProAu_Authors]
GO
ALTER TABLE [dbo].[ProAu]  WITH CHECK ADD  CONSTRAINT [FK_ProAu_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[ProAu] CHECK CONSTRAINT [FK_ProAu_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Category]
GO
ALTER TABLE [dbo].[Reports]  WITH CHECK ADD  CONSTRAINT [FK_Reports_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Reports] CHECK CONSTRAINT [FK_Reports_Accounts]
GO
