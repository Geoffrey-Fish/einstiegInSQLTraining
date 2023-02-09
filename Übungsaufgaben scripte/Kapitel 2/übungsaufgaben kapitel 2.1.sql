-- select name, vorname, ueberstunden, anzahlkinder from mitarbeiter where ueberstunden >0 and anzahlkinder !=0
-- select name, vorname, ueberstunden, umsatz from mitarbeiter where ueberstunden > 0 and Umsatz > 500000 and abteilung = 'verkauf'
-- select name, abteilung, ueberstunden from mitarbeiter where abteilung = 'verkauf' or abteilung = 'controlling' or abteilung = 'personal' and ueberstunden >= 0 and ueberstunden between 10 and 50
-- select name, austrittsdatum, austrittsgrund from mitarbeiter where austrittsdatum is not null and not austrittsgrund = 'ruhestand'
-- select name, abteilung, austrittsgrund from mitarbeiter where abteilung = 'einkauf' or not austrittsgrund = 'abfindungsprogramm'
-- select name, urlaubstage, urlaubgenommen from mitarbeiter where urlaubstage = 30 and urlaubgenommen < 20 or urlaubstage =15 and urlaubgenommen < 10
-- select name, steuerklasse, anzahlkinder, verheiratet from mitarbeiter where steuerklasse = 1 and anzahlkinder > 0 or verheiratet = 'ja'
-- select name, steuerklasse, anzahlkinder, verheiratet from mitarbeiter where steuerklasse = 1 and (anzahlkinder > 0 or verheiratet = 'ja')
/*update mitarbeiter 
set anzahlkinder = 0
where name = 'lempe'
die fähigkeit was zu ändern ist blockiert... */
-- ---------------------------------------------
-- Übungen-- 
-- ---------------------------------------------
-- select name, abteilung, geschlecht from mitarbeiter where abteilung = 'vertrieb' and geschlecht = 'm' /* 'w' 
-- select name, krankenversicherung from mitarbeiter where krankenversicherung = 'mh plus bonn' or krankenversicherung = 'ikk gesund plus'
-- select name, gebdatum, austrittsdatum from mitarbeiter where gebdatum <= '1955.01.01' and austrittsdatum is null -- das is null is wichtich^^
select name, geschlecht, anzahlkinder, verheiratet from mitarbeiter where geschlecht = 'w' and anzahlkinder > 0 and verheiratet = 'nein'