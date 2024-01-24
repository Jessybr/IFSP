create database Atividade6;

use Atividade6;

Create table Forma_Pagto
(
 FormaPagto  Varchar(1),
 Descricao_Pagto varchar(20),
 Primary Key (FormaPagto)  
);    

insert into Forma_Pagto (FormaPagto,Descricao_Pagto) 
value ('1','A vista Dinheiro');         
insert into Forma_Pagto (FormaPagto,Descricao_Pagto) 
value ('2','Débito no Cartão');  
insert into Forma_Pagto (FormaPagto,Descricao_Pagto) 
value ('3','Crédito no Cartão');

Create table Compras
(
    cod_cliente  varchar(4),
	Forma_Pagto   varchar(1),
	comprador     varchar(30),
	Data_Compra timestamp default CURRENT_TIMESTAMP(),
	Vl_compra   Decimal(13,2),
    constraint FK_Cliente_Compra foreign key (Forma_Pagto)
    references Forma_Pagto(FormaPagto)
    );
    
    
insert into Compras values ('C01','1','Ana Maria da Cruz',str_to_date('31-12-2022','%d-%m-%Y'),500);
insert into Compras values ('C01','1','Ana Maria da Cruz',str_to_date('23-03-2023','%d-%m-%Y') ,500);
insert into Compras values ('C01','2','Ana Maria da Cruz',str_to_date('24-03-2023','%d-%m-%Y'),1500);
insert into Compras values ('C01','3','Ana Maria da Cruz',str_to_date('20-02-2023','%d-%m-%Y'),2500);
insert into Compras values ('C01','3','Ana Maria da Cruz',str_to_date('25-01-2023','%d-%m-%Y'),500);

insert into Compras values ('C02','1', 'Maria de Sousa',str_to_date('23-02-2023','%d-%m-%Y'),7500);
insert into Compras values ('C02','1', 'Maria de Sousa',str_to_date('03-05-2023','%d-%m-%Y'),3500);
insert into Compras values ('C02','2', 'Maria de Sousa',str_to_date('03-05-2023','%d-%m-%Y'),5500);
insert into Compras values ('C02','2', 'Maria de Sousa',str_to_date('05-03-2023','%d-%m-%Y'),6500);
insert into Compras values ('C02','2', 'Maria de Sousa',str_to_date('23-02-2023','%d-%m-%Y'),7500);


insert into Compras values ('C03','1','Amelia da Paz',str_to_date('01-02-2023','%d-%m-%Y'),4500);
insert into Compras values ('C03','1','Amelia da Paz',str_to_date('02-02-2023','%d-%m-%Y'),600);
insert into Compras values ('C03','1','Amelia da Paz',str_to_date('21-03-2023','%d-%m-%Y'),780);
insert into Compras values ('C03','2','Amelia da Paz',str_to_date('04-04-2023','%d-%m-%Y'),1500);
insert into Compras values ('C03','2','Amelia da Paz',str_to_date('23-04-2023','%d-%m-%Y'),3500);
insert into Compras values ('C03','3','Amelia da Paz',str_to_date('25-04-2023','%d-%m-%Y'),7500);
insert into Compras values ('C03','3','Amelia da Paz',str_to_date('27-04-2023','%d-%m-%Y'),5500);
insert into Compras values ('C03','3','Amelia da Paz',str_to_date('30-01-2023','%d-%m-%Y'),8500);


insert into Compras values ('C04','2','Americo Antonio',str_to_date('03-01-2023','%d-%m-%Y'),12500);
insert into Compras values ('C04','2','Americo Antonio',str_to_date('23-02-2023','%d-%m-%Y'),1500);
insert into Compras values ('C04','2','Americo Antonio',str_to_date('25-02-2023','%d-%m-%Y'),15500);
insert into Compras values ('C04','3','Americo Antonio',str_to_date('26-02-2023','%d-%m-%Y'),22500);
insert into Compras values ('C04','3','Americo Antonio',str_to_date('23-03-2023','%d-%m-%Y'),32500);
insert into Compras values ('C04','3','Americo Antonio',str_to_date('30-03-2023','%d-%m-%Y'),25000);
insert into Compras values ('C04','3','Americo Antonio',str_to_date('30-03-2023','%d-%m-%Y'),500);
insert into Compras values ('C04','1','Americo Antonio',str_to_date('30-03-2023','%d-%m-%Y'),4500);
insert into Compras values ('C04','1','Americo Antonio',str_to_date('04-04-2023','%d-%m-%Y'),2500);
insert into Compras values ('C04','2','Americo Antonio',str_to_date('30-04-2023','%d-%m-%Y'),7500);

