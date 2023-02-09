USE master
IF EXISTS(select * from sys.databases where name='uebungsdatenbank')
BEGIN
	DROP DATABASE uebungsdatenbank;
	create database uebungsdatenbank COLLATE Latin1_General_CI_AS;
END
ELSE
BEGIN
	create database uebungsdatenbank COLLATE Latin1_General_CI_AS;
END