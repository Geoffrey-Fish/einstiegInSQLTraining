-- select * from mitarbeiter where abteilung = 'vertrieb'
-- select name, urlaubstage, urlaubgenommen from mitarbeiter where urlaubgenommen = 30
-- select name, vorname, eintrittsdatum from mitarbeiter where eintrittsdatum = '1978.05.22'
-- select name, vorname, bankinstitut from mitarbeiter where  bankinstitut != 'Stadtsparkasse Köln'
-- select name, vorname, ueberstunden from mitarbeiter where ueberstunden <= 0
-- select name, vorname, ueberstunden from mitarbeiter where ueberstunden > 0
-- select name, vorname, eintrittsdatum from mitarbeiter where eintrittsdatum >= '2000.01.01'
select Mitarbeiterid, name, vorname, anzahlkinder from mitarbeiter where not anzahlkinder = 0
-- select Mitarbeiterid, name, vorname, eintrittsdatum from mitarbeiter where eintrittsdatum between '1990.01.01' and '2000.01.01'
-- select name, vorname, geschlecht from mitarbeiter where geschlecht like '%'