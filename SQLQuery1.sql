IF DB_ID('data') IS NULL
BEGIN
    Create Database data
END
ELSE
BEGIN
 PRINT 'Database Exists'
END
GO
USE data
GO
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME = N'invoice')
 BEGIN
  PRINT 'Table exists.'
 END
ELSE
 BEGIN
  Create table invoice (
   sId Int,
   Item varchar(255),
   Quantity Int,
   unit_price Int,
   GST Int,
   Total Int,
   sub_total Int,
   CGST Int,
   SGST Int,
   Amount_due Int,
   amount_inwords varchar(255),
   HireDate DateTime
  )
END
GO
Select * from invoice