CREATE TABLE Cliente(
	CPF CHAR(11) PRIMARY KEY,
	Nome VARCHAR(20),
	Email VARCHAR(20)
)

CREATE TABLE Produto(
	CodigoBarras VARCHAR(50) PRIMARY KEY,
	Nome VARCHAR(20),
	Preco DECIMAL(10,2)
);

CREATE TABLE Compra(
	CompraID SERIAL PRIMARY KEY,
	Cliente_CPF CHAR(11),
	Produto_CodigoBarras VARCHAR(50),
	DataCompra DATE,
	Quantiade INT,
	FOREIGN KEY (Cliente_CPF) REFERENCES Cliente(CPF),
	FOREIGN KEY (Produto_CodigoBarras) REFERENCES Produto(CodigoBarras)
);