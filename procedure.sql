#listagem de dados com uso de inner join

DELIMITER $
CREATE PROCEDURE listar_turmas_alunos()
BEGIN
    SELECT 
        tbl_alunos.nome AS nome_aluno, 
        tbl_alunos.telefone_aluno, 
        tbl_alunos.telefone_responsavel, 
        tbl_alunos.email, 
        tbl_alunos.data_nascimento,
        tbl_turma.sigla,
        tbl_turma.nome AS nome_turma
    FROM tbl_alunos
    INNER JOIN tbl_turma ON tbl_alunos.cod_turma = tbl_turma.cod_turma;
END $
DELIMITER  ;
CALL listar_turmas_alunos();

#LISTANDO UM ALUNO ESPECIFICO
DELIMITER $
CREATE PROCEDURE listar_dados_aluno(IN aluno_id INT)
BEGIN
    SELECT 
        tbl_alunos.nome AS nome_aluno, 
        tbl_alunos.telefone_aluno, 
        tbl_alunos.telefone_responsavel, 
        tbl_alunos.email, 
        tbl_alunos.data_nascimento,
        tbl_turma.sigla,
        tbl_turma.nome AS nome_turma
    FROM tbl_alunos
    INNER JOIN tbl_turma ON tbl_alunos.cod_turma = tbl_turma.cod_turma
    WHERE tbl_alunos.cod_aluno = aluno_id;
END $
DELIMITER ;
CALL listar_dados_aluno(3);

#CONTAGEM DE ALUNOS
DELIMITER $
CREATE PROCEDURE contagem_alunos(OUT total_alunos INT)
BEGIN
    SELECT COUNT(*) INTO total_alunos FROM tbl_alunos; 
END $
DELIMITER ;

CALL contagem_alunos(@total_alunos);
SELECT @total_alunos;
