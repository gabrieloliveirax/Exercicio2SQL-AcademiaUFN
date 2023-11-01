CREATE TABLE Professor(
	ID SERIAL PRIMARY KEY,
	Nome VARCHAR(20),
	AreaEspecializada VARCHAR(20),
	CodigoIdentificacao INT
);

CREATE TABLE Aluno(
	Matricula SERIAL PRIMARY KEY,
	Nome VARCHAR(20),
	DataNascimento DATE
);

CREATE TABLE Orientecao(
	Professor_ID INT,
	Aluno_Matricula INT,
	FOREIGN KEY (Professor_ID) REFERENCES Professor(ID),
	FOREIGN KEY (Aluno_Matricula) REFERENCES Aluno(Matricula)
);