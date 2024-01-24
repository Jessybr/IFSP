USE ALUNO_F164
GO

Create Table Shopping
(
Codigo_Shopping		VARCHAR(3)	NOT NULL,
Nome_Shopping		VARCHAR(40) NOT NULL,
Cep			VARCHAR(8)  NOT NULL,
Endereco_Shopping	VARCHAR(30) NOT NULL,
Bairro_Shopping		VARCHAR(30),       
Cidade_Shopping		VARCHAR(30),
Uf_Shopping			VARCHAR(2),
Fone_Adminstrativo	VARCHAR(13),
Constraint Pk_Shopping	PRIMARY KEY (Codigo_Shopping)
)

Create Table TB_Lojas
(
Codigo_Loja		VARCHAR(3),
Nome_Loja		VARCHAR(30) NOT NULL,
CNPJ_Loja		VARCHAR(17) UNIQUE,  
Cod_Shopping	VARCHAR(3),
Constraint Pk_Cod_loja PRIMARY KEY (Codigo_loja)
Constraint Fk_Cod_Shopping FOREIGN KEY(Cod_Shopping) REFERENCES Shopping(Codigo_Shopping)
)

Create Table TB_Cargo
(
Codigo_Cargo              VARCHAR(5),
Nome_do_Cargo             VARCHAR(5) NOT NULL,
Comissao_Cargo            REAL,
Constraint 
)

Create table Tb_Funcionarios
(
Nome_do_Funcionario     VARCHAR(40)   NOT NULL,
Sexo                    CHAR(1)       CHECK (Sexo IN ('F', 'M')),
Data_Nascimento         DATE,
CPF                     VARCHAR(12)   UNIQUE,
Cod_Cargo               VARCHAR(5), 
Cod_Loja                VARCHAR(3),
Data_Admissao           DATE          DEFAULT  CURRENT_DATE,
Constraint  Pk_cod_cargo FOREIGN KEY(Cod_Cargo) REFERENCES TB_Cargo(Codigo_Cargo)
Constraint Fk_cod_loja FOREIGN KEY(Cod_Loja) REFERENCES TB_Lojas(Codigo_Loja)
)

