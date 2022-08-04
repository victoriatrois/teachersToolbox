-- Ajuste questões de segurança, incluindo usuários, papéis e permissões.
CREATE ROLE 'aluno', 'professor-usuario', 'professor-colaborador', 'administrador';

GRANT INSERT, UPDATE, SELECT ON teachersToolbox.MATERIAL TO 'aluno';
GRANT SELECT ON teachersToolbox.MATERIAL TO 'professor-usuario';
GRANT INSERT, UPDATE, SELECT ON teachersToolbox.MATERIAL TO 'professor-colaborador';
GRANT ALL ON teachersToolbox.* to 'administrador';

CREATE USER 'victoriaTrois'@'localhost';
GRANT 'administrador' TO 'victoriaTrois'@'localhost';

CREATE USER 'carolinaC'@'localhost';
GRANT 'professor-administrador' TO 'carolinaC'@'localhost';

CREATE USER 'brunaP'@'localhost';
GRANT 'professor-usuario' TO 'brunaP'@'localhost';

CREATE USER 'anaHoy'@'localhost';
GRANT 'professor-usuario' TO 'brunaP'@'localhost';

-- Crie visões no banco de dados para consultas mais frequentes.

-- Visualizar total de materiais
CREATE VIEW totalMateriais as
select count(MATERIAL.ID) as totalDeMateriais from MATERIAL;

select * from totalMateriais;

-- Visualizar usuários com assinatura paga
CREATE VIEW assinaturasPagas as
select c.usuarioNome as temContaPREMIUM
FROM CADASTRO c, USUARIO u, ASSINATURA a
WHERE c.usuarioID = u.usuarioID AND
a.tipoAssinaturaID = 2;

select * from assinaturasPagas;

/* 
 * Crie ao menos uma stored function, um stored procedure ou um trigger para o banco de dados,
 * selecionando uma funcionalidade que seja adequada para tanto.
 */
-- Procedimento que seleciona os materiais do tipo exercício
DELIMITER //
	CREATE PROCEDURE selecionaExercicio()
    BEGIN
		SELECT materialTitulo from MATERIAL
        WHERE materialTipoID = 2;
	END//
DELIMITER ;

-- Chamada para o procedimento
CALL selecionaExercicio();

-- Trigger que criptografa a senha
DELIMITER //
	CREATE TRIGGER criptografaSenha BEFORE INSERT
	ON usuario FOR EACH ROW
	BEGIN
		UPDATE USUARIO
		SET SENHA = md5(new.SENHA);
	END //	
DELIMITER ;
 
 -- Crie ao menos um índice composto para uma das tabelas.
 CREATE INDEX login ON USUARIO(login);
 CREATE INDEX codigoBNCC ON HABILIDADE(habilidadeCodigo);