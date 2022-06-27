USE `teachersToolbox` ;

INSERT INTO `teacherstoolbox`.`TIPO_ASSINATURA` (`tipoDescricao`) VALUES
('PREMIUM'),
('REGULAR');
select * from `TIPO_ASSINATURA`;

INSERT INTO `teacherstoolbox`.`MATERIAL_TIPO`(`tipoDescricao`) VALUES
('plano de aula'),
('exercício');
select * from `MATERIAL_TIPO`;

INSERT INTO `teacherstoolbox`.`ROLE`(`roleNome`,`roleDescricao`) VALUES
('', ''),
('', ''),
('', ''),
('', '');
SELECT * FROM `ROLE`;

INSERT INTO `teacherstoolbox`.`PERMISSAO`(`permissaoNome`) VALUES
(''),
(''),
(''),
('');
SELECT * FROM `PERMISSAO`;

INSERT INTO `teacherstoolbox`.`COMPETENCIA`(`competenciaNome`) VALUES
(''),
(''),
(''),
('');
SELECT * FROM `COMPETENCIA`;

INSERT INTO `teacherstoolbox`.`HABILIDADE`(`habilidadeNome`) VALUES
(''),
(''),
(''),
('');
SELECT * FROM `HABILIDADE`;

INSERT INTO `teacherstoolbox`.`MATERIAL`(`materialTitulo`, `materialDescricao`, `dataPostagem`, `competenciaID`, `habilidadeID`, `materialTipo`) VALUES
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', '');

SELECT * FROM `MATERIAL`;

INSERT INTO `teacherstoolbox`.`USUARIO`(`nome`, `ultimoNome`) VALUES
('', ''),
('', ''),
('', ''),
('', ''),
('', '');
SELECT * FROM `USUARIO`;

INSERT INTO `teacherstoolbox`.`CADASTRO`(`dataNascimento`, `CPF`, `email`, `telefone`, `usuarioID`) VALUES
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', '');

SELECT * FROM `CADASTRO`;

INSERT INTO `teacherstoolbox`.`ENDERECO`(`logradouro`, `numero`, `bairro`, `CEP`, `cidade`, `estado`) VALUES
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', '');

SELECT * FROM `ENDERECO`;

INSERT INTO `teacherstoolbox`.`TELEFONE`(`numero`, `tipo_contato`) VALUES
('', ''),
('', ''),
('', ''),
('', ''),
('', '');
SELECT * FROM `TELEFONE`;

INSERT INTO `teacherstoolbox`.`ASSINATURA`(`usuarioID`, `tipoAssinaturaID`) VALUES
('', ''),
('', ''),
('', ''),
('', ''),
('', '');
SELECT * FROM `ASSINATURA`;

DROP TABLE teachersToolbox;