CREATE DATABASE atv4_bd3_sara;

USE atv4_bd3_sara;


CREATE TABLE tbl_alunos (
    cod_aluno INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    cod_turma INT(10) UNSIGNED NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    rg VARCHAR(9) NOT NULL, 
    telefone_aluno VARCHAR(11),
    telefone_responsavel VARCHAR(11),
    email VARCHAR(100),
    data_nascimento TIMESTAMP(6)
);


CREATE TABLE tbl_turma (
    cod_turma INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    sigla VARCHAR(10) NOT NULL,
    nome VARCHAR(100) NOT NULL
);


CREATE TABLE tbl_disciplinas (
    cod_disciplinas INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    cod_turma INT(10) UNSIGNED NOT NULL,
    sigla VARCHAR(50)
   
);

CREATE TABLE tbl_frequencia (
    cod_aluno INT(10) UNSIGNED NOT NULL,
    cod_disciplinas INT(10) UNSIGNED NOT NULL,
    data_chamada TIMESTAMP(6),
    frequencia DECIMAL(2,2)
    );
