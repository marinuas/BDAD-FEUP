PRAGMA foreign_keys= ON;

DROP TABLE IF EXISTS Pessoa;
DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS Funcionario;
DROP TABLE IF EXISTS Reserva;
DROP TABLE IF EXISTS Quarto;
DROP TABLE IF EXISTS EpocaDoAno;
DROP TABLE IF EXISTS TaxaDeOcupacao;
DROP TABLE IF EXISTS Servico;
DROP TABLE IF EXISTS ServicoDeQuarto;
DROP TABLE IF EXISTS TratamentoDeSpa;
DROP TABLE IF EXISTS TipoDeBebida;
DROP TABLE IF EXISTS Cartao;
DROP TABLE IF EXISTS Fatura;
DROP TABLE IF EXISTS QuantidadeDeServicosPrestados;
DROP TABLE IF EXISTS QuantidadeDeBebidas;
DROP TABLE IF EXISTS DescontoAplicado;
DROP TABLE IF EXISTS PrecoDeQuarto;

CREATE TABLE Pessoa
(	nif 		INTEGER PRIMARY KEY CHECK(nif>=100000000 AND nif<=999999999),
	nome 		STRING NOT NULL,
	email		STRING UNIQUE,
	nr_tel		varchar2(9) UNIQUE
);


CREATE TABLE Cliente
(	nif 		INTEGER REFERENCES Pessoa(nif) ON DELETE CASCADE ON UPDATE CASCADE,  
	data_nascimento	DATE NOT NULL,
	PRIMARY KEY(nif)
);



CREATE TABLE Funcionario
(	nif 		INTEGER  REFERENCES Pessoa(nif) ON DELETE CASCADE ON UPDATE CASCADE,
	cargo		STRING NOT NULL,
	PRIMARY KEY(nif)
);

CREATE TABLE Reserva
(	nr_reserva	INTEGER PRIMARY KEY,
	nr_quarto	INTEGER REFERENCES Quarto(nr_quarto) ON DELETE CASCADE ON UPDATE CASCADE,
	nif		INTEGER REFERENCES Pessoa(nif) ON DELETE CASCADE ON UPDATE CASCADE,
	data_inicio 	DATE NOT NULL,
	data_fim 	DATE NOT NULL CHECK(data_inicio<data_fim)
);

CREATE TABLE Quarto
(	nr_quarto	INTEGER PRIMARY KEY,
	tipo_quarto	STRING NOT NULL CHECK(tipo_quarto='solteiro' OR tipo_quarto='solteiro duplo' OR tipo_quarto='casal' OR tipo_quarto='familiar')
);

CREATE TABLE EpocaDoAno
(	data_inicio	DATE NOT NULL,
	data_fim	DATE NOT NULL CHECK(data_inicio<data_fim),
	PRIMARY KEY(data_inicio,data_fim)
);

CREATE TABLE TaxaDeOcupacao
(	percentagem	INTEGER PRIMARY KEY CHECK (percentagem>=0 AND percentagem<=100)
);

CREATE TABLE Servico
(	id_servico	INTEGER PRIMARY KEY,
	nome		STRING NOT NULL,
	preco		INTEGER NOT NULL CHECK(preco>=0),
	data		DATE NOT NULL
);

CREATE TABLE ServicoDeQuarto
(	id_servico	INTEGER REFERENCES Servico(id_servico) ON DELETE CASCADE ON UPDATE CASCADE,
	nome		STRING NOT NULL,
	preco		INTEGER NOT NULL,
	data		DATE NOT NULL,
	PRIMARY KEY(id_servico)
);


CREATE TABLE TratamentoDeSpa
(	id_servico	INTEGER REFERENCES Servico(id_servico) ON DELETE CASCADE ON UPDATE CASCADE,
	nome		STRING NOT NULL,
	preco		INTEGER NOT NULL,
	data		DATE NOT NULL,
	PRIMARY KEY(id_servico)
);
CREATE TABLE TipoDeBebida
(	id_servico	INTEGER REFERENCES Servico(id_servico) ON DELETE CASCADE ON UPDATE CASCADE,
	nome		STRING NOT NULL,
	preco		INTEGER NOT NULL,
	data		DATE NOT NULL,
	PRIMARY KEY(id_servico)
);



CREATE TABLE Cartao
(	id_cartao	INTEGER PRIMARY KEY,
	nif 		INTEGER REFERENCES Pessoa(nif) ON DELETE CASCADE ON UPDATE CASCADE,
	nr_pontos	INTEGER NOT NULL CHECK(nr_pontos>=0) 
);



CREATE TABLE Fatura
(	id_fatura	INTEGER PRIMARY KEY,
	id_cartao	INTEGER REFERENCES Cartao(id_cartao) ON DELETE CASCADE ON UPDATE CASCADE,
	data		DATE NOT NULL,
	total		INTEGER NOT NULL CHECK(total>=0)
);


CREATE TABLE QuantidadeDeServicosPrestados
(	id_fatura	INTEGER REFERENCES Fatura(id_fatura) ON DELETE CASCADE ON UPDATE CASCADE,
	id_servico	INTEGER REFERENCES Servico(id_servico) ON DELETE CASCADE ON UPDATE CASCADE,
	quantidade	INTEGER NOT NULL CHECK(quantidade>=0),
	PRIMARY KEY(id_fatura, id_servico)
);



CREATE TABLE QuantidadeDeBebidas
(	id_cartao	INTEGER REFERENCES Cartao(id_cartao) ON DELETE CASCADE ON UPDATE CASCADE,
	id_servico	INTEGER REFERENCES TipoDeBebida(id_servico) ON DELETE CASCADE ON UPDATE CASCADE,
	quantidade	INTEGER NOT NULL CHECK(quantidade>=0),
	PRIMARY KEY(id_cartao, id_servico)
);



CREATE TABLE DescontoAplicado
(	id_cartao	INTEGER REFERENCES Cartao(id_cartao) ON DELETE CASCADE ON UPDATE CASCADE,
	id_fatura	INTEGER REFERENCES Fatura(id_fatura) ON DELETE CASCADE ON UPDATE CASCADE,
	desconto	INTEGER NOT NULL CHECK(desconto>=0),
	PRIMARY KEY(id_cartao, id_fatura)
);



CREATE TABLE PrecoDeQuarto
(	nr_quarto	INTEGER REFERENCES Quarto(nr_quarto) ON DELETE CASCADE ON UPDATE CASCADE,
	data_inicio	DATE,
	data_fim	DATE,	
	percentagem	INTEGER REFERENCES TaxaDeOcupacao(percentagem) ON DELETE CASCADE ON UPDATE CASCADE,
	preco 		INTEGER NOT NULL CHECK(preco>=0),
	PRIMARY KEY(nr_quarto, data_inicio, data_fim, percentagem),
	FOREIGN KEY(data_inicio, data_fim) REFERENCES EpocaDoAno(data_inicio, data_fim) ON DELETE CASCADE ON UPDATE CASCADE
);