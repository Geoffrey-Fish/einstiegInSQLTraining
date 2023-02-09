-- select * from mitarbeiter limit 10
-- select name, vorname, abteilung, umsatz from mitarbeiter order by umsatz desc
-- select name, vorname, eintrittsdatum from mitarbeiter order by eintrittsdatum asc
-- select name, vorname, austrittsdatum from mitarbeiter order by austrittsdatum desc
-- übungen --
-- select name, vorname , abteilung from mitarbeiter order by abteilung asc
-- select name, vorname, abteilung from mitarbeiter order by abteilung desc
-- select name, vorname, abteilung, bonus from mitarbeiter order by abteilung, bonus asc
-- select name, vorname, austrittsdatum from mitarbeiter order by name, vorname, austrittsdatum desc
select name, vorname, austrittsdatum, austrittsgrund from mitarbeiter where austrittsgrund = 'ruhestand' order by austrittsdatum desc