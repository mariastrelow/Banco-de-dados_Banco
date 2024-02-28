#Nome Maria Eduarda Strelow
#Script BD_AgenciaBancaria - Versão 1.0

create database BD_Banco;
use BD_Banco;

create table Banco (
cod_ban int primary key not null auto_increment,
nome_ban varchar (200) not null
);

insert into Banco values (null, 'Caixa Econômica Federal');
insert into Banco values (null, 'Banco do Brasil');

create table Agencia (
cod_ag int primary key not null auto_increment,
numero_ag varchar (100) not null,
nome_ag varchar (100),
telefone_ag varchar (200),
cod_ban_fk int not null,
foreign key (cod_ban_fk) references Banco (cod_ban)
);

insert into Agencia values (null, '0951-2', 'Centro', '69 3421 1111', 2);
insert into Agencia values (null, '4402-1', 'Centro', '69 3422 2299', 2);
insert into Agencia values (null, '1824', 'Centro', '69 3423 1925', 1);
insert into Agencia values (null, '1920', 'Nova Brasilia', '69 3421 1122', 1);


create table Cliente (
cod_cli int primary key not null auto_increment,
nome_cli varchar (200) not null,
cpf_cli varchar (50) not null,
rg_cli varchar (100) not null,
sexo_cli varchar (1),
dataNasc_cli date not null,
idade_cli int,
renda_cli float not null,
endereco_cli varchar (300) not null,
email_cli varchar (300) not null,
telefone_cli varchar (200) not null
);

insert into Cliente values (null, 'Maria da Silva', '123.123.123-23', '1113322 sesdec/RO', 'F', '1990-10-10', 32, 2500.00, 'Rua das Flores', 'maria.silva@hotmail.com', '3423 3333'); 
insert into Cliente values (null, 'Roberto Carlos', '789.789.789-89', '889977 sesdec/RO', 'M', '1975-01-10', 53, 4990.00, 'Av. Costa', 'roberto.carlos@gmail.com', '8444 8899'); 
insert into Cliente values (null, 'Jane Pereira', '444.666.444-44', '005548 sesdec/RO', 'F', '1989-06-07', 34, 1850.50, 'Rua Presidente', 'jane.pereira@hotmail.com', '9977 8899'); 
insert into Cliente values (null, 'Clodoaldo Bragança', '654.456.654-65', '654658 sesdec/RO', 'F', '1991-10-12', 31, 9850.50, 'Av. Brasil', 'clodoaldo.bragança@gmail.com', '3423 5500'); 
insert into Cliente values (null, 'Livia de Souza', '333.444.666-98', '0033333 sesdec/RO', 'F', '1982-01-30', 40, 1100.00, 'Av. Ji-Parana', 'livia.souza@hotmail.com', '8498 9898'); 
insert into Cliente values (null, 'Joab da Silva', '159.425.456-77', '001215 sesdec/RO', 'M', '2000-10-01', 23, 4990.00, 'Av. Ji-Parana', 'joab.silva@hotmail.com', '69 8411 2321');
insert into cliente values (null, 'Rodrigo Hilbert', '123.445.888-99', '5592 sesdec', 'M', '1970-09-30', 53, 2500.00, 'Rua Dr. Luiz', 'rodrigo.hilbert@yahoo.com.br', '9944 4545');
insert into cliente values (null, 'João Eujácio Teixeira Júnior', '999.445.789-99', '978999992 sesdec', 'M', '1989-01-10', 34, 6000.00, 'Rua Silva Abreu', 'joao.eujacio@ifro.edu.br', '3421 1159');
insert into cliente values (null, 'Everton Feline', '123.123.888-99', '12392 sesdec', 'M', '1987-12-10', 35, 11500.00, 'Rua Alencar Vieira', 'everton.feline@gmail.com','69 84228811');
insert into cliente values (null, 'Igor de Souza Santos', '123.345.848-99', '43299892 sesdec', 'M', '1990-12-30', 33, 1000.00, 'Av. Brasil', 'igor.souza@gmail.com', '69 9977 7777');
insert into cliente values (null, 'Francisco Bezerra', '888.123.111-11', '213156 sesdec', 'M', '1965-01-30', 58, 3500.00, 'Rua Fim do Mundo', 'francisco.bezerra@ifro.edu.br', '69 3423 5502');


