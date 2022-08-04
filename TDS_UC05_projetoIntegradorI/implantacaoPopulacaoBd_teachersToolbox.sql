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
('aluno', 'Usuários com login e senha para acesso aos exercícios e materiais complementares.'),
('professor-usuário', 'Usuários com login e senha para acesso à plataforma a fim de utilizar os recursos disponibilizados. Esse tipo de usuário também poderá enviar os seus próprios planos de aula para serem avaliados, adaptados e postados no site.'),
('professor-colaborador', 'Professores de inglês que serão responsáveis pela elaboração de novos planos de aula e a avaliação e adaptação daqueles recebidos pelos professores-usuários.'),
('administrador', 'O Usuário administrador tem acesso total ao sistema. Ele será responsável pela criação de novos usuários, pela atribuição da avaliação de planos fornecidos por professores não colaboradores a professores colaboradores.');
SELECT * FROM `ROLE`;

INSERT INTO `teacherstoolbox`.`PERMISSAO`(`permissaoNome`) VALUES
('acessar exercício'),
('acessar plano de aula'),
('apresentar plano de aula'),
('cadastrar aluno'),
('cadastrar turma'),
('designar exercício a aluno'),
('designar exercício a turma'),
('enviar plano de aula'),
('avaliar plano de aula');
SELECT * FROM `PERMISSAO`;

INSERT INTO `teacherstoolbox`.`COMPETENCIA`(`competenciaDescricao`) VALUES
('Identificar o lugar de si e o do outro em um mundo plurilíngue e multicultural, refletindo, criticamente, sobre como a aprendizagem da língua inglesa contribui para a inserção dos sujeitos no mundo globalizado, inclusive no que concerne ao mundo do trabalho.'),
('Comunicar-se na língua inglesa, por meio do uso variado de linguagens em mídias impressas ou digitais, reconhecendo-a como ferramenta de acesso ao conhecimento, de ampliação das perspectivas e de possibilidades para a compreensão dos valores e interesses de outras culturas e para o exercício do protagonismo social.'),
('Identificar similaridades e diferenças entre a língua inglesa e a língua materna/outras línguas, articulando-as a aspectos sociais, culturais e identitários, em uma relação intrínseca entre língua, cultura e identidade.'),
('Elaborar repertórios linguístico-discursivos da língua inglesa, usados em diferentes países e por grupos sociais distintos dentro de um mesmo país, de modo a reconhecer a diversidade linguística como direito e valorizar os usos heterogêneos, híbridos e multimodais emergentes nas sociedades contemporâneas.'),
('Utilizar novas tecnologias, com novas linguagens e modos de interação, para pesquisar, selecionar, compartilhar, posicionar-se e produzir sentidos em práticas de letramento na língua inglesa, de forma ética, crítica e responsável.'),
('Conhecer diferentes patrimônios culturais, materiais e imateriais, difundidos na língua inglesa, com vistas ao exercício da fruição e da ampliação de perspectivas no contato com diferentes manifestações artístico-culturais.');
SELECT * FROM `COMPETENCIA`;

INSERT INTO `teacherstoolbox`.`HABILIDADE`(`habilidadeCodigo`, `habilidadeDescricao`) VALUES
('EF06LI01', 'Interagir em situações de intercâmbio oral, demonstrando iniciativa para utilizar a língua inglesa.'),
('EF06LI02', 'Coletar informações do grupo, perguntando e respondendo sobre a família, os amigos, a escola e a comunidade.'),
('EF06LI03', 'Solicitar esclarecimentos em língua inglesa sobre o que não entendeu e o significado de palavras ou expressões desconhecidas.'),
('EF06LI04', 'Reconhecer, com o apoio de palavras cognatas e pistas do contexto discursivo, o assunto e as informações principais em textos orais sobre temas familiares.'),
('EF06LI05', 'Aplicar os conhecimentos da língua inglesa para falar de si e de outras pessoas, explicitando informações pessoais e características relacionadas a gostos, preferências e rotinas.'),
('EF06LI06', 'Planejar apresentação sobre a família, a comunidade e a escola, compartilhando-a oralmente com o grupo.');
SELECT * FROM `HABILIDADE`;

INSERT INTO `teacherstoolbox`.`MATERIAL`(`materialTitulo`, `materialDescricao`, `competenciaID`, `habilidadeID`, `materialTipoID`) VALUES
('Fotos de família', 'Neste exercício você desenvolverá a produção oral a partir da descrição de pessoas da sua família presentes em fotos da sua escolha.', '2', '6', '2'),
('Classroom language', 'Neste plano de aula você trabalhará com os alunos classroom language de maneira ativa, a partir de atividades de drilling, jogos para fixação e dinamismo da aula.', '1', '3', '1'),
('False Friends', 'Neste plano de aula os estudantes terão oportunidade de desenvolver o conceito de falso cognato, identificar algumas palavras que se encaixam nele e desenvolver estratégias para entender as principais informações sendo transmitidas a partir do contexto ao redor do vocabuário apresentado.', '3', '4', '1');

SELECT * FROM `MATERIAL`;

INSERT INTO `teacherstoolbox`.`USUARIO`(`nome`, `ultimoNome`) VALUES
('Victoria', 'Trois'),
('Bruna', 'Passos'),
('Ana', 'Hoy');
SELECT * FROM `USUARIO`;

INSERT INTO `teacherstoolbox`.`CADASTRO`(`data_nascimento`, `CPF`, `email`, `usuarioID`) VALUES
('1992-10-06', '93296692326', 'victoriatgc@outlook.com', '1'),
('1985-08-12', '77485412557', 'brunap1@gmail.com', '2'),
('1999-09-03', '78452147833', 'anahoje@hotmail.com', '3');
SELECT * FROM `CADASTRO`;

INSERT INTO `teacherstoolbox`.`ENDERECO`(`logradouro`, `numero`, `complemento`, `bairro`, `cidade`, `estado`) VALUES
('Avenida São Pedro', '1345', 'apartamento 13', 'São Geraldo', 'Porto ALegre', 'RS'),
('Rua Miguel Tostes', '234', 'apartamento 45', 'Rio Branco', 'Porto Alegre', 'RS'),
('Rua Carlos Trein Filho', '3422', 'apartamento 33', 'Bela Vista', 'Porto Alegre', 'RS');
SELECT * FROM `ENDERECO`;

INSERT INTO `teacherstoolbox`.`TELEFONE`(`numero`, `tipo_contato`) VALUES
('5551999128356', 'celular'),
('5551986874256', 'celular'),
('5551987546332', 'celular');
SELECT * FROM `TELEFONE`;

INSERT INTO `teacherstoolbox`.`ASSINATURA`(`usuarioID`, `tipoAssinaturaID`) VALUES
('1', '1'),
('2', '1'),
('3', '2');
SELECT * FROM `ASSINATURA`;

DROP TABLE teachersToolbox;