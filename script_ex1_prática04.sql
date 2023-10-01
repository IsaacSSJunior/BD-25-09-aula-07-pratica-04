CREATE DATABASE sprint1;
USE sprint1;

CREATE TABLE Professor (
idProfessor INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (50),
sobrenome VARCHAR (30),
especialidade1 VARCHAR (40),
especialidade2 VARCHAR (40)
)AUTO_INCREMENT = 100;

INSERT INTO Professor (nome,sobrenome,especialidade1,especialidade2) VALUES
('Vivian','Silva','Banco de Dados','Fisioterapia'),
('Ellen','Rocha','Matemática Aplicada','Estatística'),
('Caio','Souza','Lógica de programação','Matemática'),
('João','Pedro','Lógica de programação','Matemática Aplicada'),
('Mônica','Herrero','Pscologia','Matemática'),
('Marise','Miranda','Lógica de programação','Cálculo');

CREATE TABLE Disciplina (
idDisc INT PRIMARY KEY AUTO_INCREMENT,
nomeDisc VARCHAR(45),
fkProfessor INT, CONSTRAINT fkProf FOREIGN KEY(fkProfessor) REFERENCES Professor(idProfessor) 
);

INSERT INTO Disciplina (nomeDisc,fkProfessor) VALUES
	('Matemática', 101),
	('Algoritmo',102),
	('Banco de Dados',100),
	('Pscologia', 104),
	('Cálculo',101);

SELECT * FROM Professor JOIN Disciplina
ON idProfessor = fkProfessor;

SELECT nome AS Professor, nomeDisc AS Disciplina FROM Professor JOIN Disciplina
ON idProfessor = fkProfessor;

SELECT * FROM Professor JOIN Disciplina
ON idProfessor = fkProfessor
WHERE sobrenome = 'Silva';

SELECT especialidade1 AS 'Especialidade 1', nomeDisc AS 'Disciplina' FROM Professor 
JOIN Disciplina ON idProfessor = fkProfessor
WHERE idPRofessor = 100 ORDER BY especialidade1;
  



