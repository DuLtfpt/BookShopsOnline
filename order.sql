USE BookShopsOnline
GO
INSERT INTO [Orders] (OrderID,CustomerID,OrderDate,Ship,Status,PaymentMethod)
VALUES
  ('OD3','CUS17','04/01/2018',0,'Waitting','Cash'),
  ('OD4','CUS23','01/04/2019',0,'Approved','Cash'),
  ('OD5','CUS18','04/02/2020',0,'Waitting','Cash'),
  ('OD6','CUS18','06/19/2018',0,'Denied','Cash'),
  ('OD7','CUS14','01/09/2022',0,'Waitting','Cash'),
  ('OD8','CUS10','02/19/2019',0,'Approved','Cash'),
  ('OD9','CUS12','11/15/2021',0,'Waitting','Cash'),
  ('OD10','CUS6','11/02/2021',0,'Approved','Cash'),
  ('OD11','CUS3','11/26/2018',0,'Approved','Cash'),
  ('OD12','CUS10','05/30/2021',0,'Approved','Cash'),
  ('OD13','CUS11','02/13/2019',0,'Approved','Cash'),
  ('OD14','CUS16','05/17/2020',0,'Waitting','Cash'),
  ('OD15','CUS24','12/19/2021',0,'Waitting','Cash'),
  ('OD16','CUS20','08/21/2018',0,'Approved','Cash'),
  ('OD17','CUS2','03/19/2022',0,'Denied','Cash'),
  ('OD18','CUS18','04/06/2019',0,'Approved','Cash'),
  ('OD19','CUS6','04/20/2018',0,'Approved','Cash'),
  ('OD20','CUS6','07/26/2019',0,'Denied','Cash'),
  ('OD21','CUS17','10/01/2020',0,'Approved','Cash'),
  ('OD22','CUS21','06/15/2021',0,'Waitting','Cash'),
  ('OD23','CUS12','10/21/2018',0,'Approved','Cash'),
  ('OD24','CUS19','04/09/2019',0,'Approved','Cash'),
  ('OD25','CUS23','12/11/2018',0,'Approved','Cash'),
  ('OD26','CUS11','01/01/2019',0,'Waitting','Cash'),
  ('OD27','CUS1','06/01/2020',0,'Approved','Cash'),
  ('OD28','CUS6','07/30/2018',0,'Waitting','Cash'),
  ('OD29','CUS2','10/16/2020',0,'Denied','Cash'),
  ('OD30','CUS7','08/20/2019',0,'Waitting','Cash'),
  ('OD31','CUS13','10/12/2018',0,'Approved','Cash'),
  ('OD32','CUS16','06/24/2019',0,'Approved','Cash'),
  ('OD33','CUS24','06/26/2019',0,'Approved','Cash'),
  ('OD34','CUS22','03/27/2020',0,'Approved','Cash'),
  ('OD35','CUS25','11/03/2019',0,'Approved','Cash'),
  ('OD36','CUS21','07/03/2018',0,'Denied','Cash'),
  ('OD37','CUS19','08/19/2021',0,'Approved','Cash'),
  ('OD38','CUS13','03/05/2019',0,'Approved','Cash'),
  ('OD39','CUS18','06/13/2018',0,'Waitting','Cash'),
  ('OD40','CUS12','03/10/2020',0,'Denied','Cash'),
  ('OD41','CUS25','05/08/2020',0,'Approved','Cash'),
  ('OD42','CUS23','04/16/2018',0,'Denied','Cash'),
  ('OD43','CUS12','05/22/2018',0,'Denied','Cash'),
  ('OD44','CUS22','02/04/2022',0,'Waitting','Cash'),
  ('OD45','CUS2','04/18/2021',0,'Denied','Cash'),
  ('OD46','CUS10','03/23/2021',0,'Waitting','Cash'),
  ('OD47','CUS21','11/04/2018',0,'Waitting','Cash'),
  ('OD48','CUS16','02/28/2020',0,'Approved','Cash'),
  ('OD49','CUS12','07/11/2019',0,'Denied','Cash'),
  ('OD50','CUS2','10/05/2018',0,'Approved','Cash'),
  ('OD51','CUS16','03/01/2019',0,'Denied','Cash'),
  ('OD52','CUS5','07/16/2019',0,'Approved','Cash');
