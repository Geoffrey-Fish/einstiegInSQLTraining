# Inner join
/*
select name, vorname, plz, ort
from auszubildender inner join adresse
on azubid = fk_azubid

select name, vorname, plz, ort
from auszubildender left outer join adresse
on azubid = fk_azubid
where plz is null

select name, vorname, plz, ort
from auszubildender right outer join adresse
on azubid = fk_azubid

select name, vorname, plz, ort
from auszubildender right outer join adresse
on azubid = fk_azubid
where name is null
*/

#Eine Nachstellung der des full outer join mittels dem kniff UNION
/*
select name, vorname, plz, ort
from auszubildender inner join adresse
on azubid = fk_azubid
union
select name, vorname, plz, ort
from auszubildender left outer join adresse
on azubid = fk_azubid 
union
select name, vorname, plz, ort
from auszubildender right outer join adresse
on azubid = fk_azubid

select name, vorname, plz, ort
from auszubildender 
left outer join adresse
on azubid = fk_azubid 
where plz is null
union
select name, vorname, plz, ort
from auszubildender right outer join adresse
on azubid = fk_azubid
where name is null

/*#Cross join

select name, vorname, straße, plz, ort
from auszubildender cross join adresse
*/
/*# Inner join mit drei tabellen

select berufsbezeichnung, lehrfach
from ausbildungsberuf
inner join beruflehrfach
on berufsid = fk_berufsid
inner join lehrfach
on lehrfachid = fk_lehrfachid
*/

/*create table sportag (
    teilnehmerid smallint PRIMARY KEY not null,
    name varchar(100),
    vorname varchar(100),
    fk_azubid smallint,
    constraint fk_azubid_auszubildender
    foreign key (fk_azubid)
    REFERENCES auszubildender(azubid));
    
    insert into sportag
    values ( 1,'Müller','Ralf',1);
    
    insert into sportag
    values (2,'Klein','Sabine',2);
    */
  /*  
#Nachfolgend eine Abfrage die nicht geht wegen gleichlautender spaltennamen
#select name, vorname, gebdatum from auszubildender inner join sportag on azubid = fk_azubid
  
select auszubildender.name, auszubildender.vorname, gebdatum from auszubildender inner join sportag on azubid = fk_azubid
    
select * from auszubildender inner join sportag on azubid = fk_azubid    
*/

/*#Aliase für die Tabellen


     select  b.name,b.vorname,b.gebdatum,s.name,s.vorname
     from auszubildender b
     inner join sportag s
     on azubid = fk_azubid 
     
     # Aliase für die spalten
     select b.name as b_name,b.vorname as b_vorn, s.name as s_name,s.vorname as s_vorn
     from auszubildender b
     inner join sportag s
     on azubid = fk_azubid  
     
     #Selbstversuch eines self join befoe ich es nachschreibe
     select * from mitarbeiterausbildungsbetrieb
     join mitarbeiterausbildungsbetrieb
     on fk_mitarbeiterid = mitarbeiterid
     #war wohl nichtsxxx jetzt in Richtig
     
     select
     ma1.mitarbeiterid as vorgesetzterid,
     ma1.name as vorgesetztername,
     ma2.name as mitarbeitername,
     ma2.mitarbeiterid as mitarbeiterid
     from mitarbeiterausbildungsbetrieb ma1
     inner join
     mitarbeiterausbildungsbetrieb ma2
     on
     ma1.mitarbeiterid=ma2.fk_mitarbeiterid;
     
     #fucking complicated aber eigentlich ganz einfach
     # es wird immer dann eine Verbindung von chef zu knecht erstellt, wenn die 
     #mitarbeiter id des chefs die foreign key des mitarbeiters ist.
     */
     # use bibliothek
    /* #Jetzt folgen übungsaufgaben!
     
     select f.titel,f.isbn,f.fk_verlagid,v.verlag,v.verlagid
     from fachbuch f 
     inner join 
     verlag v
     on fk_verlagid=verlagid
     
     select * from fachbuch
     left outer join
     verlag
     on fk_verlagid = verlagid
     
     
     select * from fachbuch f
     left outer join
     verlag v
     on fk_verlagid = verlagid
     union
     select * from fachbuch f
     right outer join
     verlag vv
     on
     v.verlagid = vv.verlagid 
     
     select * from fachbuch 
     cross join
     verlag
     
     select titel, fachbereich 
     from
     fachbuch
     inner join
     fachbereichfachbuch
      
	 select * from fachbuch 
     left outer join
     verlag 
     on fk_verlagid = verlagid
     union
     select * from fachbuch 
     right outer join
     verlag 
     on
     fk_verlagid = verlagid 
     on
     fachbuchid = fk_fachbuchid
     inner join
     fachbereich
     on
     fk_fachbereichid = fachbereichid
     
     create table ausleihe(
     ausleihid smallint, 
     exemplarid smallint,
     von date not null,
     bis date not null,
     isbn varchar(10) not null,
     titel varchar(200),
     fk_fachbuchid smallint not null,
     primary key(ausleihid,exemplarid),
     constraint fk_fachbuchid_fachbuch
     foreign key (fk_fachbuchid)
     references fachbuch(fachbuchid)
     );
     
     insert into ausleihe
     values (1,1,'2015-04-10','2015-05-01','9878','Elektrotechnik',2);
     
     insert into ausleihe
     values (2,3,'2015-05-10','2015-05-20','9878','Elektrotechnik',2);
          
     select a.ausleihid, a.exemplarid,a.von,a.bis,
     a.isbn,a.titel,a.fk_fachbuchid,f.fachbuchid
     from ausleihe a 
     inner join
     fachbuch f 
     on a.fk_fachbuchid = f.fachbuchid
     #Easy!
     
       create table fachbereichhierarchie(
       fachbereichid smallint primary key,
       fachbereich  varchar(200),
       fk_fachbereich smallint,
       constraint fk_fachbereichid_fachbereich 
       foreign key(fk_fachbereich)
       references fachbereichhierarchie(fachbereichid)
       );
       
       insert into fachbereichhierarchie
       values(1,'Elektrotechnik',null)
       
              insert into fachbereichhierarchie
       values(2,'Kommunikationselektronik',1)
       
              insert into fachbereichhierarchie
       values(3,'Energieelektronik',1)
       
              insert into fachbereichhierarchie
       values(4,'Kaufmann',null)
       
              insert into fachbereichhierarchie
       values(5,'IndustrieKaufmann',4)
       
              insert into fachbereichhierarchie
       values(6,'Einzelhandelskaufmann',4)
       
              insert into fachbereichhierarchie
       values(7,'Mechanik',null)
       
              insert into fachbereichhierarchie
       values(8,'Industriemechaniker',7)
       
              insert into fachbereichhierarchie
       values(9,'Feinmechaniker',7)
      
              insert into fachbereichhierarchie
       values(10,'Grobmechaniker',7)
       
select a.fachbereich as afachbereich,b.fachbereich as bfachbereich from fachbereichhierarchie a 
inner join
fachbereichhierarchie b 
on
a.fachbereich=b.fachbereich
where
a.fachbereich = b.fk_fachbereich

select
f1.fachbereichid as f1fachid,
f1.fachbereich as f1fach,
f2.fachbereichid as f2fkfbid,
f2.fachbereich as f2fach
from fachbereichhierarchie f1
inner join
fachbereichhierarchie f2
on
f1.fachbereichid=f2.fk_fachbereich  

select
f.isbn,f.titel,a.von,a.bis
from fachbuch f
inner join
ausleihe a 
on 
f.isbn=a.isbn

ALLES RICHTIG!!!!
*/
     
     
     