insert into Compras values ('C05','3', 'Elizabeth Mangaduba',str_to_date('30-03-2023','%d-%m-%Y'),8500);
insert into Compras values ('C05','3', 'Elizabeth Mangaduba',str_to_date('05-04-2023','%d-%m-%Y'),3500);

insert into Compras values ('C06','1','Mario Brosser',str_to_date('23-03-2023','%d-%m-%Y'),8900);
insert into Compras values ('C06','2','Mario Brosser',str_to_date('05-04-2023','%d-%m-%Y'),15500);
insert into Compras values ('C06','1','Mario Brosser',str_to_date('30-04-2023','%d-%m-%Y'),10500);

insert into Compras values ('C07','1','Carlos Magdo de Souza',str_to_date('23-02-2023','%d-%m-%Y'),7500);
insert into Compras values ('C07','2','Carlos Magdo de Souza',str_to_date('26-02-2023','%d-%m-%Y'),890);
insert into Compras values ('C07','3','Carlos Magdo de Souza',str_to_date('27-02-2023','%d-%m-%Y'),980);
insert into Compras values ('C07','2','Carlos Magdo de Souza',str_to_date('28-02-2023','%d-%m-%Y'),7500);
insert into Compras values ('C07','2','Carlos Magdo de Souza',str_to_date('30-03-2023','%d-%m-%Y'),4500);
insert into Compras values ('C07','1','Carlos Magdo de Souza',str_to_date('30-04-2023','%d-%m-%Y'),2500);


insert into Compras values ('C08','1', 'Bianca Souza',str_to_date('23-02-2023','%d-%m-%Y'),6500);
insert into Compras values ('C08','2', 'Bianca Souza',str_to_date('01-04-2023','%d-%m-%Y'),500);
insert into Compras values ('C08','3', 'Bianca Souza',str_to_date('05-04-2023','%d-%m-%Y'),9500);
insert into Compras values ('C08','3', 'Bianca Souza',str_to_date('09-04-2023','%d-%m-%Y'),15500);

insert into Compras values ('C09','1','Maria Silva e Sousa',str_to_date('23-01-2023','%d-%m-%Y'),7500);
insert into Compras values ('C09','1','Maria Silva e Sousa',str_to_date('03-03-2023','%d-%m-%Y'),17500);
insert into Compras values ('C09','1','Maria Silva e Sousa',str_to_date('04-03-2023','%d-%m-%Y'),37500);
insert into Compras values ('C09','1','Maria Silva e Sousa',str_to_date('13-04-2023','%d-%m-%Y'),550);
insert into Compras values ('C09','1','Maria Silva e Sousa',str_to_date('23-04-2023','%d-%m-%Y'),8500);

insert into Compras values ('C10','1', 'Amalia Suzete da Costa',str_to_date('03-01-2023','%d-%m-%Y'),2500);

insert into Compras values ('C11','1','Maria Catarina da silva',str_to_date('13-02-2023','%d-%m-%Y'),3500);

insert into Compras values ('C12','3', 'Catarina do Branco',str_to_date('17-04-2023','%d-%m-%Y'),2500);

insert into Compras values ('C13','3','Juca Xaves',str_to_date('13-01-2023','%d-%m-%Y'),3700);
insert into Compras values ('C13','3','Juca Xaves',str_to_date('23-04-2023','%d-%m-%Y'),3700);

insert into Compras values ('C14','1','Mariano Chaves',str_to_date('30-04-2023','%d-%m-%Y'),3700);
insert into Compras values ('C14','1','Mariano Chaves',str_to_date('03-05-2023','%d-%m-%Y'),3700);



SELECT C.cod_cliente, C.comprador, C.Data_Compra, FP.Descricao_Pagto, C.Vl_compra FROM Compras C JOIN Forma_Pagto FP ON C.Forma_Pagto = FP.FormaPagto
WHERE C.Vl_compra BETWEEN 3000.00 AND 5500.00 ORDER BY C.comprador ASC;


SELECT C.cod_cliente, C.comprador, C.Data_Compra, FP.Descricao_Pagto, C.Vl_compra FROM Compras C JOIN Forma_Pagto FP ON C.Forma_Pagto = FP.FormaPagto
WHERE C.Vl_compra BETWEEN 6000.00 AND 15000.00 ORDER BY C.Vl_compra ASC;

SELECT C.* FROM Compras C JOIN Forma_Pagto FP ON C.Forma_Pagto = FP.FormaPagto
WHERE FP.Descricao_Pagto = 'A vista Dinheiro';

SELECT C.* FROM Compras C JOIN Forma_Pagto FP ON C.Forma_Pagto = FP.FormaPagto
WHERE FP.Descricao_Pagto IN ('A vista Dinheiro', 'Débito no Cartão');