create table Conta_Corrente (
cod_cc int primary key not null auto_increment,
numero_cc int not null,
dataAbertura_cc date not null,
saldo_cc float not null,
valorLimite_cc float not null,
saldoComLimite_cc float not null,
taxa_mensal_cc float not null,
cod_ag_fk int not null,
cod_cli_fk int not null,
foreign key (cod_ag_fk) references Agencia (cod_ag),
foreign key (cod_cli_fk) references Cliente (cod_cli)
);

insert into Conta_Corrente values (null, 40650, '2009-01-01', 0.00, 100.00, 100.00, 10, 1, 1);
insert into Conta_Corrente values (null, 41897, '2009-01-30', 0.00, 200.00, 200.00, 20, 1, 2);
insert into Conta_Corrente values (null, 42487, '2010-06-06', 0.00, 200.00, 200.00, 5.9, 1, 3);
insert into Conta_Corrente values (null, 43456, '2011-04-21', 0.00, 100.00, 100.00, 30.50, 1, 4);
insert into Conta_Corrente values (null, 44787, '2012-12-31', 0.00, 100.00, 100.00, 40, 1, 5);
insert into Conta_Corrente values (null, 45650, '2013-01-01', 0.00, 100.00, 100.00, 60, 1, 6);
insert into Conta_Corrente values (null, 46897, '2014-01-30', 0.00, 300.00, 300.00, 2, 1, 7);
insert into Conta_Corrente values (null, 47487, '2014-06-06', 0.00, 200.00, 200.00, 10, 1, 8);
insert into Conta_Corrente values (null, 48456, '2015-04-21', 0.00, 100.00, 100.00, 20, 1, 9);
insert into Conta_Corrente values (null, 280541, '2016-12-31', 0.00, 100.00, 100.00, 30, 3, 10);
insert into Conta_Corrente values (null, 280191, '2016-12-31', 0.00, 100.00, 100.00, 40, 3, 11);

create table Deposito (
cod_dep int primary key not null auto_increment,
valor_dep float not null,
data_dep date not null,
tipo_dep varchar (100),
cod_cc_fk int not null,
foreign key (cod_cc_fk) references Conta_Corrente (cod_cc)
);

insert into Deposito values (null, 500.00, '2011-03-21', 'Dinheiro', 1);
insert into Deposito values (null, 50.00, '2011-10-09', 'Dinheiro', 4);
insert into Deposito values (null, 1500.00, '2011-12-20', 'Cheque', 3);
insert into Deposito values (null, 125.00, '2011-06-11', 'Dinheiro', 5);
insert into Deposito values (null, 490.00, '2012-12-02', 'Dinheiro', 2);
insert into Deposito values (null, 1010.00, '2012-12-11', 'Cheque', 6);
insert into Deposito values (null, 120.00, '2016-01-30', 'Dinheiro', 7);
insert into Deposito values (null, 550.00, '2016-06-30', 'Dinheiro', 9);
insert into Deposito values (null, 80.00, '2016-10-23', 'Dinheiro', 10);
insert into Deposito values (null, 1000.00, '2016-11-08', 'Cheque', 10);


create table Saque (
cod_saq int primary key not null auto_increment,
valor_saq float not null,
data_saq date not null,
local_saq varchar (100) not null,
hora_saq time,
cod_cc_fk int not null,
foreign key (cod_cc_fk) references Conta_Corrente (cod_cc)
);

