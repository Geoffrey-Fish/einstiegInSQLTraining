/*
grant select,update on * to hans
revoke select,update on * from hans

create role personal

grant select, update, insert on abteilung to personal

grant personal to hans
create user depp identified by 'wurst'
grant personal to depp
grant select on * to  depp
 update abteilung
set kostenstelle='xxx'
where abteilungid=1
update anrede
set anrede='Lady'
where geschlecht='w'
select * from mitarbeiter where geschlecht='w'*/
#create user tom
#revoke select,update on artikel from tom
drop user tom