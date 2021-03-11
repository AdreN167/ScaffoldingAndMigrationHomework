create database ArticleDb;
use ArticleDb;

create table Articles (
	Id uniqueidentifier primary key not null,
	[Name] nvarchar(max) null,
	AuthorId uniqueidentifier not null,
	CategoryId uniqueidentifier not null

	constraint FK_Articles_Authors foreign key(AuthorId)
		references Authors(Id),

	constraint FK_Articles_Categories foreign key(CategoryId)
		references Categories(Id),
);

create table Authors (
	Id uniqueidentifier primary key not null,
	FullName nvarchar(max) null
);

create table Categories (
	Id uniqueidentifier primary key not null,
	[Name] nvarchar(max) null,
	[Description] nvarchar(max) null
);

insert into Categories(Id, [Name]) values ('921e3c0f-af48-4c53-a10f-39ccf3837af7', 'Инструкция');
insert into Categories(Id, [Name]) values ('a154c28c-eb60-4481-8038-c6e17989350b', 'Обзор');
insert into Categories(Id, [Name]) values ('d2e057da-82f9-4ac7-bd94-2f7aeff0defb', 'Список');
insert into Categories(Id, [Name]) values ('273bc7d0-6104-4aa5-bbe1-816db9916a53', 'Проблемы');

insert into Authors(Id, FullName) values ('e04bc92f-62ba-443f-8f37-d1b2945bc22c', 'А.С.Петров');
insert into Authors(Id, FullName) values ('6ec2b4d0-bcc0-4cb0-bfb9-aa3c80d28968', 'П.К.Степкин');
insert into Authors(Id, FullName) values ('41d5692d-4d24-4556-874c-07324e22ab62', 'Д.А.Степан');

insert into Articles(Id, [Name], AuthorId, CategoryId) values ('81580c54-da09-452d-9c0b-9df3a8759c0f', 'Covid-19', '41d5692d-4d24-4556-874c-07324e22ab62', '273bc7d0-6104-4aa5-bbe1-816db9916a53');
insert into Articles(Id, [Name], AuthorId, CategoryId) values ('b244bf20-e15d-46bb-920a-1576cf95a927', 'Обзор новой линейки процессоров Intel', 'e04bc92f-62ba-443f-8f37-d1b2945bc22c', 'a154c28c-eb60-4481-8038-c6e17989350b');
insert into Articles(Id, [Name], AuthorId, CategoryId) values ('6961e2f2-c069-4195-a93f-e89b7a016cd9', 'Что такое EFCore?', '6ec2b4d0-bcc0-4cb0-bfb9-aa3c80d28968', '921e3c0f-af48-4c53-a10f-39ccf3837af7');

select * from Articles