INSERT INTO tbl_turma (sigla, nome) VALUES
('Tm1', 'Turma 1'),
('Tm2', 'Turma 2');

#inserindo os alunos da turma 1 e 2
INSERT INTO tbl_alunos (cod_turma, nome, cpf, rg, telefone_aluno, telefone_responsavel, email, data_nascimento) VALUES
(1, 'Sara', '12456378342', '123475189', '987124321', '912345321', 'sara@gmail.com', '2004-12-02'),
(1, 'Laura', '2374889012', '234567147', '276543219', '877943219', 'laqura@gmail.com', '204-03-04'),
(1, 'Pedro', '78567890123', '345558901', '712332198', '761782198', 'pedro@gmail.com', '2004-03-11'),
(1, 'Paulo', '45678457823', '451465012', '654001287', '014748721', 'laulo@gmail.com', '2004-05-04'),
(1, 'Joãos', '56447782345', '561230123', '540149876', '193749876', 'joão@gmail.com', '2004-04-30'),
(2, 'Julio', '678901123', '789401234', '445678765', '001138765', 'julio@gmail.com', '2004-10-06'),
(2, 'Karina', '147981234567', '789002345', '320001654', '7441987654', 'karina@gmail.com', '2004-07-11'),
(2, 'Carlos', '79012347678', '890143456', '219876543', '349876543', 'carlos@gmail.com', '2004-02-18'),
(2, 'Marta', '78923456789', '901234145', '100265432', '198766652', 'marta@gmail.com', '2004-06-09'),
(2, 'Jaremias', '01234547890', '0120012678', '987789321', '987123451', 'jeremias@gmail.com.com', '2004-10-29');

#inserindo disciplinas
INSERT INTO tbl_disciplinas (cod_turma, sigla) VALUES
(1, 'Ed.Física'),
(1, 'Artes'),
(1, 'Biologia'),
(1, 'Literatura'),
(2, 'Filosofia'),
(2, 'Sociologia'),
(2, 'Química'),
(2, 'Matemática');