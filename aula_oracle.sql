drop table aluno;

create table aluno (
  id_aluno number primary key,
  nome varchar2(50) not null,
  sobrenome varchar(100) not null,
  data_nasc date,
  sexo char,
  rm number(5) unique
);
  
create table endereco (
  id_endereco number primary key,
  tp_logr varchar2(10),
  logr varchar2(50),
  numero number(5),
  cep number(8) not null,
  bairro varchar2(30),
  cidade varchar2(30),
  uf varchar2 (2),
  id_aluno number references aluno(id_aluno)
);

insert into endereco(id_endereco,tp_logr,logr,numero,cep,bairro,cidade,uf,id_aluno)
values(1,'rua','fidencio ramos',308,12345678,'fonta','sao paulo','sp',8);

select * from endereco;

select tp_logr, logr from aluno a, endereco e where a.rm=11118 and a.id_aluno=e.id_aluno;

desc aluno;

insert into endereco(id_endereco,tp_logr,logr,numero,cep,cidade,uf,id_aluno)
values(1,'rua','fidencio ramos',308,12345678,'sao paulo','sp',8);

insert into endereco(id_endereco,tp_logr,logr,numero,cep,cidade,uf,id_aluno)
values(3,'rua','olimpiadas',308,12345670,'sao paulo','sp',8);

insert into endereco(id_endereco,tp_logr,logr,numero,cep,cidade,uf,id_aluno)
values(2,'rua','olimpiadas',308,12345670,'sao paulo','sp',4);

select id_aluno from aluno where rm=11118;
select tp_logr,logr from endereco where id_aluno=8;

select tp_logr,logr from aluno a,endereco e 
where 
  a.rm=11118 and
  a.id_aluno=e.id_aluno;

select tp_logr,logr from endereco 
where id_aluno=(select id_aluno from aluno where rm=11118);

select * from endereco;

--insert into aluno(id_aluno,nome,sobrenome,sexo,data_nasc,rm)
--values (2,'Aluno','Fiap','I',to_date('25/12/1999','dd/mm/yyyy'),11112);

--delete from aluno;
--select * from aluno;

--select rm, nome from aluno
--where rm=11118;