insert into Saque values (null, 100.00, '2014-11-12', 'Caixa Eletrônico', sysdate(), 5);
insert into Saque values (null, 200.00, '2014-12-11', 'Agência', sysdate(), 1);
insert into Saque values (null, 120.00, '2015-12-02', 'Caixa Eletrônico', sysdate(), 2);
insert into Saque values (null, 100.00, '2015-01-03', 'Caixa Eletrônico', sysdate(), 5);
insert into Saque values (null, 200.00, '2015-01-30', 'Caixa Eletrônico', sysdate(), 1);
insert into Saque values (null, 120.00, '2015-02-25', 'Agência', sysdate(), 6);
insert into Saque values (null, 100.00, '2016-01-07', 'Agência', sysdate(), 1);
insert into Saque values (null, 200.00, '2016-01-08', 'Caixa Eletrônico', sysdate(), 4);
insert into Saque values (null, 120.00, '2016-03-20', 'Caixa Eletrônico', sysdate(), 2);
insert into Saque values (null, 100.00, '2016-03-23', 'Agência', sysdate(), 7);
insert into Saque values (null, 200.00, '2016-05-09', 'Caixa Eletrônico', sysdate(), 4);
insert into Saque values (null, 120.00, '2016-06-16', 'Agência', sysdate(), 6);
insert into Saque values (null, 100.00, '2016-08-21', 'Caixa Eletrônico', sysdate(), 9);
insert into Saque values (null, 200.00, '2016-09-06', 'Caixa Eletrônico',sysdate(), 8);
insert into Saque values (null, 120.00, '2016-10-20', 'Caixa Eletrônico', sysdate(), 10);
insert into Saque values (null, 122.22, '2016-10-20', 'Agência', sysdate(), 2);

create table Transferencia (
cod_trans int primary key not null auto_increment,
valor_trans float not null,
data_trans date not null,
descricao_trans varchar (100),
cod_cc_origem_fk int not null,
cod_cc_destino_fk int not null,
foreign key (cod_cc_origem_fk) references Conta_Corrente (cod_cc),
foreign key (cod_cc_destino_fk) references Conta_Corrente (cod_cc)
);

insert into Transferencia values (null, 5100.00, '2010-01-01', 'Pagamento Pensão', 4, 1);
insert into Transferencia values (null, 150.00, '2011-09-20', 'Compra Moto', 2, 3);
insert into Transferencia values (null, 50.00, '2013-10-23', 'Pagamento Divida', 3, 1);
insert into Transferencia values (null, 1000.00, '2014-12-29', 'Mesada Filho', 10, 3);
insert into Transferencia values (null, 660.00, '2016-11-30', 'Divida Banco', 1, 9);
insert into Transferencia values (null, 340.00, '2016-10-10', 'Pagamento', 7, 6);


create table Pagamento (
cod_pag int primary key not null auto_increment,
valor_pag float not null,
data_pag date not null,
tipo_pag varchar (100),
dataVencimento_pag date not null,
codigoBarras_pag varchar (300),
cod_cc_fk int not null,
foreign key (cod_cc_fk) references Conta_Corrente (cod_cc)
);

insert into Pagamento values (null, 300.00, '2015-10-20', 'Boleto', '2015-10-20', '1212312111131', 1);
insert into Pagamento values (null, 54.00, '2015-01-20', 'Convênio', '2015-01-20', '787987987987', 2);
insert into Pagamento values (null, 89.00, '2016-06-20', 'Boleto', '2016-06-22', '6544678979', 1);
insert into Pagamento values (null, 321.00, '2016-10-20', 'Convênio', '2016-10-20', '156546465454', 2);
insert into Pagamento values (null, 123.00, '2016-11-08', 'Boleto', '2016-11-09', '132131564587', 1);
 
#Exercicios

# 0 - Aumentar o valor do limite em 50% das contas que possuem o valor limite inferior a 200 e que tenham a taxa mensal entre
# 2 e 10 reais e que tenha a data de abertura inferior ao o ano de 2014.
select * from Conta_Corrente where (valorLimite_cc < 200) and (taxa_mensal_cc >= 2) and (taxa_mensal_cc <= 10) and (dataAbertura_cc < '2014-01-01');
update Conta_Corrente set valorLimite_cc = valorLimite_cc + (valorLimite_cc * 0.5)
where (valorLimite_cc < 200) and ((taxa_mensal_cc >= 2) and (taxa_mensal_cc <= 10)) and (dataAbertura_cc < '2014-01-01');

