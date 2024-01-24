
                 Atividade 6 
 
 Criar as tabelas e inserir os dados e aplicar os comandos propostos



-- Tabela Compras

Create table Compras
(
    cod_cliente  varchar(4),
	Tipo_Compra  varchar(1),
	comprador  varchar(30),
	Data_Compra datetime default getdate(),
	Vl_compra money,
    )

/* obs. tipo de compra 
         1 a vista Dinheiro
         2 a vista Cartão
         3 a prazo 
         
 */        
insert into Compras values ('C01','1','Ana Maria da Cruz','23/03/2021' ,500)
insert into Compras values ('C01','2','Ana Maria da Cruz','24/03/2021',1500)
insert into Compras values ('C01','3','Ana Maria da Cruz','20/02/2021',2500)
insert into Compras values ('C01','3','Ana Maria da Cruz','25/01/2021',500)

insert into Compras values ('C02','1', 'Maria de Sousa','23/02/2021',7500)
insert into Compras values ('C02','1', 'Maria de Sousa','03/05/2021',3500)
insert into Compras values ('C02','2', 'Maria de Sousa','03/05/2021',5500)
insert into Compras values ('C02','2', 'Maria de Sousa','05/03/2021',6500)
insert into Compras values ('C02','2', 'Maria de Sousa','23/02/2021',7500)


insert into Compras values ('C03','1','Amelia da Paz','01/02/2021',4500)
insert into Compras values ('C03','1','Amelia da Paz','02/02/2021',600)
insert into Compras values ('C03','1','Amelia da Paz','21/03/2021',780)
insert into Compras values ('C03','2','Amelia da Paz','04/04/2021',1500)
insert into Compras values ('C03','2','Amelia da Paz','23/04/2021',3500)
insert into Compras values ('C03','3','Amelia da Paz','25/04/2021',7500)
insert into Compras values ('C03','3','Amelia da Paz','27/04/2021',5500)
insert into Compras values ('C03','3','Amelia da Paz','30/01/2021',8500)


insert into Compras values ('C04','2','Americo Antonio','03/01/2021',12500)
insert into Compras values ('C04','2','Americo Antonio','23/02/2021',1500)
insert into Compras values ('C04','2','Americo Antonio','25/02/2021',15500)
insert into Compras values ('C04','3','Americo Antonio','26/02/2021',22500)
insert into Compras values ('C04','3','Americo Antonio','23/03/2021',32500)
insert into Compras values ('C04','3','Americo Antonio','30/03/2021',25000)
insert into Compras values ('C04','3','Americo Antonio','30/03/2021',500)
insert into Compras values ('C04','1','Americo Antonio','30/03/2021',4500)
insert into Compras values ('C04','1','Americo Antonio','04/04/2021',2500)
insert into Compras values ('C04','2','Americo Antonio','30/04/2021',7500)

insert into Compras values ('C05','3', 'Elizabeth Mangaduba','30/03/2021',8500)
insert into Compras values ('C05','3', 'Elizabeth Mangaduba','05/04/2021',3500)

insert into Compras values ('C06','1','Mario Brosser','23/03/2021',8900)
insert into Compras values ('C06','2','Mario Brosser','05/04/2021',15500)
insert into Compras values ('C06','1','Mario Brosser','30/04/2021',10500)

insert into Compras values ('C07','1','Carlos Magdo de Souza','23/02/2021',7500)
insert into Compras values ('C07','2','Carlos Magdo de Souza','26/02/2021',890)
insert into Compras values ('C07','3','Carlos Magdo de Souza','27/02/2021',980)
insert into Compras values ('C07','2','Carlos Magdo de Souza','28/02/2021',7500)
insert into Compras values ('C07','2','Carlos Magdo de Souza','30/03/2021',4500)
insert into Compras values ('C07','1','Carlos Magdo de Souza','30/04/2021',2500)


insert into Compras values ('C08','1', 'Bianca Souza','23/02/2021',6500)
insert into Compras values ('C08','2', 'Bianca Souza','01/04/2021',500)
insert into Compras values ('C08','3', 'Bianca Souza','05/04/2021',9500)
insert into Compras values ('C08','3', 'Bianca Souza','09/04/2021',15500)


