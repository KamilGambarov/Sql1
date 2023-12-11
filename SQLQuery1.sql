create database [Library]

use [Library]

create table [Books] (
[Id] int primary key identity,
[Name] nvarchar(50),
[Author] nvarchar(50),
[Genre] nvarchar(30),
[Price] decimal (18,2),
[PageCount] int,
[Published] datetime,
[CreatedDate] datetime default getdate()
)


insert into [dbo].[Books] ([Name], [Author], [Price], [PageCount])
values ('Book1',N'Çingiz Abdullayev', 5, 243), 
('Book2',N'Abbas Səhhət', 10, 189),
('Book3',N'Qaraqan', 8, 132),
('Book4',N'Çingiz Abdullayev', 7, 297),
('Book5',N'Qaraqan', 9, 157);

select * from [dbo].[Books]
order by Price desc

select top 3 * from [dbo].[Books]
order by Price asc

select * from [dbo].[Books] where Author='Çingiz Abdullayev' 

update [dbo].[Books]
set [Price]=[Price]*1.05
where Author='Çingiz Abdullayev' 

delete from [dbo].[Books] where [Price]>8

truncate table [Books]