# 1 - Crie um update que mude o nome do cliente nº 5 para Lucas Matos
select * from Cliente where (cod_cli = 5);
update Cliente set nome_cli = 'Lucas Matos' where (cod_cli = 5);

# 2 - Crie um update que aumentar a renda em 20% dos clientes nascidos antes do ano 2000
select * from Cliente where (dataNasc_cli < '2000-01-01');
update Cliente set renda_cli = renda_cli + (renda_cli * 0.2) where (dataNasc_cli < '2000-01-01');

# 3 - Crie um update para diminuir a renda em 27% dos clientes homens com renda maior ou igual a 5000 reais;
select * from Cliente where (renda_cli >= 5000) and (sexo_cli = 'm');
update Cliente set renda_cli = renda_cli - (renda_cli * 0.27) where (renda_cli >= 5000) and (sexo_cli = 'm');

# 4 - Crie um update para alterar a idade do cliente nº 2 para 40 anos.
select * from Cliente where (cod_cli = 2);
update Cliente set idade_cli = 40 where (cod_cli = 2);

# 5 - Altere para 50 a idade dos clientes com ID entre 2 e 5 ou nascidos entre 1970 e 1980;
select * from Cliente  where (cod_cli >= 2) and (cod_cli <=5) or (dataNasc_cli >= '1970-01-01') and (dataNasc_cli <= '1980-01-01');
update Cliente set idade_cli = 50 where (cod_cli >= 2) and (cod_cli <=5) or (dataNasc_cli >= '1970-01-01') and (dataNasc_cli <= '1980-01-01');

# 6 - Diminua 500 reais na renda dos clientes nascidos entre 1980 e 2000 que tenha renda superior a 1000 reais e idade menos que 50;
select * from Cliente where ( dataNasc_cli >= '1980-01-01') and (dataNasc_cli <= '2000-01-01') and (renda_cli>= 1000) and (idade_cli < 50);
update Cliente set renda_cli = renda_cli - 500 where ( dataNasc_cli >= '1980-01-01') and (dataNasc_cli <= '2000-01-01') and (renda_cli>= 1000) and (idade_cli < 50);

# 7 - Aumente 1000 reais na renda dos clientes com idade entre 10 e 20 anos ou 40 e 60 anos.
select * from Cliente where (idade_cli >=10) and (idade_cli <=20) or (idade_cli >=40) and (idade_cli <=60);
update Cliente set renda_cli = renda_cli + 1000 where (idade_cli >=10) and (idade_cli <=20) or (idade_cli >=40) and (idade_cli <=60);

# 8 - Aumente a taxa mensal em 30% das conta corrente com saldo maior do que 500 reais e data de abertura no primeiro semestre de 2009;
select * from Conta_corrente where (saldo_cc >= 500) and (dataAbertura_cc >= '2009-01-01') and (dataAbertura_cc <= '2006-06-30');
update Conta_corrente set taxa_mensal_cc = taxa_mensal_cc + (taxa_mensal_cc * 30 /100) where (saldo_cc >= 500) and (dataAbertura_cc >= '2009-01-01') and (dataAbertura_cc <= '2006-06-30');

# 9 - Zere a taxa mensal das conta corrente com saldo superior ou igual a 1000 reais.
select * from Conta_Corrente where (saldo_cc >= 1000);
update Conta_Corrente set taxa_mensal_cc = 0 where (saldo_cc >= 1000);

# 10 - Aumente o valor do limite em 50% das contas com data de aberta anterior a 2014 ou com valor de limite inferior a 1000 reais.
select * from Conta_Corrente where (dataAbertura_cc < '2014-01-01') and (valorLimite_cc < 1000);
update Conta_Corrente set valorLimite_cc = valorLimite_cc + (valorLimite_cc * 50 /100) where (dataAbertura_cc < '2014-01-01') and (valorLimite_cc < 1000);