insert into Compras values ('C09','1','Maria Silva e Sousa','23/01/2021',7500)
insert into Compras values ('C09','1','Maria Silva e Sousa','03/03/2021',17500)
insert into Compras values ('C09','1','Maria Silva e Sousa','04/03/2021',37500)
insert into Compras values ('C09','1','Maria Silva e Sousa','13/04/2021',550)
insert into Compras values ('C09','1','Maria Silva e Sousa','23/04/2021',8500)

insert into Compras values ('C10','1', 'Amalia Suzete da Costa','03/01/2021',2500)

insert into Compras values ('C11','1','Maria Catarina da silva','13/02/2021',3500)

insert into Compras values ('C12','3', 'Catarina do Branco','17/04/2021',2500)

insert into Compras values ('C13','3','Juca Xaves','13/01/2021',3700)
insert into Compras values ('C13','3','Juca Xaves','23/04/2021',3700)

insert into Compras values ('C14','1','Mariano Chaves','30/04/2009',3700)
insert into Compras values ('C14','1','Mariano Chaves','03/05/2021',3700)




-- 1) Selecionar os registros com valores de Compras de R$ 3000.00 a R$ 5500.00 ordem crescente de nome


-- 2) Selecionar os registros com valores de Compras entre R$ 6000.00 a R$ 15000.00 



-- 3) Selecionar os registros com Compras a vista



-- 4) Selecionar os registros das Compras a vista dinheiro e a prazo



-- 5) Selecionar todos os dados dos compradores cujo nome iniciam com  'A'


-- 6) Selecionar todos os dados dos compradores cujo nome termiman com  'A' em ordem descrecente
      

-- 7) Selecionar todos os dados dos compradores cujo nome começam com  'Am' em ordem descrecente de compras


-- 8) Selecionar todos os dados dos compradores cujo nome começam com  'Am' tenham qualquer caracter na 3ª posição e l na 4ª posição
    

-- 9) Selecionar todos os dados dos compradores com sobrenome souza ou sousa


-- 10) Selecionar todos os dados dos compradores que tenham a letra 'D' no nome (em qualquer posição)


-- 11) Selecionar todos os dados dos compradores que tenham a inicam com 'A' OU 'E' em ordem alfabética
  


-- 12) Selecionar todos os dados dos compradores que tenham a inicam com 'A', 'B', 'C' ,'D' OU 'E'


-- 13) Selecionar todos os dados dos compradores que tenham a inicam com 'A','C',OU 'E' e tenhan compras acima de R$ 5000.00 


------------------------------------------------
-- 14) Selecionar a quantidade de compras 
   

-- 15)  Selecionar o total das compras 


-- 16)  Selecionar o valor da maior compra 
  
-- 17)  Selecionar o valor da menor compra 
  
  
-- 18)  Selecionar a médias das compra 
  
  
  
-- 19) Selecionar o  valor da maior compra do cliente 'C02' 

   
   
   
 -- 20)  Selecionar o codigo e   valor da maior compra compra de cada cliente

   
 -- 21) Selecionar o codigom nome  e   valor da maior compra compra de cada cliente
      
   
  
 -- 22) Selecionar o codigo, nome,  quantidade de compras e total de compras de cada cliente em ordem crescente de comprador
  


 -- 23) Selecionar o codigo, nome, quantidade , maior , menor ,  total  e média de compras de cada cliente em ordem crescente de codigo do comprador



-- 24) Selecionar o tipo e total de compras por tipo de compra


-- 25) Selecionar o tipo e total de compras por tipo de compra do comprador 'c03'



-- 26) Selecionar o tipo e total de compras para as compras  com cartão 

            
-- 26.5 Selecionar a quantidade de compras  a prazo



--27) Selecionar a quantidade de clientes que compraram a prazo


    


--28) Selecionar codigo do cliente e a quantidade de compras a prazo por cliente



--29) Selecionar a maior e a menor compra de cada cliente
  
 
 
-- 30) Selecionar o código, maior e a menor compra de cada cliente
   
   



 
 
 
 