GO
INSERT INTO [dbo].[OrderDetail] VALUES ('OD1', 'PD3', 4, 23)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD1', 'PD6', 3, 11)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD10', 'PD3', 1, 54)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD10', 'PD11', 1, 84)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD10', 'PD1', 1, 66)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD10', 'PD5', 2, 41)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD11', 'PD11', 2, 32)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD11', 'PD2', 4, 44)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD11', 'PD5', 2, 38)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD11', 'PD7', 2, 90)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD12', 'PD13', 2, 73)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD12', 'PD2', 4, 39)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD12', 'PD11', 3, 98)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD12', 'PD12', 1, 91)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD13', 'PD5', 4, 31)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD14', 'PD3', 2, 10)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD14', 'PD10', 2, 78)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD15', 'PD7', 3, 21)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD16', 'PD3', 2, 29)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD17', 'PD1', 2, 64)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD17', 'PD6', 1, 49)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD17', 'PD12', 2, 14)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD17', 'PD2', 3, 47)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD18', 'PD13', 2, 25)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD18', 'PD10', 2, 60)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD18', 'PD6', 1, 71)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD19', 'PD5', 4, 88)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD2', 'PD5', 1, 86)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD2', 'PD6', 3, 76)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD20', 'PD11', 3, 77)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD20', 'PD10', 4, 17)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD20', 'PD12', 4, 85)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD21', 'PD10', 1, 34)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD21', 'PD8', 3, 18)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD21', 'PD1', 4, 26)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD21', 'PD12', 4, 55)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD22', 'PD11', 1, 52)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD22', 'PD13', 2, 55)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD22', 'PD6', 4, 23)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD22', 'PD10', 2, 65)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD23', 'PD6', 1, 25)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD23', 'PD11', 3, 29)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD23', 'PD3', 3, 86)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD24', 'PD10', 4, 81)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD24', 'PD3', 3, 89)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD25', 'PD4', 2, 44)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD26', 'PD6', 2, 90)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD26', 'PD3', 3, 50)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD27', 'PD7', 2, 89)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD28', 'PD6', 2, 15)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD28', 'PD8', 1, 46)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD28', 'PD1', 4, 34)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD28', 'PD7', 3, 20)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD29', 'PD3', 2, 84)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD29', 'PD4', 2, 10)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD29', 'PD8', 4, 99)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD29', 'PD7', 3, 99)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD3', 'PD8', 4, 20)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD30', 'PD1', 4, 49)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD30', 'PD13', 4, 23)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD31', 'PD1', 4, 62)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD32', 'PD3', 1, 51)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD32', 'PD4', 1, 96)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD33', 'PD2', 1, 97)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD33', 'PD7', 4, 78)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD33', 'PD5', 1, 14)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD33', 'PD13', 3, 45)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD34', 'PD1', 4, 38)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD34', 'PD7', 2, 99)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD35', 'PD8', 3, 36)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD36', 'PD10', 4, 57)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD36', 'PD2', 4, 96)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD36', 'PD8', 2, 41)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD36', 'PD1', 3, 63)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD37', 'PD1', 4, 77)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD38', 'PD13', 4, 15)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD38', 'PD10', 4, 33)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD38', 'PD8', 3, 11)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD39', 'PD1', 2, 63)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD39', 'PD11', 2, 60)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD39', 'PD2', 4, 15)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD4', 'PD4', 4, 38)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD4', 'PD6', 1, 43)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD40', 'PD7', 4, 37)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD40', 'PD6', 1, 49)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD40', 'PD12', 3, 52)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD41', 'PD3', 2, 82)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD42', 'PD11', 1, 79)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD42', 'PD5', 2, 25)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD42', 'PD1', 2, 64)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD42', 'PD13', 1, 39)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD43', 'PD7', 1, 54)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD44', 'PD8', 3, 23)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD44', 'PD1', 3, 40)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD44', 'PD5', 2, 20)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD44', 'PD13', 4, 96)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD45', 'PD4', 2, 15)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD46', 'PD8', 2, 14)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD46', 'PD1', 1, 76)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD47', 'PD4', 2, 94)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD47', 'PD11', 4, 38)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD47', 'PD10', 1, 44)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD48', 'PD5', 3, 61)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD48', 'PD3', 1, 60)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD49', 'PD2', 1, 54)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD49', 'PD13', 1, 35)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD5', 'PD13', 1, 51)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD50', 'PD8', 3, 75)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD50', 'PD11', 3, 98)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD51', 'PD8', 2, 41)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD51', 'PD12', 2, 87)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD52', 'PD12', 1, 14)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD52', 'PD2', 4, 10)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD6', 'PD11', 3, 15)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD6', 'PD2', 1, 88)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD6', 'PD6', 4, 24)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD7', 'PD7', 3, 37)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD7', 'PD3', 1, 95)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD7', 'PD6', 4, 66)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD8', 'PD10', 4, 60)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD8', 'PD13', 4, 79)
INSERT INTO [dbo].[OrderDetail] VALUES ('OD9', 'PD3', 1, 13)