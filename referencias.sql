#referências: adicionando uma fk na tabela alunos
ALTER TABLE tbl_alunos ADD CONSTRAINT fk_cod_turma
FOREIGN KEY (cod_turma)
REFERENCES tbl_turma(cod_turma);

#adicinando cod_turma na tabela disciplinas 
ALTER TABLE tbl_disciplinas ADD CONSTRAINT fk_codigo_turma
FOREIGN KEY (cod_turma)
REFERENCES tbl_turma(cod_turma);

#adicinando cod_aluno na tabela de frequencia 
ALTER TABLE tbl_frequencia ADD CONSTRAINT fk_cod_aluno
FOREIGN KEY (cod_aluno)
REFERENCES tbl_alunos(cod_aluno);


#adicinando cod_disciplinas na tabela de frequencia 

ALTER TABLE tbl_frequencia ADD CONSTRAINT fk_cod_disciplinas
FOREIGN KEY (cod_disciplinas)
REFERENCES tbl_disciplinas(cod_disciplinas);


