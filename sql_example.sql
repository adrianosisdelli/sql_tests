create table pessoa(
	  id		int primary key not null identity(1, 1)
	, nome		varchar(100) not null
	, endereco	varchar(100) not null
	, cidade	varchar(100) not null
	, telefone	varchar(15)
)
go

create table municipio (
	  id	int primary key not null identity(1, 1)
	, nome	varchar(50)
)
go

create table nota (
	  id			int primary key not null identity(1, 1)
	, codigo		char(12) not null
	, idMunicipio	int foreign key references municipio(id) not null
)
go

create table venda (
	  id		int primary key not null identity(1, 1)
	, idPessoa	int foreign key references pessoa(id) not null
	, idNota	int foreign key references nota(id) not null
)
go