SELECT FP.Descricao_Pagto, SUM(C.Vl_compra) AS Total_Compra FROM Compras C JOIN Forma_Pagto FP ON C.Forma_Pagto = FP.FormaPagto GROUP BY FP.Descricao_Pagto;

SELECT * FROM Compras WHERE comprador LIKE 'A%';

SELECT * FROM Compras WHERE comprador LIKE '%A' ORDER BY comprador DESC;

SELECT * FROM Compras WHERE comprador LIKE 'Am%' ORDER BY Vl_compra DESC;

SELECT * FROM Compras WHERE comprador LIKE 'Am_l%';

SELECT * FROM Compras WHERE comprador LIKE '%D%';

SELECT * FROM Compras WHERE comprador LIKE 'A%' OR comprador LIKE 'E%' ORDER BY comprador ASC;

SELECT * FROM Compras WHERE comprador REGEXP '^(A|B|C|D|E)';

SELECT * FROM Compras WHERE (comprador LIKE 'A%' OR comprador LIKE 'C%' OR comprador LIKE 'E%') AND Vl_compra > 5000.00;

SELECT COUNT(*) AS Quantidade_Compras FROM Compras;

SELECT SUM(Vl_compra) AS Total_Compras FROM Compras;

SELECT MAX(Vl_compra) AS Maior_Compra FROM Compras;

SELECT MIN(Vl_compra) AS Menor_Compra FROM Compras;

SELECT AVG(Vl_compra) AS Media_Compras FROM Compras;

SELECT MAX(Vl_compra) AS Maior_Compra_C02 FROM Compras WHERE cod_cliente = 'C02';

SELECT cod_cliente, MAX(Vl_compra) AS Maior_Compra_Cliente FROM Compras GROUP BY cod_cliente;

SELECT C.cod_cliente, C.comprador, MAX(C.Vl_compra) AS Maior_Compra_Cliente FROM Compras C GROUP BY C.cod_cliente, C.comprador;

SELECT C.cod_cliente, C.comprador, COUNT(*) AS Quantidade_Compras, SUM(C.Vl_compra) AS Total_Compras FROM Compras C GROUP BY C.cod_cliente, C.comprador
ORDER BY C.cod_cliente ASC;

SELECT cod_cliente, comprador, COUNT(*) AS Quantidade_Compras, MAX(Vl_compra) AS Maior_Compra, MIN(Vl_compra) AS Menor_Compra, SUM(Vl_compra) AS Total_Compras, 
AVG(Vl_compra) AS Media_Compra FROM Compras GROUP BY cod_cliente, comprador ORDER BY cod_cliente ASC;

SELECT FP.Descricao_Pagto, SUM(C.Vl_compra) AS Total_Compra_Por_Tipo FROM Compras C JOIN Forma_Pagto FP ON C.Forma_Pagto = FP.FormaPagto 
GROUP BY FP.Descricao_Pagto;

SELECT FP.Descricao_Pagto, SUM(C.Vl_compra) AS Total_Compra_Por_Tipo FROM Compras C JOIN Forma_Pagto FP ON C.Forma_Pagto = FP.FormaPagto WHERE C.cod_cliente = 'C03'
GROUP BY FP.Descricao_Pagto;

SELECT FP.Descricao_Pagto, SUM(C.Vl_compra) AS Total_Compra_Cartao FROM Compras C JOIN Forma_Pagto FP ON C.Forma_Pagto = FP.FormaPagto WHERE FP.Descricao_Pagto IN ('Débito no Cartão', 'Crédito no Cartão') 
GROUP BY FP.Descricao_Pagto;

SELECT COUNT(*) AS Quantidade_Compras_Debito, SUM(Vl_compra) AS Total_Compra_Debito FROM Compras WHERE Forma_Pagto = '2';

SELECT COUNT(DISTINCT cod_cliente) AS Quantidade_Clientes_Credito, SUM(Vl_compra) AS Total_Compra_Credito FROM Compras WHERE Forma_Pagto = '3';

SELECT cod_cliente, COUNT(*) AS Quantidade_Compras_Credito, AVG(Vl_compra) AS Media_Compra_Credito, SUM(Vl_compra) AS Total_Compra_Credito FROM Compras
WHERE Forma_Pagto = '3' GROUP BY cod_cliente;

SELECT cod_cliente, MAX(Vl_compra) AS Maior_Compra, MIN(Vl_compra) AS Menor_Compra FROM Compras GROUP BY cod_cliente;


SELECT * FROM Compras WHERE comprador LIKE '% Souza' OR comprador LIKE '% Sousa';
