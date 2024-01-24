USE ALUNO_F164
GO

Create Table Clientes {
    CodigoDoCliente         VARCHAR(4) UNIQUE,
    Endereco                VARCHAR(30) NOT NULL,
    Cidade                  VARCHAR(30),
    Cep			            VARCHAR(8)  NOT NULL,
    Uf			            VARCHAR(2),
    Pais                    VARCHAR(20),
    Telefone                VARCHAR(8),
    Fax                     VARCHAR(8),
    CONSTRAINT Pk_Cod_Cliente PRIMARY KEY (CodigoDoCliente)
}

Create Table Pedidos{
    NumeroPedido            VARCHAR(4) UNIQUE,
    CodigoCliente           VARCHAR(4),
    CodigoFuncionario       VARCHAR(5),
    DataDoPedido            DATE NOT NULL,
    DataDeEntrega           DATE NOT NULL,
    DataDeEnvio             DATE NOT NULL,
    Frete                   REAL NOT NULL,
    NomeDestinatario        VARCHAR(30) NOT NULL,
    EnderecoDestinatario    VARCHAR(30) NOT NULL,
    CidadeDeDestino         VARCHAR(30),
    CEPdeDestino            VARCHAR(8) NOT NULL,
    PaisDeDestino           VARCHAR(20),
    CONSTRAINT Pk_Num_Pedido PRIMARY KEY (NumeroPedido)
    CONSTRAINT Fk_CodCliente FOREIGN KEY (CodigoCliente) REFERENCES Clientes(CodigoDoCliente)
}

Create Table ItensPedidos{
    NumeroDoPedido VARCHAR(4),
    CodigoDoProduto VARCHAR(4),
    PrecoUnitario REAL NOT NULL,
    Quantidade VARCHAR(4) NOT NULL,
    Desconto REAL NULL,
    CONSTRAINT Fk_Cod_Produto FOREIGN KEY (CodigoDoProduto) REFERENCES Produtos(CodigoProduto)
    CONSTRAINT Fk_NumPedido FOREIGN KEY (NumeroDoPedido) REFERENCES Pedidos(NumeroPedido)
}

Create Table Produtos{
    CodigoProduto           VARCHAR(4) UNIQUE,
    NomeDoProduto           VARCHAR(25) NOT NULL,
    CodigoFornecedor        VARCHAR(6),
    CodigoCategoria         VARCHAR(3),
    QuantidadePorUnidade    REAL,
    PrecoUnitario           REAL NOT NULl,
    UnidadesEmEstoque       REAL NOT NULL,
    UnidadesPedidas         REAL NOT NULL,
    NivelDeEstoque          REAL NOT NULL,
    Descontinuado           VARCHAR(10),
    CONSTRAINT Pk_Cod_Produto PRIMARY KEY (CodigoProduto)
    CONSTRAINT Fk_Cod_Fornecedor FOREIGN KEY Fornecedores(CodigoDoFornecedor)
    CONSTRAINT Fk_Cod_Categoria FOREIGN KEY Categorias(CodigoDaCategoria)
}

Create Table Fornecedores{
    CodigoDoFornecedor      VARCHAR(6) UNIQUE,
    NomeDaEmpresa           VARCHAR(20) NOT NULL,
    NomeDoContato           VARCHAR(20),
    CargoDoContato          VARCHAR(15) NULL,
    Endereco                VARCHAR(30),
    Cidade                  VARCHAR(20),
    UF                      VARCHAR(2) NOT NULL,
    CEP                     VARCHAR(8) NOT NULL,
    Pais                    VARCHAR(20) NOT NULL,
    Telefone                VARCHAR(8),
    Fax                     VARCHAR(8),
    CONSTRAINT Pk_Cod_Fornecedor PRIMARY KEY (CodigoDoFornecedor)
}

Create Table Categorias{
    CodigoDaCategoria VARCHAR(3) UNIQUE,
    NomeDaCategoria VARCHAR(15) NOT NULL,
    Descricao VARCHAR(50),
    Figura VARCHAR(20),
    CONSTRAINT Pk_Cod_Categoria PRIMARY KEY (CodigoDaCategoria)
}

