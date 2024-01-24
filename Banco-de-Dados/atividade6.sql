go

Create table Compras
(
    cod_cliente  varchar(4),
	Tipo_Compra  varchar(1),
	comprador  varchar(30),
	Data_Compra datetime default getdate(),
	Vl_compra money,
)

set language 'português'

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

SELECT * from Compras where Vl_compra >= 3000 and Vl_compra <= 5500
SELECT * from Compras where Vl_compra >= 6000 and Vl_compra <= 15000
SELECT * from Compras where Tipo_Compra = 1
SELECT * from Compras;
SELECT * from Compras where comprador like 'A%'
SELECT * from Compras where comprador like 'A%' order by comprador desc
SELECT * from Compras where comprador like 'Am%' order by Vl_compra desc
SELECT * from Compras where comprador like '%Am%_%l%'
SELECT * from Compras where comprador like '%Sou_a%'
SELECT * from Compras where comprador like '%D%'
SELECT * from Compras where comprador like 'A%' or comprador like 'E%' ORDER BY comprador asc
SELECT * from Compras where comprador like 'A%' or comprador like 'B%' or comprador like 'C%' or comprador like 'D%' or comprador like 'E%'
SELECT * from Compras where (comprador like 'A%' or comprador like 'C%' or comprador like 'E%') and Vl_compra >= 5000
SELECT count(*) as 'quantidade' from Compras
SELECT sum(Vl_compra) as 'total' from Compras
SELECT MAX(Vl_compra) as 'Maior Compra' from Compras
SELECT MIN(Vl_compra) as 'Menor Compra' from Compras
SELECT AVG(Vl_compra) as 'Média de Compras' from Compras
SELECT MAX(Vl_compra) as 'Maior Compra' from Compras where cod_cliente = 'C02'
SELECT cod_cliente, MAX(Vl_compra) as 'Maior Compra' from Compras group by cod_cliente
SELECT cod_cliente, comprador, MAX(Vl_compra) as 'Maior Compra' from Compras group by cod_cliente, comprador
SELECT cod_cliente, comprador, COUNT(cod_cliente) as 'Total de Compras', SUM(Vl_compra) as 'Quantidade de Compras' from Compras group by cod_cliente, comprador order by comprador asc
SELECT cod_cliente, comprador, 