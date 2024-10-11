create database ger_join;
use  ger_join;

create table funcionarios (
cod_fun int  auto_increment primary key not null,
nome_fun varchar (255),
especialidade varchar (255)
);

select * from funcionarios;

create table dependentes (
cod_dep int  auto_increment primary key not null,
nome_dep varchar (255),
cod_fun int,
foreign key (cod_fun) references funcionarios (cod_fun)
);

insert into funcionarios (nome_fun, especialidade)
	values ("José","Engenheiro"),
           ("João", "Mestre de obra"),
           ("Maria", "contabilista");
           
 insert into dependentes (nome_dep, cod_fun)
	values ("Pedro",1),
           ("Alice", 1),
           ("Luana", 3);   
           
           select * from dependentes;
           
  #  inner join
  select funcionarios.nome_fun, dependentes.nome_dep
  from funcionarios
  inner join dependentes
  on funcionarios.cod_fun = dependentes.cod_fun
  where funcionarios.cod_fun = 1 ;
  
   #left join    
  select funcionarios.nome_fun, dependentes.nome_dep
  from funcionarios
  left join dependentes
  on funcionarios.cod_fun = dependentes.cod_fun;
  
  #left excluding join    
  select funcionarios.nome_fun, dependentes.nome_dep
  from funcionarios
  left join dependentes
  on funcionarios.cod_fun = dependentes.cod_fun
  where nome_dep is null ;
  
  #right join    
  select funcionarios.nome_fun, dependentes.nome_dep
  from funcionarios
  right join dependentes
  on funcionarios.cod_fun = dependentes.cod_fun;  
    
  #right excluding join    
  select funcionarios.nome_fun, dependentes.nome_dep
  from funcionarios
  right join dependentes
  on funcionarios.cod_fun = dependentes.cod_fun
  where nome_fun is null ;        


           
           

