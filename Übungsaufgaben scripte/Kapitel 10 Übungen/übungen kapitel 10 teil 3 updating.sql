/*
select * from auszubildender
join
adresse
on 
azubid = fk_azubid
#*/
/*
update adresse
set fk_azubid = 1
where azubid = 3


create table auszubildender_neu(
azubid smallint primary key not null,
name varchar(30),
vorname varchar(30),
gebdatum DATE
);
*/
/*
create table adresse_neu (
aid smallint primary key not null,
strasse varchar(30),
hausnummer varchar(10),
plz smallint,
ort varchar(100),
fk_azubid smallint,
constraint fk_azubid_azubi
FOREIGN KEY (fk_azubid)
REFERENCES auszubildender_neu(azubid)
on update cascade
on delete cascade
);
*/
/*
insert into auszubildender_neu
values (1,'Müller','Ralf','2001-04-01');

insert into auszubildender_neu
values (2,'Klein','Sabine','2002-05-10');

insert into auszubildender_neu
values (3,'Lang','Alexander','2001-03-01');

insert into auszubildender_neu
values (4,'Berg','Frank','2002-07-20');

insert into auszubildender_neu
values (5,'Erde','Sabine','2001-04-23');

insert into auszubildender_neu
VALUES (6,'Grün','Justus','2001-04-15');
*//*
insert into adresse_neu
values (1,'Mondstraße','8',50827,'Köln',1);
/*
insert into adresse_neu
values (2,'Sternstraße','10',50127,'Bonn',3);
/*
insert into adresse_neu
values (3,'SonnenStraße','1',50129,'Bonn',5);
/*
insert into adresse_neu
values (4,'JupiterStraße','11',50827,'Köln',null);
/*
insert into adresse_neu
values (5,'UranusStraße','9',50127,'Bonn',null);

insert into adresse_neu
values (6,'MarsStraße','9',50121,'Bonn',null);
/*
alter table adresse_neu
MODIFY column plz int

select * from auszubildender_neu
inner join
adresse_neu
on
azubid = fk_azubid

/*
update auszubildender_neu
set azubid = 50
where azubid = 5
*/

# Üebungen
/*
use bibliothek

select * from ausleihe
select * from fachbuch
update ausleihe
set fk_fachbuchid = 3
where fk_fachbuchid =2 and ausleihid = 2
*/
#select * from ausleihe

#use ausbildungsdatenbank 
/*
update adresse_neu
set fk_azubid=null
where fk_azubid=1
*/
select * from auszubildender_neu c
left outer join
adresse_neu e
on c.azubid=e.fk_azubid