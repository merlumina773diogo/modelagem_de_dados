----------------------------------------------------
-- CRIAÇÃO DAS TABELAS
----------------------------------------------------

CREATE TABLE funcionario (
    id_funcionario INTEGER PRIMARY KEY,
    nome_funcionario VARCHAR(30),
    ra VARCHAR(30),
    endereco VARCHAR(50),
    email VARCHAR(30),
    telefone CHAR(15),
    sexo CHAR(1),
    dt_admissao DATE
);

CREATE TABLE departamento (
    id_departamento INTEGER PRIMARY KEY,
    nome_departamento VARCHAR(30),
    responsavel VARCHAR(20),
    sigla VARCHAR(4),
    ramal VARCHAR(6),
    id_funcionario INTEGER,
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario)
);

----------------------------------------------------
-- INSERÇÃO DE DADOS (3 REGISTROS EM CADA TABELA)
----------------------------------------------------

INSERT INTO funcionario (id_funcionario, nome_funcionario, ra, endereco, email, telefone, sexo, dt_admissao) VALUES
(1,'Maria Silva','41750973047','Rua A, 100','maria@gmail.com','65999990000','F','2024-01-10'),
(2,'João Pereira','41750973048','Rua B, 200','joao@gmail.com','65999991111','M','2023-11-03'),
(3,'Ana Costa','41750973049','Rua C, 300','ana@gmail.com','65999992222','F','2022-05-22');

INSERT INTO departamento (id_departamento, nome_departamento, responsavel, sigla, ramal, id_funcionario) VALUES
(1,'Financeiro','Carlos Souza','FIN','1001',1),
(2,'RH','Fernanda Lima','RH','1002',2),
(3,'Compras','Rafael Duarte','CP','1003',3);

----------------------------------------------------
-- ALTERAÇÕES
----------------------------------------------------

ALTER TABLE funcionario ADD COLUMN salario NUMERIC(10,2);

UPDATE funcionario SET salario = 5000;

----------------------------------------------------
-- CONSULTAS DE TESTE
----------------------------------------------------

SELECT * FROM funcionario;
SELECT * FROM departamento;

SELECT 
    d.nome_departamento,
    f.nome_funcionario
FROM departamento d
JOIN funcionario f ON f.id_funcionario = d.id_funcionario;
