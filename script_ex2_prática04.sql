CREATE DATABASE sprint2;
USE sprint2;

CREATE TABLE tbCurso (
idCurso INT PRIMARY KEY AUTO_INCREMENT,
nomeCurso VARCHAR (45),
siglaCurso CHAR (3),
coordenadorCurso VARCHAR (45) 
)AUTO_INCREMENT = 100;

ALTER TABLE tbCurso ADD CONSTRAINT chkCurso CHECK (siglaCurso IN ('ADS', 'SIS','CCO'));

INSERT INTO tbCurso (nomeCurso,siglaCurso, coordenadorCurso) VALUES
('Análise & Desenvolvimento de Sistemas','ADS', 'Gerson Santos'),
('Sistemas da Informação','SSI','Alexa Barreira'),
('Ciências da Computação','CCO','Marise Miranda');

CREATE TABLE tbAluno (
raAluno CHAR(8) PRIMARY KEY,
nomeAluno VARCHAR(45),
sobrenomeAluno VARCHAR (40),
fkCurso INT, CONSTRAINT fkCurs FOREIGN KEY(fkCurso) REFERENCES tbCurso(idCurso) 
);

INSERT INTO tbAluno VALUES
	('01232150', 'Isaac', 'Souza', 100),
	('01232030','Kaique','Volpe', 100),
	('01231940','Diego', 'Souza', 101),
	('01232021', 'Leornado', 'Souza', 102),
	('01232020', 'Guilherme', 'Neves', 102);

SELECT * FROM tbCurso JOIN tbAluno ON idCurso = fkCurso;

SELECT raAluno, nomeAluno, sobrenomeAluno, nomeCurso, coordenadorCurso from tbAluno join tbCurso on fkCurso = idCurso
where nomeAluno LIKE '%o' AND sobrenomeAluno LIKE 'S%';




