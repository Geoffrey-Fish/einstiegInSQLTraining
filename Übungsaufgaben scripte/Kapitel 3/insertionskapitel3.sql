/*insert into qual (qid,bezeichnung,kuerzel,kategorie)
value (10,'Projektleitung',null,null)
insert into qual 
value (11,'Personalverwaltung','PEV','Personal')
update qualglobal set kuerzel = 'SQL' where kuerzel = 'DAT'
update qualglobal
set kuerzel = 'sql', kategorie = 'Informatik'
where kuerzel = 'shd'
update qualglobal
set kategorie ='Informationstechnologie'
where kategorie = 'Informatik'
update qualglobal
set kuerzel = 'MSO', kategorie = 'MSOffice'
where kuerzel = 'exc' or kuerzel = 'wor' or kuerzel = 'pow'
update qualglobal
set kategorie = 'Derzeit keine Kategorie'*
update qualglobal
set qid = 100
where qid = 5*
update qualglobal
set bezeichnung = 'Second level Helpdesk'
where qid = 2*
update qualglobal
set bezeichnung = 'First level Helpdesk', kuerzel = 'FLH'
where qid = 3*
update qualglobal
set kuerzel = null
where kuerzel = 'mso'*
update qualglobal
set qid = 5
where qid = 100*
delete from qualglobal
where qid = 4*
delete from qualglobal
where kuerzel is null*
delete from qualglobal*
#select * from qualglobal
delete from qualglobalarchiv
where qid = 2*
delete from qualglobalarchiv
where qid = 6 or qid = 7*
delete from qualglobalarchiv*
#select * from hardwarearchiv
#truncate table hardwarearchiv*/




