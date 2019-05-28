Create Database biblioteca;
use biblioteca;
create table autor(
id int primary key auto_increment,
nome varchar(50),
sobrenome varchar(60));
create table editora(
id int  primary key auto_increment,
nome varchar(50));
create table livro(
id int primary key auto_increment,
nome varchar(50),
isbn varchar(30),
data_pub date,
preco decimal(10,2),
editora_id int,
autor_id int);
ALTER TABLE
    livro ADD CONSTRAINT fk1 FOREIGN KEY(editora_id) REFERENCES editora(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT fk2 FOREIGN KEY(autor_id) REFERENCES autor(id) ON DELETE NO ACTION ON UPDATE NO ACTION;





INSERT INTO autor VALUES (null,'Daniel','Barret');
INSERT INTO autor VALUES (null,'Gerald','Carter');
INSERT INTO autor VALUES (null,'Mark','Sobell');
INSERT INTO autor VALUES (null,'William','Stanek');
INSERT INTO autor VALUES (null,'Richard','Blum');


INSERT INTO editora VALUES (null,'Prentice Hall');
INSERT INTO editora VALUES (null,'O´Reilly');
INSERT INTO editora VALUES (null,'Microsoft Press');
INSERT INTO editora VALUES (null,'Wiley');


INSERT INTO livro VALUES (null,'Linux Command Line and Shell Scripting', 143856969,'2009-12-21',68.35,1,4);
INSERT INTO livro VALUES (null,'SSH, the Secure Shell',127658789,'2009-12-21',58.30,1,2);
INSERT INTO livro VALUES (null,'Using Samba',123856789,'2000-12-21',61.45,2,2);
INSERT INTO livro VALUES (null,'Fedora and Red Hat Linux',123346789,'2010-11-01',62.24,3,1);
INSERT INTO livro VALUES (null,'Windows Server 2012 Inside Out',123356789,'2004-05-17',66.80,4,3);
INSERT INTO livro VALUES (null,'Microsoft Exchange Server 2010',123366789,'2000-12-21',45.30,4,3);











SELECT nome from editora WHERE nome LIKE '%y';
select nome from livro where nome like 'U%' or 'S%';
select nome from autor where sobrenome like 'S%' or 'So%';
SELECT nome, isbn from livro where isbn like '123%';
select nome from autor WHERE nome not like '%l' or '%m';






