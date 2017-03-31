CREATE TABLE [dbo].[AddressBooks]
(
	[No] INT NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(50) NULL, 
    [Address] NCHAR(10) NULL, 
    [Telephone] NCHAR(10) NULL, 
    [Birthday] NCHAR(10) NULL, 
    [Email] NCHAR(10) NULL
)
