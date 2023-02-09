/*
#select 1000000 + '5.8'
#select cast('5' as Unsigned integer) + 20 as sileas
# wichtig ist , kein leerzeichen zu lassen nach cast?!!!
*/
/*
create table dienstwagen(
dienstwagenid SMALLINT AUTO_INCREMENT PRIMARY KEY,
kennzeichen char(9) not null,
erstzulassung date not null,
kostenstelle smallint null,
hersteller varchar(20) null,
modell varchar(20) null,
leistung decimal(5,2) null,
motor varchar(10) null, 
getriebe varchar(20) null,
mitarbeiter varchar(50) null
)
/*
drop table dienstwagen
insert into dienstwagen (kennzeichen,erstzulassung)
values ('xx-xx-xx2','2014-05-05')
*/
/*
insert into dienstwagen (kennzeichen, mitarbeiter)
values ('xx-xx-xx3','meier')
update dienstwagen
set erstzulassung = null
where dienstwagenid = 1*/
/*
create table dienstwagen(
dienstwagenid SMALLINT AUTO_INCREMENT PRIMARY KEY,
kennzeichen char(9) not null,
erstzulassung date not null,
kostenstelle smallint default 0,
hersteller varchar(20) null,
modell varchar(20) null,
leistung decimal(5,2) default 0,
motor varchar(10) null, 
getriebe varchar(20) null,
mitarbeiter varchar(50) unique
)*/
/*
insert into dienstwagen (dienstwagenid,kennzeichen,erstzulassung, mitarbeiter)
values (1,'xx-xx-xx1', '2020-12-22','huber')
*/
/*
create table dienst(
id char(100) primary key,
motor varchar(199) check (motor = 'diesel' or motor = 'benzin'),
getriebe varchar(200) check (getriebe = 'automatik' or getriebe = 'schaltung'),
mitarbeiter varchar(29) unique
)
*/
/*
insert into dienst
values (1,'diesel','automatik','huber')

insert into dienst
values (2,'benzin', 'schaltung','meier')

insert into dienst 
values ( 3,'DIESEL','automatik','keisen')

insert into dienst
values (4, 'dusel','schaltung', ' bunner')
*/
 #Üebungsaufgaben
 /*
 create table mitarbeitergeschenke(
 id smallint PRIMARY key,
 artikel varchar(199) unique,
 preis decimal(5,2) default 5,
 jubel smallint check (jubel = 5 or jubel = 10 or jubel = 15))
 */

 /*
 insert into mitarbeitergeschenke
 values (1,'banane',5.23,5);
 /*
 insert into mitarbeitergeschenke 
 values (2,'cocnut', 34.22, 10);
 /*
 insert into mitarbeitergeschenke
 values (3, 'cochnut', '23.44',10)
 /*
 insert into mitarbeitergeschenke
 values (4,'bong',4.22,15)
 */
#select * from mitarbeitergeschenke
#drop table mitarbeitergeschenke 
#drop table dienst
#select * from dienst

/*
create table dienst(
id smallint,
motor varchar(199) check (motor = 'diesel' or motor = 'benzin'),
getriebe varchar(200) check (getriebe = 'automatik' or getriebe = 'schaltung'),
mitarbeiter varchar(29) unique,
constraint pk_id primary key (id)
)
/*
insert into dienst
values (1,'diesel','automatik','huber')

insert into dienst
values (2,'benzin', 'schaltung','meier')

insert into dienst 
values ( 3,'DIESEL','automatik','keisen')
#*/

#select * from dienst 

/*
create table zweigstellen(
land varchar(100),
zweigstellenid SMALLINT,
namezweigstelle varchar(100),
constraint pk_land_zweig primary key (land, zweigstellenid)
)
*/
/*
insert into zweigstellen
values ('deutschland',1,'haus a')
/*
insert into zweigstellen
values ('deutschland',2, 'haus b')
/*
insert into zweigstellen
values ('holland',1,'haus c')
/*
insert into zweigstellen
values ('holland',2,'haus d')

insert into zweigstellen
values ('deutschland',2,'haus e')
*/
#select * from zweigstellen

#drop table zweigstellen

