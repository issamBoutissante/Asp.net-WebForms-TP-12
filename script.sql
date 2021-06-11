create database EtablissementTP10
go
use EtablissementTP10
go
--Stagiare (IdStg, Nom)
--Matiere (IdMat, Libelle, Coef)
--Note (#IdStg, #IdMat, Note)
create table Stagiare(
IdStg int primary key identity(1,1),
Nom nvarchar(20),
)

insert into Stagiare values('Boutissante'),('Issam')


create table Matiere(
IdMat int primary key identity(1,1),
Libelle nvarchar(20),
Coef int,
)

insert into Matiere values('WCS',2),('WCC',3),('PFF',2)

create table Note(
IdStg int,
IdMat int,
Note decimal,
constraint fk_IdStg_Stagiare foreign key(IdStg) references Stagiare(IdStg),
constraint fk_IdMat_Matiere foreign key(IdStg) references Matiere(IdMat)
)

insert into Note values(1,1,19)
insert into Note values(1,2,17)
insert into Note values(1,3,20)
insert into Note values(2,1,18)
insert into Note values(2,2,16)
insert into Note values(2,3,20)

select * from Note
select * from Stagiare
select * from Matiere

create table loginInfo(
id int primary key identity(1,1),
[login] nvarchar(20),
MotPass nvarchar(20)
)
insert into loginInfo values('issam','1234')
