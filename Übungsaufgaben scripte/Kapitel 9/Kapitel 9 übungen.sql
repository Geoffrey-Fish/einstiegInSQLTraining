/*create table auszubildender(
azubid smallint primary key not null,
name varchar(15) not null,  
vorname varchar(15) not null,
gebdatum date);*

create table ausbildungsvertrag(
    vid SMALLINT PRIMARY KEY NOT null,
    vertragsdatum date,
    fk_azubid SMALLINT,
    CONSTRAINT fk_auszubildender
    foreign key  (fk_azubid)
    references auszubildender(azubid),
    constraint uq_fk_azubid
    unique (fk_azubid)
    );/
 
    create table adresse(
        aid smallint primary key not null,
        straße varchar(100) not null,
   		nr varchar(5) not null,
        plz int,
        ort varchar(200),
        fk_azubid smallint,
        constraint fk_adresse_auszubildender
        foreign key (fk_azubid)
        references auszubildender (azubid)
        );

create table ausbildungsberuf(
    berufsid smallint PRIMARY KEY not null,
    berufsbezeichnung varchar(300)
    );

    drop table ausbildungsvertrag
    
    */
  /*  
create table ausbildungsvertrag(
vid smallint primary key not null,
vertragsdatum date,
fk_azubid smallint,
fk_berufsid smallint,
constraint fk_auszubildender
foreign key (fk_azubid)
references auszubildender(azubid),
constraint fk_ausbildungsberuf
foreign key (fk_berufsid)
references ausbildungsberuf(berufsid),
constraint uq_fk_azubid
unique (fk_azubid)
);

create table lehrfach
(
lehrfachid smallint primary key not null,
lehrfach varchar(100)
);

   create table beruflehrfach(
    fk_berufsid smallint not null,
    fk_lehrfachid smallint not null,
    primary key (fk_berufsid, fk_lehrfachid),
    constraint fk_ausbildungsberuf2
    foreign key (fk_berufsid)
    references ausbildungsberuf (berufsid),
    constraint fk_lehrfach
    foreign key (fk_lehrfachid)
    references lehrfach (lehrfachid)
    );
        
    create table mitarbeiterausbildungsbetrieb(
    mitarbeiterid smallint primary key not null,
    name varchar(30),
    vorname varchar(49),
    fk_mitarbeiterid smallint not null,
    constraint fk_mitarbeiterausbildungsbetrieb
    foreign key (fk_mitarbeiterid)
    references mitarbeiterausbildungsbetrieb(mitarbeiterid)
    );
   */
   #// Abschlussübung
   /*
   create table verlag(
    verlagid smallint primary key not null,
    verlag varchar(200)
    );
    
    create table fachbereich(
    fachbereichid smallint primary key not null,
    fachbereich varchar(100)
    );
    
    create table fachbuch (
    fachbuchid smallint primary key not null,
    isbn varchar(100),
    titel varchar(299),
    fk_verlagid smallint,
    constraint fk_verlagid
    foreign key (fk_verlagid)
    references verlag (verlagid)
    )
    
    
    create table fachbereichfachbuch (
    fk_fachbereichid smallint not null,
    fk_fachbuchid smallint not null,
    primary key (fk_fachbereichid, fk_fachbuchid),
    constraint fk_fachbereichid
    foreign key  (fk_fachbereichid)
    REFERENCES fachbereich (fachbereichid),
    constraint fk_fachbuchid
    foreign key (fk_fachbuchid)
    REFERENCES fachbuch ( fachbuchid)
    );
    
    */
    
    
    